<?php 

function show_avatars_list($av_id, $selected_id, $name="who") {
  ?> 
 <SELECT NAME="<?php echo $name; ?>">
  <?php 
    foreach(get_avatars_list($av_id) as $farr) {
  ?>
    <option value="<?php echo $farr["av_id"]; ?>" <?php if($farr["av_id"]==$selected_id) echo "SELECTED"?>>
      <?php echo $farr["av_name"].", ".$farr["wins"]." ".wins_cases($farr["wins"]); ?>
    </option>
  <?php 
    }
  ?>
 </SELECT>
 <?php 
 }

function show_avatars_list4login() {
  ?> 
 <SELECT NAME="av_login">
  <?php 
    foreach(get_avatars_list(-1000) as $farr) {
  ?>
    <option value="<?php echo $farr["av_login"]; ?>">
      <?php echo $farr["av_login"]; ?>
    </option>
  <?php 
    }
  ?>
 </SELECT>
 <?php 
 }

//вывод данных по пользователю
function show_avatar_desc($av_id, $self = true) {
  $res = get_avatar_desc($av_id);

  if(isset($res[0]) && $arr = $res[0]) {
    if ($self) {
    ?>
    <div style="font-size: 150%; color: green">Я -
    <?php
    }
    else{
    ?>
    <div style="font-size: 100%; color: red">Противник - 
    <?php
    }
    ?>
      <?php echo $arr['av_name'];?> , <?php echo $arr["wins"]." ".wins_cases($arr["wins"]);?> <BR/>
      <?php echo $arr["sign_alter_name"];?>, <?php echo $arr["sign_name"];?> <BR/>
      <?php echo $arr["description"];?><BR/>
      <A HREF="img/sakura_<?php echo $av_id;?>.jpg"><IMG SRC="img/sakura_<?php echo $av_id;?>.jpg" width="125" height="250"></A>
    <?php
    echo "<BR/>Бонусные предметы: ".enlist_items($av_id, $av_id);
    if ($self) {
      show_joker_form($av_id, $arr["sign_id"]);

    ?>
      <FORM class="logout" ACTION="<?php echo current_page(); ?>" METHOD="POST">
         <input type="hidden" name="action" value="logout">
         <input value="Exit" type="submit" class="blue">
      </FORM>
    <!--FORM class="change_pin" ACTION="<?php echo current_page(); ?>" METHOD="POST">
     <input type="hidden" name="form" value="change_pin">
     <input value="Change password" type="submit">
    </FORM-->
    <?php
    } else {
    }
    ?>
    </div>
    <?php    
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


function enlist_items($oper_av_id, $owner_av_id) {
  $res = "";
  foreach(get_items_list($oper_av_id, $owner_av_id) as $farr) {
    $res.=" | '".$farr["it_name"]."'";
  }
  return substr($res, 3);
}//show_items_list



function show_messages_list($oper_av_id) {
  foreach(get_messages_list($oper_av_id) as $farr) {
  ?>
    <div style="color: <?php echo ($farr["frm"]=='me')?"green": "red"; ?>"><?php echo $farr["opdate"]." ".$farr["av_name"]." ".($farr["frm"]=='me'?"услышал от нас": "сказал нам").": ".$farr["msg_text"];?></div>
  <?php 
  }
}

function show_jokes_list() {
  echo "<UL>";
  foreach(get_jokes_list() as $farr) {
  ?>
    <LI style="color: blue"><?php echo $farr["opdate"]." ".$farr["av_name"]." рассказал всем: ".$farr["msg_text"];?></LI>
  <?php 
  }
  echo "</UL>";
}


function show_joker_form($av_id, $av_sign_id) {
  if($av_sign_id!=4)
    return;
  form_start("joke_comment", $av_id);
  show_textarea();
  form_end("Рассказать всем");
}


function show_checkbox($name) {
?>  
  <INPUT NAME="<?php echo $name;?>" TYPE="checkbox" value="1">
<?php
}

function page_start($version) {
  if(!headers_sent()) push_headers();
  echo '<head><link rel="stylesheet" type="text/css" href="main.css"><title>Janken</title><!--version>$version</version--></head><body class="margin_auto">';
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

 function form_end($buttonname) {
   ?>

    <br/><INPUT TYPE="SUBMIT" VALUE="<?php echo $buttonname; ?>" class="green">
  </FORM>
   <?php
 }

 function show_textarea($label) {
   ?>
    <TEXTAREA id="bigtext" COLS="20" ROWS="4" placeholder="<?php echo $label;?>"></TEXTAREA>
   <?php
 }


 function cases ($num) {
   $num = $num % 100;
   if ($num > 4 && $num <21)
     return 5;

   $num = $num % 10;
   if ($num==1)
     return 1;
   if ($num==0 || $num > 4)
     return 5;
   else
     return 3;
 }


 function wins_cases ($num) {
   $wins_cases = array(1=>"победа", 3=>"победы", 5=>"побед");
   return $wins_cases[cases($num)];
 }

 function hits_cases ($num) {
   $hits_cases = array(1=>"удар", 3=>"удара", 5=>"ударов");
   return $hits_cases[cases($num)];
 }


function make_new_item($item_name) {
  $n_id = val_from_query("select ifnull(max(it_id)+1, 1) from items");
  make_query("insert into items (it_id, it_name) values ($n_id, '$item_name')");
  return $n_id;
}


function give_item($n_item_id, $av_id) {
  make_query("insert into item_avatar_history values ($n_item_id,$av_id, now(), null, $av_id, now())");
}
 
  
?>
