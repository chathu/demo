<?php

include '../conn.php';
include '../session.php';

$session = $_SESSION["value"];

$page = isset($_POST['page']) ? intval($_POST['page']) : 1;
$rows = isset($_POST['rows']) ? intval($_POST['rows']) : 10;
$offset = ($page - 1) * $rows;
$result = array();


$rs = mysql_query("select count(*) from scope where org_id='$session'");
$row = mysql_fetch_row($rs);
$result["total"] = $row[0];
$rs = mysql_query("select * from scope where org_id='$session' limit $offset,$rows");

$items = array();
while ($row = mysql_fetch_object($rs)) {
    array_push($items, $row);
}
$result["rows"] = $items;

echo json_encode($result);
?>