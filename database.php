<?php
class Database {
	//function to connect with database
	public function connect(){
		// Create connection
		$conn = mysql_connect("localhost", "root", "");
		mysql_select_db("metavera",$conn);

		// Check connection
		if (!$conn) {
			die("Connection failed");
		}
	}
	
	//function to generate query result
	public function query($sql){
		$result = mysql_query($sql);
		return $result;
	}
}
	
?>