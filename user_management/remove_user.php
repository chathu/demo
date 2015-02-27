<?php

$user_id = intval($_REQUEST['user_id']);

include '../conn.php';

$sql = "delete from users where user_id=$user_id";
$result = @mysql_query($sql);
if ($result) {

    $sql1 = "delete from user_login where user_id=$user_id";
    $result1 = @mysql_query($sql1);

    if ($result1) {

        echo json_encode(array('success' => true));
    } else {
        echo json_encode(array('msg' => 'Some errors occured.'));
    }
} else {
    echo json_encode(array('msg' => 'Some errors occured.'));
}
?>