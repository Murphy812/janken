<?php
  $link;
  require 'config.inc';
	$link = mysql_connect($db_server, $db_user, $db_password) or say(mysql_error(), 1);
  mysql_select_db($db_config, $link) or say(mysql_error(), 1);
  mysql_query("SET NAMES 'utf8'") or say(mysql_error(), 1);
  $res = mysql_query("select av_id, av_login, av_name, wins from avatars", $link) or say(mysql_error(), 1);
  $arr = mysql_fetch_array($res);
  print_r ($arr);
//    while($row = mysql_fetch_array($result))
?>
