<?php

	require "config.php";
	$db_data = new db_data();
	
	#error_reporting(0);
	
	$name = $_POST['name'];
	mysql_set_charset('utf8');
	$query = MYSQL_QUERY("SELECT id, price FROM customer WHERE name='$name'");
	$row = mysql_fetch_array($query);
	$id = $row[0];
	$amount = $row[1];
	
	$query2 = mysql_query("SELECT discount FROM company WHERE id='$id'");
	$r = mysql_fetch_array($query2);
	$dis = $r[0];
	$t = $amount - $amount * $dis / 100.0;
	 
	echo '<script type="text/javascript">
			alert("Thank you for your donation! Total is: "+'.$t.'+" Your discount is: "+'.$dis.');
           window.location = "index.html"
      </script>';
	  
?>