<?php 

$con = mysql_connect("localhost","root","1234");

if (!$con)
  {
  die('Could not connect: ' . mysql_error());
  }

mysql_select_db("softcare_apps", $con);

echo "<h3>Database fields</h3>";
$resultwhole = mysql_query("SELECT * FROM test_autosave");
echo "<table><tr><td>ID</td><td>Name</td><td>Email</td><td>Text</td><td>Checkbox</td><td>Select</td><td>Radio</td></tr>";
while ($rowwhole = mysql_fetch_array($resultwhole)){
echo "<tr>";
echo "<td>".$rowwhole['id']."</td>";
echo "<td>".$rowwhole['name']."</td>";
echo "<td>".$rowwhole['email']."</td>";
echo "<td>".$rowwhole['textarea']."</td>";
echo "<td>".$rowwhole['checkbox']."</td>";
echo "<td>".$rowwhole['selectfield']."</td>";
echo "<td>".$rowwhole['radio']."</td>";


echo "</tr>";
}
echo "</table>";



mysql_close($con);?>