<?php

include 'session.php';
include 'conn.php';

$ses_sql1 = mysql_query("select * from user_login where username='$login_session'", $conn);
$row1 = mysql_fetch_assoc($ses_sql1);
$result = $row1['user_id'];
$date = date("Y/m/d");
$time = date("h:i:sa");

$sql = "INSERT INTO user_session_management (user_id, date, time, activity) VALUES ('$result', '$date', '$time', 'Logout From the System')";

$results = @mysql_query($sql);
if ($results) {
    session_destroy();
    echo 'success';
} else {
    
}


?>