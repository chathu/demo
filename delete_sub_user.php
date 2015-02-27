<?php

include 'DB.php';

$user_id = $_POST['user_id'];

$result1 = mysqli_query($con, "UPDATE user_login SET is_active='false' WHERE user_id='$user_id'");

if ($result1) {
    echo 'success';
}

mysqli_close($con);

?>
