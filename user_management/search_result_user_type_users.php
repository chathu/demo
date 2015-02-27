
<?php

include '../conn.php';
include '../session.php';

$page = isset($_POST['page']) ? intval($_POST['page']) : 1;
$rows = isset($_POST['rows']) ? intval($_POST['rows']) : 10;
$offset = ($page - 1) * $rows;
$result = array();


$ses_sql1 = mysql_query("select * from user_login where username='$login_session'", $conn);
$row1 = mysql_fetch_assoc($ses_sql1);
$result1 = $row1['user_id'];

$ses_sql2 = mysql_query("select * from user_has_sub_user where user_id='$result1'", $conn);
$items = array();
while ($nt = mysql_fetch_array($ses_sql2)) {
    $sub_user = $nt['sub_user_id'];
    $rs = mysql_query("select count(*) from user_has_sub_user where user_id='$result1'");
    $row = mysql_fetch_row($rs);
    $result["total"] = $row[0];
    $rs = mysql_query("select * from users where user_id='$sub_user'  limit $offset,$rows");

    $rsg = mysql_query("select * from user_login where user_id='$sub_user' and is_active='true'");
    
    
    while ($row = mysql_fetch_object($rs)) {
        array_push($items, $row);
    }
    $result["rows"] = $items;
    
}
echo json_encode($result);
?>
    
    
