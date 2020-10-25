<?php
require 'dbconnect.php';

$Season = $_REQUEST['Season'];
$Lg = $_REQUEST['Lg'];
$Team = $_REQUEST['Team'];
$AvAge = $_REQUEST['AvAge'];
$GP = $_REQUEST['GP'];
$W = $_REQUEST['W'];
$L = $_REQUEST['L'];
$T = $_REQUEST['T'];
$PTS = $_REQUEST['PTS'];
$sql = "insert into Stanley_Cup_Winners (Season,Lg,Team,AvAge,GP,W,L,T,PTS) VALUES ('$Season','$Lg','$Team','$AvAge','$GP','$W','$L','$T','$PTS')";



if (!$result = $mysqli->query($sql)) {
		echo "Error: Our query failed to execute and here is why: </br>";
		echo "Query: " . $sql . "</br>";
		echo "Errno: " . $mysqli->errno . "</br>";
		echo "Error: " . $mysqli->error . "</br>";
		exit;
}


?>
<script>
window.location = 'Stanley_Cup_Winners.php';
</script>
