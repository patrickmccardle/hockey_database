<?php
require_once 'dbconnect.php';

$sql = "update ECHL set city = '" . $_REQUEST['city'] .
  "',name='" . $_REQUEST['name'] . "',affiliate='" . $_REQUEST['affiliate'] . "' where city='" . $_REQUEST['city'] ."'" ;



if (!$result = $mysqli->query($sql)) {
    echo "Errno: " . $mysqli->errno . "</br>";
    echo "Error: " . $mysqli->error . "</br>";
    exit;

}

?>
<script>window.location='ECHL.php'; </script>
