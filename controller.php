<?php
include("database.php");

class Controller{
	//function to get data from colors table
	public function getColor(){
		
		//connect with database
		$conn = new Database();
		$conn->connect();
		$sql = "SELECT * FROM colors";
		$result = $conn->query($sql);
		$return = array();
		
		// output data of each row
		while($row = mysql_fetch_array($result)) {
			$return[] = $row;
		}
		return $return;
	}
}

?>