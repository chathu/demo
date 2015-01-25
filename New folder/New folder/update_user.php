<?php
$id = intval($_REQUEST['id']);
$AssetID = $_REQUEST['AssetID'];
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


include 'connv.php';

$sql = "update assest_register_digital_assest set AssestTD='$AssetID', Owner='$Owner',Custodian='$Custodian',Users='$Users',Location='$Location', StorageDetails='$StorageDetails',Classification='$Classification',LifeCycle='$LifeCycle',DisposalMethod='$DisposalMethod',BackupSchedule='$BackupSchedule',ConfidentialityRequirements='$ConfidentialityRequirements',IntegrityRequirements='$IntegrityRequirements', AvailabilityRequirements='$AvailabilityRequirements' where id=$id";

$result = @mysql_query($sql);
if ($result){
	echo json_encode(array('success'=>true));
} else {
	echo json_encode(array('msg'=>'Some errors occured.'));
}
?>