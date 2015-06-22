<?php

	require "config.php";
	$db_data = new db_data();
	
	error_reporting(0);
	
	$name = $_POST['name'];
	$address = $_POST['address'];
	$phone = $_POST['phone'];
	$email = $_POST['email'];
	$price = $_POST['price'];
	$job = $_POST['job'];
	$billNo = $_POST['billNo'];
	$creditCardType = $_POST['creditCardType'];
	$creditCardNo = $_POST['creditCardNo'];
	$creditCardCode = $_POST['creditCardCode'];
	
	$bachelor = $_POST['bachelor'];
	$master = $_POST['master'];
	$phd = $_POST['phd'];
	$lang = $_POST['otherLanguage'];
	mysql_set_charset('utf8');
	mysql_query("INSERT INTO customer (name, address, phone, email, price, billNo, creditCardType, creditCardNo, creditCardCode) VALUES ('$name', '$address', '$phone', '$email', '$price ', '$billNo', '$creditCardType', '$creditCardNo', '$creditCardCode')");
	
	$query = MYSQL_QUERY("SELECT MAX(customer.id) FROM customer");
	$row = mysql_fetch_array($query);
	$id = $row[0];
	
	if(strcmp("true", $_POST['unemployed'])==0)
		$un = 1;
	else
		$un = 0;
	mysql_query("INSERT INTO individual (id, job, unemployed) VALUES ('$id', '$job', '$un')");
	
	if(strcmp($bachelor, "") != 0)
		mysql_query("INSERT INTO inidividualstudies (id, diploma) VALUES ('$id', '$bachelor')");
	if(strcmp($master, "") != 0)
		mysql_query("INSERT INTO inidividualstudies (id, diploma) VALUES ('$id', '$master')");
	if(strcmp($phd, "") != 0)
		mysql_query("INSERT INTO inidividualstudies (id, diploma) VALUES ('$id', '$phd')");
	
	if(strcmp("true", $_POST['java'])==0)			mysql_query("INSERT INTO inidividualskills (id, skill) VALUES ('$id', 'Java')");
	if(strcmp("true", $_POST['c'])==0)				mysql_query("INSERT INTO inidividualskills (id, skill) VALUES ('$id', 'C')");
	if(strcmp("true", $_POST['cplusplus'])==0)		mysql_query("INSERT INTO inidividualskills (id, skill) VALUES ('$id', 'C++')");
	if(strcmp("true", $_POST['matlab'])==0)			mysql_query("INSERT INTO inidividualskills (id, skill) VALUES ('$id', 'Matlab')");
	if(strcmp("true", $_POST['autocad'])==0)		mysql_query("INSERT INTO inidividualskills (id, skill) VALUES ('$id', 'Autocad')");
	if(strcmp("true", $_POST['photoshop'])==0)		mysql_query("INSERT INTO inidividualskills (id, skill) VALUES ('$id', 'Photoshop')");
	if(strcmp("true", $_POST['coredraw'])==0)		mysql_query("INSERT INTO inidividualskills (id, skill) VALUES ('$id', 'CorelDraw')");
	if(strcmp("true", $_POST['dotnet'])==0)			mysql_query("INSERT INTO inidividualskills (id, skill) VALUES ('$id', '.NET')");
	if(strcmp("true", $_POST['php'])==0)			mysql_query("INSERT INTO inidividualskills (id, skill) VALUES ('$id', 'PHP')");
	if(strcmp("true", $_POST['sql'])==0)			mysql_query("INSERT INTO inidividualskills (id, skill) VALUES ('$id', 'SQL')");
	if(strcmp("true", $_POST['python'])==0)			mysql_query("INSERT INTO inidividualskills (id, skill) VALUES ('$id', 'Python')");
	if(strcmp("true", $_POST['msoffice'])==0)		mysql_query("INSERT INTO inidividualskills (id, skill) VALUES ('$id', 'MS Office')");
	if(strcmp("true", $_POST['linux'])==0)			mysql_query("INSERT INTO inidividualskills (id, skill) VALUES ('$id', 'Linux')");
	
	if(strcmp("true", $_POST['english'])==0)		mysql_query("INSERT INTO inidividualforeignLanguages (id, foreignLanguage) VALUES ('$id', 'Αγγλικά')");
	if(strcmp("true", $_POST['french'])==0)			mysql_query("INSERT INTO inidividualforeignLanguages (id, foreignLanguage) VALUES ('$id', 'Γαλλικά')");
	if(strcmp("true", $_POST['deutch'])==0)			mysql_query("INSERT INTO inidividualforeignLanguages (id, foreignLanguage) VALUES ('$id', 'Γερμανικά')");
	if(strcmp("true", $_POST['chinese'])==0)		mysql_query("INSERT INTO inidividualforeignLanguages (id, foreignLanguage) VALUES ('$id', 'Κινέζικα')");
	if(strcmp("", $lang)!=0)						mysql_query("INSERT INTO inidividualforeignLanguages (id, foreignLanguage) VALUES ('$id', '$lang')");
	
	echo '<script type="text/javascript">
           window.location = "new_individual.php"
      </script>';
	  
?>