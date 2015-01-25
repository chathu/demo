<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en"><head>
<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<style type="text/css" media="screen">
*{margin:0;padding:0}
body{font-family:Arial, Helvetica, sans-serif;color:#666666}
h1{margin:20px}
#message{clear:left;margin-left:50px;margin-top:30px;height:40px}
form{margin-left:50px;width:300px;float:left;margin-right:100px}
label{float:left;width:350px;clear:left;margin-bottom:10px}
#name,#email,#check,#select,#radio1,#radio2,select{width:100px;margin-left:20px}
fieldset{padding:10px}
#database{width:300px;float:left;font-family:"Courier New", Courier, mono}
#database table{border-collapse:collapse;}
td{border:1px solid gray;padding:3px}
#return{margin:0px 0 0 50px;clear:left}

</style>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.autosave.js"></script>


<script type="text/javascript">
	$(function() {
	
		getDatabase();
		
		$("input,select,textarea").autosave({
			url: "autosave2.php",
			method: "post",
			grouped: true,
    		success: function(data) {
        		$("#message p").html("Data updated successfully").show();
				setTimeout('fadeMessage()',1500);
				getDatabase();
    		},
			send: function(){
        		$("#message p").html("Sending data....");
			},
    		dataType: "html"
		});		
		
		
	});
	
	function getDatabase(){
		$.get('autosave3.php', function(data) {
		  $('#database').html(data);
		});	
	}
	
	function fadeMessage(){
		$('#message p').fadeOut('slow');
	}
	

	
</script>

<title>jQuery autosave demo</title>
</head>

<body>
<?php
$con = mysql_connect("localhost","root","1234");

if (!$con)
  {
  die('Could not connect: ' . mysql_error());
  }

mysql_select_db("softcare_apps", $con);
$result = mysql_query("SELECT * FROM test_autosave WHERE id =$id");
$row = mysql_fetch_array($result);

?>
<h1>jQuery autosave demo</h1>
<form action="autosave2.php" method="post">
<fieldset>
<label for="name">Name:<input type="text" name="name" id="name" value="<?php echo $row['name'] ?>"/></label>
<label for="email">Email:<input type="text" name="email" id="email" value="<?php echo $row['email'] ?>" /></label>
<label for="textbox">Text:<textarea id="textboxarea" name="textboxarea" rows="2" cols="20"><?php echo $row['textarea'] ?></textarea></label>
<label for="check">Check:<input type="checkbox" name="check" id="check" <?php if ($row['checkbox']==1) echo "checked='checked'"; ?>/></label>
<label for="selectfield">Select:<select id="selectfield" name="selectfield">
<option>Option 1</option>
<option>Option 2</option>
</select></label>
<label for="radio1">Radio 1:<input type="radio" name="radios" id="radio1" value="radio1" <?php if ($row['radio']=="radio1") echo "checked='checked'"; ?>/></label>
<label for="radio2">Radio 2:<input type="radio" name="radios" id="radio2" value="radio2" <?php if ($row['radio']=="radio2") echo "checked='checked'"; ?>/></label>
<input type="hidden" name="id" value="<?php echo $row['id'] ?>" />
<input type="submit" value="Save changes" />
</fieldset>
</form>
<div id="database">
</div>
<div id="message"><p></p></div>
<p id="return"><a href="/blog/using-the-jquery-autosave-plugin/" title="Return to description">Return to description</a></p>

<?php mysql_close($con);?>

</body>
</html>