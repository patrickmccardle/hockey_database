<?php
require 'dbconnect.php';

$city = $_REQUEST['city'];
$name = $_REQUEST['name'];
$affiliate = $_REQUEST['affiliate'];
$sql = "insert into ECHL (city,name,affiliate) VALUES ('$city','$name','$affiliate')";



if (!$result = $mysqli->query($sql)) {
    echo "Error: Our query failed to execute and here is why: </br>";
    echo "Query: " . $sql . "</br>";
    echo "Errno: " . $mysqli->errno . "</br>";
    echo "Error: " . $mysqli->error . "</br>";
    exit;
}


?>
<script>
window.location = 'ECHL.php';
</script>
