<?php

$org_name= $_REQUEST['org_name'];
$address= $_REQUEST['address'];
$telephone= $_REQUEST['telephone'];
$email= $_REQUEST['email'];

include '../conn.php';

$sql = "insert into organization(org_name,address,telephone,email) values('$org_name','$address','$telephone','$email')";
$result = @mysql_query($sql);
if ($result){
	echo json_encode(array('success'=>true));
} else {
	echo json_encode(array('msg'=>'Some errors occured.'));
}
?>