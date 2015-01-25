<?php

$id = intval($_REQUEST['id']);
$ISO_clause = $_REQUEST['ISO_clause'];
$ISMS = $_REQUEST['ISMS'];
$status = $_REQUEST['status'];
$comments = $_REQUEST['comments'];

include 'conn.php';

$sql = "update gap_analysis set ISO_clause='$ISO_clause',ISMS='$ISMS',status='$status',comments='$comments' where id=$id";
$result = @mysql_query($sql);
if($result){
	echo json_encode(array('success'=>true));
} else {
	echo json_encode(array('msg'=>'Some errors occured.'));
}
?>