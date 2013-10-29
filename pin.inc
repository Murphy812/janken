<?php 

function form_change_pin($av_id) {
 
 ?> 
 <DIV class="tegs-editor"> 
  <!--DIV class="tegs-editor-header">Меняем</DIV-->
  <FORM NAME="changepin" ACTION="<?php echo current_page(); ?>" METHOD="POST">
     Старый PIN:
     <INPUT NAME="oldpin" ID="oldpin" TYPE="PASSWORD" VALUE="" SIZE=4 MAXLENGTH=4>
	 
     Новый PIN:
     <INPUT NAME="newpin" ID="newpin" TYPE="PASSWORD" VALUE="" SIZE=4 MAXLENGTH=4>
     <INPUT TYPE="hidden" name="action" VALUE="change_pin">
     <INPUT TYPE="SUBMIT" VALUE="Подтвердить"><BR/>
   </FORM>
   <!--/DIV--> 
  <?php 
//die;
  ?>
 </DIV>
 <?php
 
 }//form_change_pin
 //функция смены пина
 function change_pin($av_id,$oldpin,$newpin) {
   if ($newpin != '') 
   {
     $query = "
	select av_id, password_hash as pin
	from avatars
	where 1=1
	  and av_id = '$av_id'
	";
     //say("$query<BR/>", 1);
     $res = make_query($query);
     $array = mysql_fetch_assoc($res) ;
	 //
	 //echo $array["pin"];
     if ($oldpin != $array["pin"])
	 {
       // не нашли старый пин
	   echo "Неверный PIN!";
     }
     else{
       // нашли старый пин --> upd
       $query2 = " 
	   update avatars
	   set 
	      password_hash  ='$newpin'
	   where 1=1
         and av_id = '$av_id' "; 
       //say("$query<BR/>", 1);
      $res2 = make_query($query2);
	  echo "PIN Изменен";
      }
     
   }
   else echo "Не заполнено поле Новый PIN!";
   
   //  header("Location: ".current_page()."?form=change_pin"); 
 }//change_pin
  //форма "Смена PIN" 
  
?>