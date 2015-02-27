<?php

$user_id = intval($_REQUEST['user_id']);
$firstname = $_REQUEST['firstname'];
$lastname = $_REQUEST['lastname'];
$phone = $_REQUEST['phone'];
$email = $_REQUEST['email'];

include '../conn.php';

$sql = "update users set firstname='$firstname',lastname='$lastname',phone='$phone',email='$email' where user_id=$user_id";
$result = @mysql_query($sql);
if ($result) {
    echo json_encode(array('success' => true));
} else {
    echo json_encode(array('msg' => 'Some errors occured.'));
}
?>
