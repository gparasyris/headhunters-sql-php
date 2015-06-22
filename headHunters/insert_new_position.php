<?php

	require "config.php";
	$db_data = new db_data();
	
	error_reporting(0);
	
	$companyName = $_POST['companyName'];
	$positionCode = $_POST['positionCode'];
	$deadline = $_POST['deadline'];
	$adress = $_POST['adress'];
	$workHours = $_POST['workHours'];
	$salary = $_POST['salary'];
	$bachelor = $_POST['bachelor'];
	$master = $_POST['master'];
	$phd = $_POST['phd'];
	$description = $_POST['description'];
	
	$lang = $_POST['otherLanguage'];
	mysql_set_charset('utf8');
	mysql_query("INSERT INTO jobposition (code, description, city, work_hours, salary, available) VALUES ('$positionCode', '$description', '$adress', '$workHours', '$salary ', '1')");
	
	
	$query = MYSQL_QUERY("SELECT id FROM customer WHERE name='$companyName'");
	$row = mysql_fetch_array($query);
	$id = $row[0];
	//echo '-----'.$id.'-----';
	mysql_query("INSERT INTO isoffered (companyId, jobCode, name, deadline) VALUES ('$id', '$positionCode', 'The HeadHunters', '$deadline')");
	
	
	
	if(strcmp($bachelor, "") != 0)
		mysql_query("INSERT INTO jobpositionstudies (code, diploma) VALUES ('$positionCode', '$bachelor')");
	if(strcmp($master, "") != 0)
		mysql_query("INSERT INTO jobpositionstudies (code, diploma) VALUES ('$positionCode', '$master')");
	if(strcmp($phd, "") != 0)
		mysql_query("INSERT INTO jobpositionstudies (code, diploma) VALUES ('$positionCode', '$phd')");
	
	if(strcmp("true", $_POST['java'])==0)			mysql_query("INSERT INTO jobpositionskills (code, skill) VALUES ('$positionCode', 'Java')");
	if(strcmp("true", $_POST['c'])==0)				mysql_query("INSERT INTO jobpositionskills (code, skill) VALUES ('$positionCode', 'C')");
	if(strcmp("true", $_POST['cplusplus'])==0)		mysql_query("INSERT INTO jobpositionskills (code, skill) VALUES ('$positionCode', 'C++')");
	if(strcmp("true", $_POST['matlab'])==0)			mysql_query("INSERT INTO jobpositionskills (code, skill) VALUES ('$positionCode', 'Matlab')");
	if(strcmp("true", $_POST['autocad'])==0)		mysql_query("INSERT INTO jobpositionskills (code, skill) VALUES ('$positionCode', 'Autocad')");
	if(strcmp("true", $_POST['photoshop'])==0)		mysql_query("INSERT INTO jobpositionskills (code, skill) VALUES ('$positionCode', 'Photoshop')");
	if(strcmp("true", $_POST['coredraw'])==0)		mysql_query("INSERT INTO jobpositionskills (code, skill) VALUES ('$positionCode', 'CorelDraw')");
	if(strcmp("true", $_POST['dotnet'])==0)			mysql_query("INSERT INTO jobpositionskills (code, skill) VALUES ('$positionCode', '.NET')");
	if(strcmp("true", $_POST['php'])==0)			mysql_query("INSERT INTO jobpositionskills (code, skill) VALUES ('$positionCode', 'PHP')");
	if(strcmp("true", $_POST['sql'])==0)			mysql_query("INSERT INTO jobpositionskills (code, skill) VALUES ('$positionCode', 'SQL')");
	if(strcmp("true", $_POST['python'])==0)			mysql_query("INSERT INTO jobpositionskills (code, skill) VALUES ('$positionCode', 'Python')");
	if(strcmp("true", $_POST['msoffice'])==0)		mysql_query("INSERT INTO jobpositionskills (code, skill) VALUES ('$positionCode', 'MS Office')");
	if(strcmp("true", $_POST['linux'])==0)			mysql_query("INSERT INTO jobpositionskills (code, skill) VALUES ('$positionCode', 'Linux')");
	
	if(strcmp("true", $_POST['english'])==0)		mysql_query("INSERT INTO jobpositionforeignlanguages (code, foreignLanguage) VALUES ('$positionCode', 'Αγγλικά')");
	if(strcmp("true", $_POST['french'])==0)			mysql_query("INSERT INTO jobpositionforeignlanguages (code, foreignLanguage) VALUES ('$positionCode', 'Γαλλικά')");
	if(strcmp("true", $_POST['deutch'])==0)			mysql_query("INSERT INTO jobpositionforeignlanguages (code, foreignLanguage) VALUES ('$positionCode', 'Γερμανικά')");
	if(strcmp("true", $_POST['chinese'])==0)		mysql_query("INSERT INTO jobpositionforeignlanguages (code, foreignLanguage) VALUES ('$positionCode', 'Κινέζικα')");
	if(strcmp("", $lang)!=0)						mysql_query("INSERT INTO jobpositionforeignlanguages (code, foreignLanguage) VALUES ('$positionCode', '$lang')");
	
	//increment availablePositions in HeadHunters
	$q = MYSQL_QUERY("SELECT availablePositions FROM headhunters");
	$r = mysql_fetch_array($query);
	$positions = $r[0];
	MYSQL_QUERY("UPDATE headhunters SET  availablePositions='$positions' WHERE name='The HeadHunters'");
	
	echo '<script type="text/javascript">
           window.location = "new_position.php"
      </script>';
	  
?>