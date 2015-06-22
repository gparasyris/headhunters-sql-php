<?php

	require "config.php";
	$db_data = new db_data();
	
	#error_reporting(0);
	
	$name = $_POST['name'];
	$address = $_POST['address'];
	$phone = $_POST['phone'];
	$email = $_POST['email'];
	$price = $_POST['price'];
	$discount = $_POST['discount'];
	$billNo = $_POST['billNo'];
	$creditCardType = $_POST['creditCardType'];
	$creditCardNo = $_POST['creditCardNo'];
	$creditCardCode = $_POST['creditCardCode'];
	mysql_set_charset('utf8');
	mysql_query("INSERT INTO customer (name, address, phone, email, price, billNo, creditCardType, creditCardNo, creditCardCode) VALUES ('$name', '$address', '$phone', '$email', '$price ', '$billNo', '$creditCardType', '$creditCardNo', '$creditCardCode')");
	
	$query = MYSQL_QUERY("SELECT MAX(customer.id) FROM customer");
	$row = mysql_fetch_array($query);
	$id = $row[0];
	mysql_query("INSERT INTO company (id, discount) VALUES ('$id', '$discount')");
	
	
	echo '<script type="text/javascript">
           window.location = "new_company.php"
      </script>';
	  
?>