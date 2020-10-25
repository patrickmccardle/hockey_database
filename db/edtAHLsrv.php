<?php
require_once 'dbconnect.php';

$sql = "update AHL set city = '" . $_REQUEST['city'] .
  "',name='" . $_REQUEST['name'] . "',NHL_Affiliate='" . $_REQUEST['NHL_Affiliate'] . "' where city='" . $_REQUEST['city'] ."'" ;



if (!$result = $mysqli->query($sql)) {
    echo "Errno: " . $mysqli->errno . "</br>";
    echo "Error: " . $mysqli->error . "</br>";
    exit;

}

?>
<script>window.location='AHL.php'; </script>
