<?php

$AssetID = $_REQUEST['AssestTD'];
$Owner = $_REQUEST['Owner'];
$Custodian = $_REQUEST['Custodian'];
$Users = $_REQUEST['Users'];
$Location = $_REQUEST['Location'];
$StorageDetails = $_REQUEST['StorageDetails'];
$Classification = $_REQUEST['Classification'];
$LifeCycle = $_REQUEST['LifeCycle'];
$DisposalMethod = $_REQUEST['DisposalMethod'];
$BackupSchedule = $_REQUEST['BackupSchedule'];
$ConfidentialityRequirements = $_REQUEST['ConfidentialityRequirements'];
$IntegrityRequirements = $_REQUEST['IntegrityRequirements'];
$AvailabilityRequirements = $_REQUEST['AvailabilityRequirements'];

include 'conn.php';

$sql = "insert into assest_register_digital_assest(AssestTD,Owner,Custodian,Users,Location,StorageDetails,Classification,LifeCycle,DisposalMethod,BackupSchedule,ConfidentialityRequirements,IntegrityRequirements,AvailabilityRequirements) values('$AssetID','$Owner','$Custodian','$Users','$Location','$StorageDetails','$Classification','$LifeCycle','$DisposalMethod','$BackupSchedule','$ConfidentialityRequirements','$IntegrityRequirements','$AvailabilityRequirements')";
$result = @mysql_query($sql);

if($result){
	echo json_encode(array('success'=>true));
} else {
	echo json_encode(array('msg'=>'Some errors occured.'));
}
?>