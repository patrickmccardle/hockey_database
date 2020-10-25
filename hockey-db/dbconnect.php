<?php
$mysqli = new mysqli('127.0.0.1', 'patr1203_patrick', 'passs', 'patr1203_csci_332');

if ($mysqli->connect_errno) {
    echo "Errno: " . $mysqli->connect_errno . "</br>";
    echo "Error: " . $mysqli->connect_error . "</br>";
    exit;
}
?>
