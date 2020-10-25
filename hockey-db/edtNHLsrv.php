<?php
require_once 'dbconnect.php';

$sql = "update NHL set city = '" . $_REQUEST['city'] .
  "',name='" . $_REQUEST['name'] . "',mascot='" . $_REQUEST['mascot'] . "' where city='" . $_REQUEST['city'] ."'" ;



if (!$result = $mysqli->query($sql)) {
    echo "Errno: " . $mysqli->errno . "</br>";
    echo "Error: " . $mysqli->error . "</br>";
    exit;

}

?>
<script>window.location='NHL.php'; </script>
