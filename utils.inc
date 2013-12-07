<?php

 $spath;

 function push_headers() {
   header("Cache-Control: no-cache, must-revalidate"); // HTTP/1.1
   header("Expires: Sat, 26 Jul 1997 05:00:00 GMT"); // Date in the past
   header("Content-Type: text/html; charset=utf-8");
 }

 //с этого все начинается - пытаемся достать из сессии ид абонента-оператора
 function get_master_av(){
   if (isset($_COOKIE["av_id"]) && isset($_COOKIE["av_key"]) && $_COOKIE["av_key"]==sha1("iam".$_COOKIE["av_id"])) {
     $av_id = intval($_COOKIE["av_id"]);
	 return $av_id;
   }
   else {
     start_av_session();
	 return -123456;
   }
 }

 //с помощью этой функции мы перезагружаем страницу
 function current_page() {
/*
   global $spath;
   if (!isset($spath)) {
    $path = $_SERVER['PHP_SELF'];
    $spath = substr($path, 1+strrpos ($path, '/'));
   }
   return $spath;
*/   
   $path = $_SERVER['PHP_SELF'];
   return substr($path, 1+strrpos ($path, '/'));

 }  

 
 function to_main_page() {
   if(!headers_sent())
     push_headers();
   print "<BR/>Достойный муж ведет себя достойно. <A HREF='".current_page()."'>Вернуться к истокам</A><BR/></BODY>";
 }

 //безопасный вывод сообщений с возможной смертью в конце
 function say($msg, $die = 0) {
   if(!headers_sent())
     push_headers();
   print "$msg";
   if ($die==1) {
     to_main_page();
     die;
   }
 }

 function fn_get_default_value($name) {
   $query = "
	select value
	from defaults
	where 1=1
	  and name = '$name'
	";
     //say("$query<BR/>", 1);
     $res = make_query($query);
	 $array = mysql_fetch_assoc($res) ;
	 return $array["value"];
	 
}
 
/*  
 //а это обертка для печати результатов запроса
 function print_res($result) {
   while ($array = mysql_fetch_array($result)) {
     echo print_r($array, true)."<BR/>\n";  
   }
 }
*/

 // Отличнейшая функция для генерации заголовка формы.
 // Если выставить setRet = true, в форму будет передан аргумент retPage, на который, если все ок, форма может отредиректить после обработки себя
 //
 function render_form_start($action, $setRet = false){
    echo "<FORM ACTION=\"" . current_page() . "\" METHOD=\"POST\">";
    echo "<input type=\"hidden\" name=\"action\" value=\"" . $action . "\">";
    if ($setRet){
        echo "<input type=\"hidden\" name=\"retPage\" value=\"" . urlencode($_SERVER["REQUEST_URI"]) . "\">";
    }
 }

 function render_form_end(){
    echo "</FORM>";
 }

//если указанный абонент в базе отсутствует - падаем
 function find_av ($cav_login) {
   $res = make_query("SELECT a.av_id, a.av_login FROM avatars a WHERE  a.av_login='$cav_login'");
   if (!$res) {
    echo mysql_error();die();
   }
   if ($array = mysql_fetch_assoc($res))
     return array($array["av_id"], $array["av_login"]);
   else {
     say('Чужие здесь не ходят', 1);     
   }
 } //find_av
 
 //если пин не соответствует указанному - падаем
 function check_av_pin ($cav_id, $cav_pass) {
   if(!isset($cav_id)||!isset($cav_pass))
     say("bad params", 1);
   $res = make_query("SELECT a.password_hash FROM avatars a WHERE a.av_id=$cav_id");
   $array = mysql_fetch_assoc($res);
   if ($array["password_hash"] == $cav_pass)
     return 1;
   else
     sleep(rand(3,10));
     say('Пин указан некорректно', 1); 
     //say('Пин указан некорректно '.$cav_id.', '.$cav_pass.' '.$array["password_hash"], 1); 

 }

 
 //если в POST передали абонента, то засовываем его в сессию
 function start_av_session() {
   if(isset($_POST["av_login"])) {
     //залезаем в базу, ищем такой av_id. если не нашли - говорим ошибку
     list ($tav_id, $tav_name) = find_av($_POST["av_login"]);
	 
     //сверяем пин для найденного av_id
     check_av_pin ($tav_id, $_POST["av_pin"]);
	 
	 //если не выпали, то значит, данные абонента указаны верно. сохраняем в куку av_id
     setcookie("av_id", $tav_id, 0);
	 setcookie("av_key", sha1("iam".$tav_id), 0);
	 
	 //и загружаемся сюда же - current_page()
	 header("Location: ".current_page()); 
   }
   else
     //тут уж мы в отчаяньи и считаем, что можно только вывести форму для логина и умереть
     show_login_form();
 }	 
 
 //выводим форму логина
 function show_login_form() { 
   if(!headers_sent())
     push_headers();
//   print_r($_COOKIE);
	   ?>
<H3>Добро пожаловать в проект Дзянкэн!</H3>
<FORM ACTION="<?php echo current_page(); ?>" METHOD="POST">
   Выберите персонажа:<BR/>
   <?php show_avatars_list4login(); ?>
   <!--INPUT NAME="av_login" TYPE="TEXT" VALUE=""--><BR/>
   Введите пин:<BR/>
   <INPUT NAME="av_pin" TYPE="PASSWORD" VALUE="" SIZE=4><BR/>
   <INPUT TYPE="SUBMIT" VALUE="Войти" class="orange">
 </FORM>
      <?php
       die();
       print('Why alive?');
 }//show_login_form

 //выходим из системы (убиваем куку)
 function logout() {
   setcookie("av_id", false, 0);
   header("Location: ".current_page()); 
 }//logout
 
 
?>