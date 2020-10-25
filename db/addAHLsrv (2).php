<?php
require 'dbconnect.php';

$city = $_REQUEST['city'];
$name = $_REQUEST['name'];
$NHL_affiliate = $_REQUEST['NHL_affiliate'];
$sql = "insert into AHL (city,name,NHL_affiliate) VALUES ('$city','$name','$NHL_affiliate')";



if (!$result = $mysqli->query($sql)) {
    echo "Error: Our query failed to execute and here is why: </br>";
    echo "Query: " . $sql . "</br>";
    echo "Errno: " . $mysqli->errno . "</br>";
    echo "Error: " . $mysqli->error . "</br>";
    exit;
}


?>
<script>
window.location = 'AHL.php';
</script>
