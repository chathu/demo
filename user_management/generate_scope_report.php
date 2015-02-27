<?php
include '../conn.php';
$org_id = $_POST['org_id'];
$ses_sql1 = mysql_query("select * from organization where org_id='$org_id'", $conn);
$row1 = mysql_fetch_assoc($ses_sql1);
?>
<br />
<br />
<center> <h3 style="color: #ffffff"> <?php echo $row1['org_name'] ; ?> - Organization  Reports</h3> </center>
<a href="../SOA/Organization_Completion_Report.php?org_id=<?php echo $org_id; ?>" target="_blank"><input class="btn btn-primary" type="button" value="Implementation Report - Percentage" /></a>
<a href="../SOA/what_are_the_completed.php?org_id=<?php echo $org_id; ?>" target="_blank"><input class="btn btn-primary" type="button" value="Implementation Report" /></a>
<a href="../scope/generate_scope_report.php?org_id=<?php echo $org_id; ?>" target="_blank"><input class="btn btn-primary" type="button" value="Scope Report" /></a>


