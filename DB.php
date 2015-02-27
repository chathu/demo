<?php
$con = mysqli_connect("localhost", "root", "123", "softcare_apps");
// Check connection
if (mysqli_connect_errno()) {
    echo "Failed to connect to MySQL: " . mysqli_connect_error();
}
?>