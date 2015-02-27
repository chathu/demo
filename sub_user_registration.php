<?php

include 'conn.php';
include 'session.php';

$firstname = $_POST['first_name'];
$lastname = $_POST['last_name'];
$contact_no = $_POST['contact_no'];
$email = $_POST['email'];
$new_password = $_POST['new_password'];
$username = $_POST['username'];
$user_type = $_POST['user_type'];
$date = date("Y/m/d");
$time = date("h:i:sa");

$ses_sql1 = mysql_query("select * from user_login where username='$login_session'", $conn);
$row10 = mysql_fetch_assoc($ses_sql1);
$r = $row10['user_id'];


$sql = "INSERT INTO users (firstname, lastname, phone, email) VALUES ('$firstname', '$lastname', '$contact_no', '$email')";

$results = @mysql_query($sql);
if ($results) {

    $sql1 = "SELECT * from users where firstname='$firstname' and lastname='$lastname' and phone='$contact_no' and email='$email'";
    $results1 = @mysql_query($sql1);

    while ($row = mysql_fetch_array($results1)) {
        $user_id = $row['user_id'];

        $sql2 = "INSERT INTO user_has_user_type (user_id, user_type_id) VALUES ('$user_id', '$user_type')";
        $results3 = @mysql_query($sql2);
        if ($results3) {
            $sql3 = "INSERT INTO user_login (username, password, is_active, user_id) VALUES ('$username','$new_password','true','$user_id')";
            $results4 = @mysql_query($sql3);
            if ($results4) {

                $sql4 = "INSERT INTO user_session_management (user_id, date, time, activity) VALUES ('$user_id','$date','$time','Admin Create User')";
                $results5 = @mysql_query($sql4);
                if ($results5) {

                    $sql5 = "INSERT INTO user_has_sub_user (user_id, sub_user_id) VALUES ('$r','$user_id')";
                    $results6 = @mysql_query($sql5);

                    if ($results6) {
                        echo 'success';
                    }
                } else {
                    
                }
            } else {
                
            }
        } else {
            
        }
    }
} else {
    
}
?>
