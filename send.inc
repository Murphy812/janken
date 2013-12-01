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
     $barr = array_from_query("select btl_id from battles b where b.uke_id=$rcv_id and b.nage_id=$av_id and b.end_date is null");
     if(isset($barr[0]))
       echo "с этим противником ведется бой №".$barr[0][0].", продолжаем";
     else {
       //проверяем количество нападений на этого наге
       //if(1<array_from_query("select count(*) as c1 from battles b where b.uke_id=$rcv_id and b.nage_id=$av_id")[0][0])
       if(1<val_from_query("select count(*) as c1 from battles b where b.uke_id=$rcv_id and b.nage_id=$av_id"))
         echo "Противник отказывается принять бой";
       else {
         echo "с этим противником нет актуального боя, надо начать бой№".val_from_query("select ifnull(max(btl_id)+1, 1) from battles");
         //считаем взвешенные хиты для участников, создаем такой бой
         $avh1 = count(get_items_list($av_id, $av_id));
         $avh2 = count(get_items_list($av_id, $rcv_id));
         $hits = norm_hits($avh1, $avh2);
         echo "<BR/>Ваши хиты: ".$hits[0].", хиты противника: ".$hits[1];
       }

     }



     
   }

 }//send

 function norm_hits($av1_hits, $av2_hits) {

/*  
   0 1   1 2
   1 2   1 2
   1 4   1 4
   2 7   1 4
   3 7   1 2
   3 8   1 2
*/   
   
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
  
?>