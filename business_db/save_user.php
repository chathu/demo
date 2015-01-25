<?php
session_start();

 $session = $_SESSION["value"];
 
 
$org_id = $session;
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

$sql = "insert into assest_register_business_database (AssetID,org_id, Owner,Custodian,Users,Location,SysAdmin,LifeCycle,BusinessRequirements,TechnicalContact,Vendor,ExpectedLife,ExpiredLife,MaintenanceStatus,Purpose,Dependency,BackupSchedule,BackupLocation,ConfidentialityRequirements,IntegrityRequirements,AvailabilityRequirements) values('$AssetID','$session','$Owner','$Custodian','$Users','$Location','$SysAdmin','$LifeCycle','$BusinessRequirements','$TechnicalContact','$Vendor','$ExpectedLife','$ExpiredLife','$MaintenanceStatus','$Purpose','$Dependency','$BackupSchedule','$BackupLocation','$ConfidentialityRequirements','$IntegrityRequirements','$AvailabilityRequirements')";
$result = @mysql_query($sql);
if ($result){
	echo json_encode(array('success'=>true));
} else {
	echo json_encode(array('msg'=>'Some errors occured.'));
}
?>