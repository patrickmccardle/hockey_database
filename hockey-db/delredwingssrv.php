<?php
include 'dbconnect.php';
$sql = "delete from Red_Wings_2018 where Player ='" . $_REQUEST['Player'] . "'";

echo '<b>' . $sql . '</b>';

if (!$result = $mysqli->query($sql)) {
    echo "Error: SQL Error: </br>";
    echo "Errno: " . $mysqli->errno . "</br>";
    echo "Error: " . $mysqli->error . "</br>";

    exit;
}
?>
<script>
window.location='Red_Wings_2018.php';
</script>
