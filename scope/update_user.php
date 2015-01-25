<?php

$id = intval($_REQUEST['id']);
$business_function= $_REQUEST['business_function'];
$purpose= $_REQUEST['purpose'];
$status= $_REQUEST['status'];
$reson= $_REQUEST['reson'];

include '../conn.php';

$sql = "update scope set business_function='$business_function',purpose='$purpose',status='$status',reson='$reson' where id=$id";
$result = @mysql_query($sql);
if($result){
	echo json_encode(array('success'=>true));
} else {
	echo json_encode(array('msg'=>'Some errors occured.'));
}
?>