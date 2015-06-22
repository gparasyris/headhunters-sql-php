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
	 
	echo '<script type="text/javascript">
			alert("Thank you for your donation! Total is: "+'.$amount.');
           window.location = "index.html"
      </script>';
	  
?>