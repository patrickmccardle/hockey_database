<?php
require_once 'dbconnect.php';

$sql = "insert into Standings (RK,Name,GP,W,L,PTS) VALUES (" . $_REQUEST['RK'] .
  "," . $_REQUEST['Name'] . "," . $_REQUEST['GP'] . "," . $_REQUEST['W'] . "," . $_REQUEST['L'] . "," . $_REQUEST['PTS'] . ")";

if (!$result = $mysqli->query($sql)) {
    echo "Errno: " . $mysqli->errno . "</br>";
    echo "Error: " . $mysqli->error . "</br>";
    exit;

}

?>
<script>window.location='Standings.php'; </script>
