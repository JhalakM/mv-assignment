<?php
	include("database.php");
	if(isset($_POST['colorId']) && $_POST['colorId'] != ""){
		//connect with database
		$conn = new Database();
		$conn->connect();
		//query to get data from votes table
		$sql = "SELECT SUM(vote) as vCount FROM votes where color_id = ".$_POST['colorId']. " GROUP BY color_id";
		$result = $conn->query($sql);
		$return  = 0;
		
		// output data of each row
		while($row = mysql_fetch_row($result)) {
			$return = $row[0];
		}
		echo $return;
	}
?>