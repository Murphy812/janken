<?php 

function show_avatars_list($av_id) {
 
 //вначале вызываем функцию, которая достанет эти данные из базы.
 $arr = get_avatars_list($av_id);

  //в перспективе мы, возможно, будем дополнительно выбирать потайных врагов
  //из той же таблицы, но другой категории. И выводить в отдельном комбобоксе
 
 //потом отображаем данные
 ?> 
 <SELECT NAME="who">
  <?php 
    foreach($arr as $farr) {
  ?>
    <option value="<?php echo $farr["av_id"]; ?>"><?php echo $farr["av_name"]." str: ".$farr["strength"];?></option>
  <?php 
    }
  ?>
 </SELECT>
 <?php 
 }

 //вывод данных по пользователю - показывается всегда
 function show_avatar_desc($av_id) {
   global $version;
   if(!headers_sent()) push_headers();
   echo '<head><link rel="stylesheet" type="text/css" href="main.css"><title>Janken</title><!--version>'.$version.'</version--></head><body class="margin_auto">';
   
   if($arr = get_avatar_desc($av_id)[0]) {
   
   echo "<div style=\"font-size: 200%; color: red\">".$arr['av_name'].", Str: ".$arr["strength"].", ".$arr["sign_alter_name"]."<br/>\n";
   echo "<IMG SRC=\"img/sakura_$av_id.jpg\" width=\"250\" height=\"500\">\n";
   ?>
     <FORM class="logout" ACTION="<?php echo current_page(); ?>" METHOD="POST">
    <input type="hidden" name="action" value="logout">
    <input value="Exit" type="submit">
     </FORM>
     <FORM class="change_pin" ACTION="<?php echo current_page(); ?>" METHOD="POST">
     <input type="hidden" name="form" value="change_pin">
     <input value="Change password" type="submit">
     </FORM>
  <?php    
    echo "</div>";
  }
 }//show_avatar


function show_items_list($oper_av_id, $owner_av_id) {
 
 //вначале вызываем функцию, которая достанет эти данные из базы.
 $arr = get_items_list($oper_av_id, $owner_av_id);

 
    foreach($arr as $farr) {
  ?>
    <BR/><INPUT NAME="items[]" TYPE="checkbox" value="<?php echo $farr["it_id"]; ?>"><?php echo $farr["it_name"].(isset($farr["special_feature"])&&$farr["special_feature"]!=""?" со спец.свойством".$farr["special_feature"]:"...");?></INPUT>

  <?php 
    }
  ?>
 </SELECT>
 <?php 
 }

 function form_start($formname, $av_id) {
   ?>
  <FORM METHOD="POST">
    <INPUT TYPE="HIDDEN" NAME="action" VALUE="<?php echo $formname;?>">
   <?php
 }

 function form_end($formname) {
   ?>

    <br/><INPUT TYPE="SUBMIT" VALUE="<?php echo $formname; ?>">
  </FORM>
   <?php
 }

 function show_textarea() {
   ?>
    <TEXTAREA NAME="bigtext" COLS="20" ROWS="5"></TEXTAREA NAME="bigtext">
   <?php
 }


function show_messages_list($oper_av_id) {
 
 //вначале вызываем функцию, которая достанет эти данные из базы.
 $arr = get_messages_list($oper_av_id);

    foreach($arr as $farr) {
  ?>
    <div style="color: <?php echo ($farr["frm"]=='me')?"green": "red"; ?>"><?php echo $farr["opdate"]; ?> - <?php echo $farr["av_name"]; ?>: <?php echo $farr["msg_text"];?></div>

  <?php 
    }
  ?>
 </SELECT>
 <?php 
 }

  
?>
