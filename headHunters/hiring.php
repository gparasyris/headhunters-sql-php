<?php

	require "config.php";
	$db_data = new db_data();
	
	error_reporting(0);
	
	
	
	$indiv = $_GET['indiv']; 
	$job = $_GET['posit']; 
	
	$q = MYSQL_QUERY("SELECT availablePositions, occupiedPositions FROM headhunters");
	$r = mysql_fetch_array($query);
	$apositions = $r[0];
	$opositions = $r[1];
	MYSQL_QUERY("UPDATE headhunters SET  availablePositions='$apositions', occupiedPositions='$opositions' WHERE name='The HeadHunters'");
	MYSQL_QUERY("UPDATE individual SET  unemployed=0 WHERE id='$indiv'");
	MYSQL_QUERY("UPDATE jobposition SET  available=0 WHERE code='$job'");
	
	echo '<script type="text/javascript">
           window.location = "check_matchings.php"
      </script>';
	  
?>