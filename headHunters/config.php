<?php
// Database information
class db_data{
	var $db_conn;
	function db_data() {
		
		if($_SERVER['REMOTE_ADDR']=="127.0.0.1"){
			$dbhost = 'localhost';		
			$dbuser = 'root';
			$dbpass = '';
		}
		else{
			$dbhost = 'localhost';
			$dbuser = 'root';
			$dbpass = '';		
		}
		
		$this->db_conn = mysql_connect($dbhost, $dbuser, $dbpass) or die ('Error connecting to mysql');
		
		//mysql_query("set NAMES 'utf8'");
		
		if($_SERVER['REMOTE_ADDR']=="127.0.0.1"){
			mysql_select_db("headhuntersdb");
		}
		else{
			mysql_select_db("headhuntersdb");
		}
		
	}
}

class config {
	var $pagetitle="HeadHunters";
	var $sitename="";
}

?>