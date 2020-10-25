<?php
require_once 'dbconnect.php';

$sql = "update Red_Wings_2018 set Player = '" . $_REQUEST['Player'] .
  "',Age='" . $_REQUEST['Age'] . "',Pos='" . $_REQUEST['Pos'] . "',GP='" . $_REQUEST['GP'] . "',
  G='" . $_REQUEST['G'] . "',A='" . $_REQUEST['A'] . "',PTS='" . $_REQUEST['PTS'] . "',
  plusMinus='" . $_REQUEST['plusMinus'] . "',PIM='" . $_REQUEST['PIM'] . "' where Player='" . $_REQUEST['Player'] ."'" ;



if (!$result = $mysqli->query($sql)) {
    echo "Errno: " . $mysqli->errno . "</br>";
    echo "Error: " . $mysqli->error . "</br>";
    exit;

}

?>
<script>window.location='Red_Wings_2018.php'; </script>
