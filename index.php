<?php

	include("controller.php");
	$colorObject = new Controller();
	$result = $colorObject->getColor();
	
?>

<!DOCTYPE html>
<html>
	<head>
		<title>Interview Assignment</title>
		<link rel="stylesheet" type="text/css" href="css/style.css" />
	</head>
	<body>
		<header>
			<h2>Colors</h2>
		</header>
		<section class="content-element">
			<?php
				if (count($result) > 0) {
					echo "<table id='data-table'>".
						  "<th>Colors</th><th>Votes</th>";
					// output data of each row
					for($i=0; $i< count($result); $i++) {
						echo 	"<tr>".
									"<td class='col-".$result[$i]['color_id']."' data-id='".$result[$i]['color_id']."'>".$result[$i]['color_name']."</td>".
									"<td class='vote-".$result[$i]['color_id']."'></td>".
								"</tr>";
					}
						echo "<tr><td class='total-count'>Total</td><td></td></tr>";
					echo "</table>";
				} else {
					echo "No result found";
				}
				
			?>
		</section>
		<script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
		<script type="text/javascript" src="js/custom.js"></script>
	</body>
</html>