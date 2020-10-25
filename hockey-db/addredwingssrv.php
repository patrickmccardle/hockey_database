<?php
require_once 'dbconnect.php';

$Player = $_REQUEST['Player'];
$Age = $_REQUEST['Age'];
$Pos = $_REQUEST['Pos'];
$GP = $_REQUEST['GP'];
$G = $_REQUEST['G'];
$A = $_REQUEST['A'];
$PTS = $_REQUEST['PTS'];
$plusMinus = $_REQUEST['plusMinus'];
$PIM = $_REQUEST['PIM'];

$sql = "insert into Red_Wings_2018 (Player,Age,Pos,GP,G,A,PTS,plusMinus,PIM) VALUES ('$Player',$Age,'$Pos',$GP,$G,$A,$PTS,$plusMinus,$PIM)";

echo '<b>' . $sql . '</b>';


if (!$result = $mysqli->query($sql)) {
    echo "Errno: " . $mysqli->errno . "</br>";
    echo "Error: " . $mysqli->error . "</br>";
    exit;

}

?>
<script>window.location='Red_Wings_2018.php'; </script>
