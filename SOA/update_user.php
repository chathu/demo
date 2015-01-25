<?php

$id = intval($_REQUEST['id']);
$status = $_REQUEST['status'];
$comments = $_REQUEST['comments'];

include '../conn.php';

$sql = "update gap_analysis set status='$status',comments='$comments' where id=$id";
$result = @mysql_query($sql);
if($result){
	echo json_encode(array('success'=>true));
} else {
	echo json_encode(array('msg'=>'Some errors occured.'));
}
?>