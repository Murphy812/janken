<?php
  $link;
  
  function make_link () {
     global $link;
     require 'config.inc';
		$link = mysql_connect($db_server, $db_user, $db_password);
     mysql_select_db('janken', $link);
     mysql_query("SET NAMES 'utf8'");
     return $link;
  }

 //это просто обертка для обращения к базе
 function make_query($query) {
    global $link;
    if (!isset($link)) {
        $link = make_link();
    }
    
    $result = mysql_query($query, $link);//$query
	
    return $result;
 }

 //архив с данными из запроса
 function array_from_query($query) {
    global $link;
    if (!isset($link)) {
        $link = make_link();
    }

    $result = mysql_query($query, $link);//$query
    $res_array = array();
    while($row = mysql_fetch_array($result))
    {
        $res_array[] = $row;
    }
    return $res_array;
 }
 

 //первое значение из запроса
 function val_from_query($query) {
    return array_from_query($query)[0][0];
 }

 
 
 function fetch_value($query){
    if ($res = make_query($query))
        if ($res = mysql_fetch_array($res))
            return $res[0];
    return NULL;
 }

 function read_error(){
    say("Не смогла прочитать то, что нужно :(<span class='hidden'>" . mysql_error() . "</span>", 1);
 }

 function write_error(){
    say("Не смогла записать то, что нужно :(<span class='hidden'>" . mysql_error() . "</span>", 1);
 }

?>
