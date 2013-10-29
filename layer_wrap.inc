<?php 

function show_avatars_list($av_id) {
 
 //вначале вызываем функцию, которая достанет эти данные из базы.
 $arr = get_avatars_list($av_id);

  //в перспективе мы, возможно, будем дополнительно выбирать потайных врагов
  //из той же таблицы, но другой категории. И выводить в отдельном комбобоксе
 
 //потом отображаем данные
 ?> 
 <SELECT NAME="avatars_list"> 
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
   
   echo "<IMG SRC=\"img/sakura_$av_id.jpg\" width=\"250\" height=\"500\">\n";
   
   echo "<div>".$arr['av_name'].", Str: ".$arr["strength"].", ".$arr["sign_alter_name"]."\n";
   ?>
     <FORM class="logout" ACTION="<?php echo current_page(); ?>" METHOD="POST";
    <input type="hidden" name="action" value="logout">
    <input value="Exit" type="submit">
     </FORM>
     <FORM class="change_pin" ACTION="<?php echo current_page(); ?>" METHOD="GET">
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
    <INPUT NAME="items_list[]" TYPE="checkbox" value="<?php echo $farr["it_id"]; ?>"><?php echo $farr["it_name"]." feat: ".$farr["special_feature"];?></INPUT>
  <?php 
    }
  ?>
 </SELECT>
 <?php 
 }
 
  
?>