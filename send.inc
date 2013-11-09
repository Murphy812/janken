<?php 

 //функция отправки предметов и сообщений
 //сообщение нужно вставить в табличку
 //у предмета нужно поменять привязку
 function send($av_id, $rcv_id, $items, $msg) {
   $query = "INSERT INTO messages (msg_text, opdate, my_av_id, his_av_id) VALUES ('$msg', now(), $av_id, $rcv_id)";
   //say("$query<BR/>", 1);
   $res = make_query($query);
   //$array = mysql_fetch_assoc($res);
	 //

   //для каждого передаваемого предмета - убиваем старую связь, создаем новую
   foreach($items as $item) {
     $query = "update item_avatar_history set end_date=now(), op_av_id=$av_id, op_date=now() where it_it_id=$item and av_av_id=$av_id";
     //say("$query<BR/>", 1);
     $res = make_query($query);

     $query = "insert into item_avatar_history (it_it_id, av_av_id, start_date, op_av_id, op_date) values ($item, $rcv_id, now(), $av_id, now())";
     //say("$query<BR/>", 1);
     $res = make_query($query);
   }

 }//send
  
?>