<?php
include 'dbconnect.php';
$sql = "delete from Trophies where Trophy ='" . $_REQUEST['Trophy'] . "'";

echo '<b>' . var_dump($_REQUEST) . '</b>';

if (!$result = $mysqli->query($sql)) {
    echo "Error: SQL Error: </br>";
    echo "Errno: " . $mysqli->errno . "</br>";
    echo "Error: " . $mysqli->error . "</br>";

    exit;
}
?>
<script>
window.location='Trophies.php';
</script>
