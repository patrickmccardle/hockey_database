<?php
require 'dbconnect.php';

$Trophy = $_REQUEST['Trophy'];
$Most_Recently_Won_By = $_REQUEST['Most_Recently_Won_By'];
$Most_All_Time_Wins = $_REQUEST['Most_All_Time_Wins'];
$Number_Of_Wins = $_REQUEST['Number_Of_Wins'];
$sql = "insert into Trophies (Trophy,Most_Recently_Won_By,Most_All_Time_Wins,Number_Of_Wins) VALUES ('$Trophy','$Most_Recently_Won_By','$Most_All_Time_Wins','$Number_Of_Wins')";



if (!$result = $mysqli->query($sql)) {
		echo "Error: Our query failed to execute and here is why: </br>";
		echo "Query: " . $sql . "</br>";
		echo "Errno: " . $mysqli->errno . "</br>";
		echo "Error: " . $mysqli->error . "</br>";
		exit;
}


?>
<script>
window.location = 'Trophies.php';
</script>
