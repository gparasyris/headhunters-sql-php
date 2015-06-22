<?php

	require "config.php";
	$db_data = new db_data();
	
	#error_reporting(0);
	
	$individualName = $_POST['individualName'];
	$date = $_POST['date'];
	mysql_set_charset('utf8');
	$query = MYSQL_QUERY("SELECT id FROM customer WHERE name='$individualName'");
	$row = mysql_fetch_array($query);
	$id = $row[0];
	
	mysql_query("INSERT INTO isrequested (individualId, name, availableFrom) VALUES ('$id', 'The HeadHunters', '$date')");
	
	echo '<script type="text/javascript">
           window.location = "new_application.php"
      </script>';
	  
?>