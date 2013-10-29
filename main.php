<?php
 $link;
 $spath;
 $version = "2013104.1";
 
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
 include_once("battle.inc");		// битва
 

 function main() {   
 
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
   }  

   //если задано подтверждение - запрашиваем его
   $pconfirm = isset($_POST["confirm"])?$_POST["confirm"]:"";
   switch ($pconfirm) {   
     case "fire":
	   confirm_fire($_POST["clnt_id"], $_POST["fiav_id"]);
       break;
   }
      
   $pform = isset($_POST["form"])?$_POST["form"]:"";
   switch ($pform) {
     case "top_rating"://выводим топ рейтинга
       top_rating(10);
       break;	
     case "change_pin"://выводим форму смены PIN
       form_change_pin($av_id);
       break; 
   }   

   //всегда безусловно(?может быть, краткая и полная форма?) выводим данные оператора
   show_avatar_desc($av_id);
   show_items_list($av_id, $av_id);


   //форма выбора собеседника. Тут же кнопки:
   //- Отправить сообщение/предмет (история обмена с формой выбора предмета/ввода сообщения->после отправки снова история
   //- Начать бой
   show_avatars_list($av_id);
   
   
   ?>

   <BR/>
    <DIV class="block">
   <?php

/*   
   $gform = isset($_GET["form"])?$_GET["form"]:"";
    if($gform!="change_pin") {
   ?>
   <FORM ACTION="<?php echo current_page(); ?>" METHOD="GET">
	 <input type="hidden" name="form" value="change_pin">
	 <input value="Сменить PIN" type="submit">
   </FORM>   
   <?php
     }
*/	 

   echo "</DIV>";
   
   to_main_page(0);
 } 

 main();
?>
