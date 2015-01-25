<?php
session_start();

 $session = $_SESSION["value"];
 
 $org_id = $session;
$business_function= $_REQUEST['business_function'];
$purpose= $_REQUEST['purpose'];
$status= $_REQUEST['status'];
$reson= $_REQUEST['reson'];

include '../conn.php';

$sql = "insert into scope( org_id, business_function,purpose,status,reson) values('$org_id','$business_function','$purpose','$status','$reson')";
$result = @mysql_query($sql);
if ($result){
	echo json_encode(array('success'=>true));
} else {
	echo json_encode(array('msg'=>'Some errors occured.'));
}
?>