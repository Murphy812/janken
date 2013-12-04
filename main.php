<?php
 
 $dev = "";//"_mur";
 
 /*
  20131004.1 - вход и выход, смена пароля
           
 */
 
 include_once("db.inc");		// реализация работы с базой
 include_once("logging.inc");		// логирование
 include_once("utils.inc");			// всевкусные функции

 include_once("layer_db.inc");
 include_once("layer_wrap.inc");
 
 include_once("pin.inc");			// смена PIN
 include_once("send.inc");
 include_once("battle.inc");		// битва
 

 function main() {   
 $version = "2013104.1";
 
 $varr = log_call(); 
    
 $av_id = get_master_av();

   //если задано действие - вначале выполняем его
   $paction = isset($_POST["action"])?$_POST["action"]:"";
   switch ($paction) {   
     case "logout":
       logout();
       break;
     case "change_pin":
       change_pin($av_id,$_POST["oldpin"],$_POST["newpin"]);
       break;	   
     case "send":
       $who = (isset($_POST["who"])?$_POST["who"]:"nobody");
       $items = (isset($_POST["items"])?$_POST["items"]:array());
       $msg = (isset($_POST["bigtext"])?$_POST["bigtext"]:"");
       $sign = (isset($_POST["sign"])?$_POST["sign"]:-1);
       send($av_id,$who,$items,$msg, $sign);
       break;    
   }  

   //если задано подтверждение - запрашиваем его
   $pconfirm = isset($_POST["confirm"])?$_POST["confirm"]:"";
   switch ($pconfirm) {   
     case "fire":
	   confirm_fire($_POST["clnt_id"], $_POST["fiav_id"]);
       break;
   }
      
   //пытаемся вывести заданную форму
   $pform = isset($_POST["form"])?$_POST["form"]:"";
   switch ($pform) {
     case "change_pin"://выводим форму смены PIN
       form_change_pin($av_id);
       break; 
   }   


   page_start($version);

   //всегда безусловно(?может быть, краткая и полная форма?) выводим данные оператора
   show_avatar_desc($av_id);

   echo "Сообщения:<br/>";
   show_messages_list($av_id);


   //тут нужен заголовок формы отправки. стандартные поля про оператора. Потом список предметов, которые можно чекнуть, и поле для ввода сообщения
   form_start("send", $av_id);
     echo "Выберите благородного соученика ";
     show_avatars_list($av_id);

     echo " чтобы<br/>";
     show_signs_list();
  
     echo "<br/><br/>и вручить ему дар:<br/>";
     show_items_list($av_id, $av_id);

     echo "<br/><br/>а также отправить послание:<br/>";
     show_textarea();

   //окончание формы отправки
   form_end("send");

   print_r($_GET);
   print_r($_POST);

   //еще нужно показывать ленту статусов - пока нет такой функции. И даже поля такого нет. Для каждого аватара - статус. И нужно выводить непустые статусы.
   //да не надо ленту статусов. Просто изменения статусов расходятся каждому в личку. А они меняются у шутов и шутами.
   
   
   page_end();
   to_main_page(0);
 } 

 main();
?>
