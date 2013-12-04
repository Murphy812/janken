<?php 

 //функция отправки предметов и сообщений
 //сообщение нужно вставить в табличку
 //у предмета нужно поменять привязку
 function send($av_id, $rcv_id, $items, $msg, $sign) {
   //просто создаем новое сообщение
   if (isset($msg)&&$msg!="")
     $res = make_query("INSERT INTO messages (msg_text, opdate, my_av_id, his_av_id) VALUES ('$msg', now(), $av_id, $rcv_id)");

   //для каждого передаваемого предмета - убиваем старую связь, создаем новую
   foreach($items as $item) {
     $res = make_query("update item_avatar_history set end_date=now(), op_av_id=$av_id, op_date=now() where it_it_id=$item and av_av_id=$av_id");
     $res = make_query("insert into item_avatar_history (it_it_id, av_av_id, start_date, op_av_id, op_date) values ($item, $rcv_id, now(), $av_id, now())");
   }

   //для переданного знака нужно сделать много всего, если это не -1, который "не драться"
   if (isset($sign)&&$sign!=-1) {
     //выбираем идентификатор незаконченного боя. выбираем без курсора - не ожидаем несколько незаконченных сразу
     $barr = array_from_query("select btl_id, uke_health, nage_health from battles b where b.uke_id=$av_id and b.nage_id=$rcv_id and b.end_date is null");
     if(isset($barr[0])) {
       $btl_id=$barr[0][0];
       $uke_health = $barr[0][1];
       $nage_health = $barr[0][2];
       echo "С этим противником ведется бой №$btl_id, продолжаем";
     }
     else {//проверяем, можно ли создавать бой, и если да, то да
       //проверяем количество нападений на этого наге. Если больше одного боя, то нет!
       if(1<val_from_query("select count(*) as c1 from battles b where b.uke_id=$rcv_id and b.nage_id=$av_id"))
         echo "Противник отказывается принять бой";
       else {
         $btl_id = val_from_query("select ifnull(max(btl_id)+1, 1) from battles");
         echo "с этим противником нет актуального боя, надо начать бой№$btl_id";
         //считаем взвешенные хиты для участников, создаем такой бой
         $hits = norm_hits(count(get_items_list($av_id, $av_id)), count(get_items_list($av_id, $rcv_id)));
         $uke_health = $hits[0];
         $nage_health = $hits[1];
         //echo "<BR/>Ваши хиты: ".$hits[0]." ".wins_cases($hits[0]).", хиты противника: ".$hits[1]." ".wins_cases($hits[1]);
         $res = make_query("INSERT INTO battles (btl_id, uke_id, nage_id, uke_health, nage_health, winner_id, start_date, end_date) "
                           ." VALUES ($btl_id, $av_id, $rcv_id, $uke_health, $nage_health, null, now(), null)");

       }

     }
     //тут бой уже точно есть - или нашли, или создали. Надо генерить знак противника, считать результат и тд.
     $nage_sign = get_nage_sign($btl_id);
     $sign_lib = get_signs_list();
     $msg1 = $sign_lib[$sign];
     //тут надо вычислить, кто кого победил
     $strike_res = get_strike_result($sign, $nage_sign);
     switch ($strike_res) {
       case 1:
         $msg1.= " сильнее, чем ";
         $msg2 = get_win_msg();
         $nage_health-=1;
         break;
       case -1:
         $msg1.= " слабее, чем  ";
         $msg2 = get_loose_msg();
         $uke_health-=1;
         break;
       case 0:
         $msg1.= " и ";
         $msg2 = get_draw_msg();
         $uke_health-=1;
         $nage_health-=1;
         break;
       default:
         $msg2 = "Не знаю, как вы оказались в этой ветке. Обратитесь в поддержку";
         break;
     }
     $msg1.=$sign_lib[$nage_sign]." противника";


     //если хиты у кого-то кончились, то надо в обновлении боя вписать победителя и закрыть дату
     $winner = null;
     if($uke_health==0) {
        //то бой закончился. И если второй не 0, то он победил
     }

     $res = make_query("UPDATE battles set uke_health=$uke_health, nage_health=$nage_health"
                           ."where btl_id=$btl_id");


     echo "<BR/>$msg1. $msg2<BR/>";

     //в зависимости от этого у нас происходит потеря хитов. это фиксируется:
     //- в battles - уменьшаем остаток хитов
     //- в actions - записываем атаку и результат

   }//знака нет

 }//send


 function norm_hits($av1_hits, $av2_hits) {

   $swap = false;

   if ($av1_hits == $av2_hits)
       $heavy = 1;
   else {

     if ($av1_hits < $av2_hits) {
       $min = $av1_hits;
       $max = $av2_hits;
     }
     else  {
       $min = $av2_hits;
       $max = $av1_hits;
       $swap = true;
     }

     if ($min == 0)
       $heavy = $max+1;
     else
       $heavy = round($max/$min);
   }

   if (!$swap)//то есть первое значение и было меньше
     return array(1, $heavy);
   else
     return (array($heavy, 1));
 }
  
 function get_nage_sign($btl_id) {
   return rand(1, 1000) % 5 +1;//пока так, а потом если что добавим подлой логики
 }


 function get_strike_result($uke_sign, $nage_sign) {
   //1 огонь 2 металл 3 дерево 4 земля 5 вода

   $arr = array();
   $arr[1][1] =  0; $arr[1][2] =  1; $arr[1][3] =  1; $arr[1][4] = -1; $arr[1][5] = -1;
   $arr[2][1] = -1; $arr[2][2] =  0; $arr[2][3] =  1; $arr[2][4] =  1; $arr[2][5] = -1;
   $arr[3][1] = -1; $arr[3][2] = -1; $arr[3][3] =  0; $arr[3][4] =  1; $arr[3][5] =  1;
   $arr[4][1] =  1; $arr[4][2] = -1; $arr[4][3] = -1; $arr[4][4] =  0; $arr[4][5] =  1;
   $arr[5][1] =  1; $arr[5][2] =  1; $arr[5][3] = -1; $arr[5][4] = -1; $arr[5][5] =  0;

   return $arr[$uke_sign][$nage_sign];
 }

 function get_win_msg() {
   $arr[1]= "Вы торжествуете, враг страдает от болезненной раны";
   $arr[2]= "Отличный удар, враг кривится от боли";

   return $arr[rand(1, count($arr))];
 }

 function get_loose_msg() {
   $arr[1]= "Вы пропустили удар, враг победно смеется";
   $arr[2]= "Враг перехитрил вас, от резкой боли выступают слезы";

   return $arr[rand(1, count($arr))];
 }

 function get_draw_msg() {
   $arr[1]= "Вы оба увлеклись атакой и оба ранены";
   $arr[2]= "Нападение, только нападение! Вы оба ранены";

   return $arr[rand(1, count($arr))];
 }


?>