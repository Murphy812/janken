<?php
  function log_call() {
    $varr = array (
	                "log_date"    => time()
                    ,"ip_address" => $_SERVER["REMOTE_ADDR"]
                    ,"referer"    => 'localhost'
                    ,"query"      => addslashes($_SERVER["QUERY_STRING"])
                    ,"post_arr"   => addslashes(print_r($_POST, TRUE))
                    ,"cookie_arr" => addslashes(print_r($_COOKIE, TRUE))
                    ,"proxy"      => ''

				   );
    $query=      "insert into logs(log_date, ip_address, referer, proxy, query, post_arr, cookie_arr) values ("
			  ."'".$varr["log_date"]."'"
			  .", '".$varr["ip_address"]."'"
			  .", '".$varr["referer"]."'"
			  .", '".$varr["proxy"]."'"
			  .", '".$varr["query"]."'"
			  .", '".$varr["post_arr"]."'"
			  .", '".$varr["cookie_arr"]."'"
			  .")";
			  
    $res = make_query($query);
  }
  
  
?>
