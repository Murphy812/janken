<?php 

function show_avatars_list($av_id) {
  ?> 
 <SELECT NAME="who">
  <?php 
    foreach(get_avatars_list($av_id) as $farr) {
  ?>
    <option value="<?php echo $farr["av_id"]; ?>"><?php echo $farr["av_name"].", ".$farr["strength"]." ".wins_cases($farr["strength"]);?></option>
  <?php 
    }
  ?>
 </SELECT>
 <?php 
 }

//вывод данных по пользователю
function show_avatar_desc($av_id) {
   
  if($arr = get_avatar_desc($av_id)[0]) {
    echo "<div style=\"font-size: 200%; color: red\">".$arr['av_name'].", ".$arr["strength"]." ".wins_cases($arr["strength"]).", ".$arr["sign_alter_name"]."<br/>";
    echo "<IMG SRC=\"img/sakura_$av_id.jpg\" width=\"250\" height=\"500\">";
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
}//show_avatar_desc

function show_signs_list() {
 ?> 
 <SELECT NAME="sign">
   <option value="-1">не атаковать его</option>
  <?php 
    foreach(get_signs_list() as $key=>$val) {
  ?>
    <option value="<?php echo $key; ?>">атаковать его стихией <?php echo $val;?></option>
  <?php 
    }
  ?>
 </SELECT>
 <?php 
}//show_signs_list


function show_items_list($oper_av_id, $owner_av_id) {
  foreach(get_items_list($oper_av_id, $owner_av_id) as $farr) {
  ?>
    <BR/><INPUT NAME="items[]" TYPE="checkbox" value="<?php echo $farr["it_id"]; ?>"><i><?php echo $farr["it_name"].(isset($farr["special_feature"])&&$farr["special_feature"]!=""?" со спец.свойством".$farr["special_feature"]:"...");?></i></INPUT>

  <?php 
  }
}//show_items_list


function show_messages_list($oper_av_id) {
  foreach(get_messages_list($oper_av_id) as $farr) {
  ?>
    <div style="color: <?php echo ($farr["frm"]=='me')?"green": "red"; ?>"><?php echo $farr["opdate"]; ?> - <?php echo $farr["av_name"]; ?>: <?php echo $farr["msg_text"];?></div>

  <?php 
  }
}

function page_start($version) {
  if(!headers_sent()) push_headers();
  echo '<head><link rel="stylesheet" type="text/css" href="main.css"><title>Janken</title><!--version>'.$version.'</version--></head><body class="margin_auto">';
}

function page_end() {
  echo '</body>';
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

 function wins_cases ($num) {
   $num = $num % 100;
   if ($num > 4 && $num <21)
     return "побед";

   $num = $num % 10;
   if ($num==1)
     return "победа";
   if ($num==0 || $num > 4)
     return "побед";
   else
     return "победы";

 }
  
?>
