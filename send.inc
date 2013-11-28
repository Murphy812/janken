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

   //для переданного знака нужно сделать много всего, если это не -1
   if (isset($sign)&&$sign!=-1) {
     //выбираем идентификатор незаконченного боя. выбираем без курсора - не ожидаем несколько незаконченных сразу
     $barr = array_from_query("select btl_id from battles b where b.uke_id=$rcv_id and b.nage_id=$av_id and b.end_date is null");
     if(isset($barr[0]))
       echo "с этим противником ведется бой №".$barr[0][0].", продолжаем";
     else {
       //проверяем количество нападений на этого наге
       if(1<array_from_query("select count(*) as c1 from battles b where b.uke_id=$rcv_id and b.nage_id=$av_id")[0][0])
         echo "Противник отказывается принять бой";
       else {
         echo "с этим противником нет актуального боя, надо начать";
         //получаем max(btl_id), считаем взвешенные хиты для участников, создаем такой бой
       }

     }



     
   }

 }//send
  
?>