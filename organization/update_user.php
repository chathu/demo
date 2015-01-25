<?php

$org_id = intval($_REQUEST['org_id']);
$org_name= $_REQUEST['org_name'];
$address= $_REQUEST['address'];
$telephone= $_REQUEST['telephone'];
$email= $_REQUEST['email'];

include '../conn.php';

$sql = "update organization set org_name='$org_name',address='$address',telephone='$telephone',email='$email' where org_id=$org_id";
$result = @mysql_query($sql);
if($result){
	echo json_encode(array('success'=>true));
} else {
	echo json_encode(array('msg'=>'Some errors occured.'));
}
?>