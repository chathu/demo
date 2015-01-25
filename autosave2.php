<?php ob_start();

$con = mysql_connect("localhost","root","1234");

if (!$con)
  {
  die('Could not connect: ' . mysql_error());
  }

mysql_select_db("softcare_apps", $con);
$check = 0;
if ($_POST['check']=="true" || $_POST['check']=="checked"  ) $check = 1; 
else $check = 0;


$qstring="UPDATE test_autosave SET name = '".$_POST["name"]."' ,";
$qstring .= " email = '".$_POST["email"]."',";
$qstring .= " textarea = '".$_POST["textboxarea"]."',";
$qstring .= " selectfield = '".$_POST["selectfield"]."',";
$qstring .= " checkbox = ".$check.",";
$qstring .= " radio = '".$_POST["radios"]."'";
$qstring .= " WHERE id =".$_POST['id']."";
echo "success";
mysql_query($qstring);


$return_loc = "autosave_demo.php";

mysql_close($con);
ob_end_flush(); ?>