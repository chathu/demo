<?php

$id = intval($_REQUEST['id']);
$AssetID = $_REQUEST['AssetID'];
$Owner = $_REQUEST['Owner'];
$Custodian = $_REQUEST['Custodian'];
$Users = $_REQUEST['Users'];
$Location = $_REQUEST['Location'];
$SysAdmin = $_REQUEST['SysAdmin'];
$LifeCycle = $_REQUEST['LifeCycle'];
$BusinessRequirements = $_REQUEST['BusinessRequirements'];
$TechnicalContact = $_REQUEST['TechnicalContact'];
$Vendor = $_REQUEST['Vendor'];
$ExpectedLife = $_REQUEST['ExpectedLife'];
$ExpiredLife = $_REQUEST['ExpiredLife'];
$MaintenanceStatus = $_REQUEST['MaintenanceStatus'];
$Purpose = $_REQUEST['Purpose'];
$Dependency = $_REQUEST['Dependency'];
$BackupSchedule = $_REQUEST['BackupSchedule'];
$BackupLocation = $_REQUEST['BackupLocation'];
$ConfidentialityRequirements = $_REQUEST['ConfidentialityRequirements'];
$IntegrityRequirements = $_REQUEST['IntegrityRequirements'];
$AvailabilityRequirements = $_REQUEST['AvailabilityRequirements'];

include '../conn.php';

$sql = "update assest_register_business_database set AssetID='$AssetID',Owner='$Owner',Custodian='$Custodian',Users='$Users',Location='$Location',SysAdmin='$SysAdmin',LifeCycle='$LifeCycle',BusinessRequirements='$BusinessRequirements',TechnicalContact='$TechnicalContact',Vendor='$Vendor',ExpectedLife='$ExpectedLife',ExpiredLife='$ExpiredLife',MaintenanceStatus='$MaintenanceStatus',Purpose='$Purpose',Dependency='$Dependency',BackupSchedule='$BackupSchedule',BackupLocation='$BackupLocation',ConfidentialityRequirements='$ConfidentialityRequirements',IntegrityRequirements='$IntegrityRequirements',AvailabilityRequirements='$AvailabilityRequirements' where id=$id";
$result = @mysql_query($sql);
if($result){
	echo json_encode(array('success'=>true));
} else {
	echo json_encode(array('msg'=>'Some errors occured.'));
}
?>