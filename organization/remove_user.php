<?php

$org_id = intval($_REQUEST['org_id']);

include '../conn.php';

$sql = "delete from organization where org_id=$org_id";
$result = @mysql_query($sql);
if ($result){
	echo json_encode(array('success'=>true));
} else {
	echo json_encode(array('msg'=>'Some errors occured.'));
}
?>