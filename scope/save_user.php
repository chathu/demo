<?php

include '../conn.php';
include '../session.php';

$session = $_SESSION["value"];

$business_function = $_REQUEST['business_function'];
$purpose = $_REQUEST['purpose'];
$status = $_REQUEST['status'];
$reson = $_REQUEST['reson'];


$sql = "insert into scope(org_id,business_function,purpose,status,reson) values('$session','$business_function','$purpose','$status','$reson')";
$result = @mysql_query($sql);
if ($result) {
    echo json_encode(array('success' => true));
} else {
    echo json_encode(array('msg' => 'Some errors occured.'));
}
?>