<?php

$ISO_clause = $_REQUEST['ISO_clause'];
$ISMS = $_REQUEST['ISMS'];
$status = $_REQUEST['status'];
$comments = $_REQUEST['comments'];

include 'conn.php';

$sql = "insert into gap_analysis (ISO_clause,ISMS,status,comments) values('$ISO_clause','$ISMS','$status','$comments')";
$result = @mysql_query($sql);
if ($result){
	echo json_encode(array('success'=>true));
} else {
	echo json_encode(array('msg'=>'Some errors occured.'));
}
?>