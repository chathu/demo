<?php

$conn = @mysql_connect('localhost','root','1234');
if (!$conn) {
	die('Could not connect: ' . mysql_error());
}
mysql_select_db('softcare_apps', $conn);

?>