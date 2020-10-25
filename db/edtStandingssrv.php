<?php
require_once 'dbconnect.php';

$sql = "update Standings set RK = '" . $_REQUEST['RK'] .
  "',GP='" . $_REQUEST['GP'] . "',W='" . $_REQUEST['W'] . "' where Name=" . $_REQUEST['Name'];



if (!$result = $mysqli->query($sql)) {
    echo "Errno: " . $mysqli->errno . "</br>";
    echo "Error: " . $mysqli->error . "</br>";
    exit;

}

?>
<script>window.location='Standings.php'; </script>
