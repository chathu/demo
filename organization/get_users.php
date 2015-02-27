<?php

$page = isset($_POST['page']) ? intval($_POST['page']) : 1;
$rows = isset($_POST['rows']) ? intval($_POST['rows']) : 10;
$offset = ($page - 1) * $rows;
$result = array();

include '../conn.php';
include '../session.php';

$ses_sql1 = mysql_query("select * from user_login where username='$login_session'", $conn);
$row1 = mysql_fetch_assoc($ses_sql1);
$result1 = $row1['user_id'];

$sql = mysql_query("select * from user_has_user_type where user_id='$result1'", $conn);
$row2 = mysql_fetch_assoc($sql);
$result2 = $row2['user_type_id'];

$sql1 = mysql_query("select * from user_types where user_type_id='$result2'", $conn);
$row3 = mysql_fetch_assoc($sql1);
$result3 = $row3['user_type'];


if ($result3 == "Admin") {

    $rs = mysql_query("select count(*) from organization");
    $row = mysql_fetch_row($rs);
    $result["total"] = $row[0];
    $rs = mysql_query("select * from organization where user_id='$result1' limit $offset,$rows");

    $items = array();
    while ($row = mysql_fetch_object($rs)) {
        array_push($items, $row);
    }
    $result["rows"] = $items;

    echo json_encode($result);
} else {

    $sql2 = mysql_query("select * from user_has_sub_user where sub_user_id='$result1'", $conn);
    $row4 = mysql_fetch_assoc($sql2);
    $result4 = $row4['user_id'];
    
    $rs = mysql_query("select count(*) from organization");
    $row = mysql_fetch_row($rs);
    $result["total"] = $row[0];
    $rs = mysql_query("select * from organization where user_id='$result4' limit $offset,$rows");

    $items = array();
    while ($row = mysql_fetch_object($rs)) {
        array_push($items, $row);
    }
    $result["rows"] = $items;

    echo json_encode($result);
    
}
?>