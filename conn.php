<?php

$conn = @mysql_connect('localhost','softcares_apps','softcares_apps');
if (!$conn) {
	die('Could not connect: ' . mysql_error());
}
mysql_select_db('softcares_apps', $conn);

?>