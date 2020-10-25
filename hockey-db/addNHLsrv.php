<?php
require 'dbconnect.php';

$city = $_REQUEST['city'];
$name = $_REQUEST['name'];
$mascot = $_REQUEST['mascot'];
$sql = "insert into NHL (city,name,mascot) VALUES ('$city','$name','$mascot')";



if (!$result = $mysqli->query($sql)) {
		echo "Error: Our query failed to execute and here is why: </br>";
		echo "Query: " . $sql . "</br>";
		echo "Errno: " . $mysqli->errno . "</br>";
		echo "Error: " . $mysqli->error . "</br>";
		exit;
}


?>
<script>
window.location = 'NHL.php';
</script>
