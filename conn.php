<?php

$conn = @mysql_connect('localhost','root','123');
if (!$conn) {
	die('Could not connect: ' . mysql_error());
}
mysql_select_db('softcare_apps', $conn);

?>