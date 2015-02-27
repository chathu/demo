<!DOCTYPE html>
<html>

<head>
<meta content="text/html; charset=UTF-8" http-equiv="Content-Type">
<title>Login</title>
<link href="assets/css/bootstrap.min.css" rel="stylesheet">
<link href="assets/css/login.css" rel="stylesheet">
<link href="assets/magic/magic.css" rel="stylesheet">
</head>

<body>

<?php
        include('user_login.php'); // Includes Login Script

        if (isset($_SESSION['login_user'])) {
            header("location: dashboard/dashboard.php");
        }
        ?>
<div class="container">
	<div class="text-center">
		<img alt="Metis Logo" src="assets/img/logo.png"> </div>
		
	<div class="tab-content">
		<div id="login" class="tab-pane active">
			<form action="index.html" class="form-signin">
				<p class="muted text-center">Enter your username and password
				</p>
				<input id="user_name" class="input-block-level" name="user_name" placeholder="User Name" type="text" />
				<input id="password" class="input-block-level" name="password" placeholder="password" type="password" />
				<input id="submit" class="btn btn-metis-1 btn-large btn-primary btn-block" name="submit" onclick="user_login()" type="button" value="Login" />
				<div id="result" style="color: red;">
				</div>
			</form>
		</div>
		<div id="signup" class="tab-pane">
			
		<table>
                                    <tr>
                                        <td>First Name</td>
                                        <td>:</td>
                                        <td><input type="text" id="first_name" name="first_name" /></td>
                                    </tr>
                                    <tr>
                                        <td>Last Name</td>
                                        <td>:</td>
                                        <td><input type="text" id="last_name" name="last_name" /></td>
                                    </tr>
                                    <tr>
                                        <td>Contact No</td>
                                        <td>:</td>
                                        <td><input type="text" id="contact_no" name="contact_no" /></td>
                                    </tr>
                                    <tr>
                                        <td>Email</td>
                                        <td>:</td>
                                        <td><input type="text" id="email" name="email" /></td>
                                    </tr>

                                    <tr>
                                        <td>User Name</td>
                                        <td>:</td>
                                        <td><input type="text" id="username2" name="username" /></td>
                                    </tr>

                                    <tr>
                                        <td>Password</td>
                                        <td>:</td>
                                        <td><input type="password" onkeyup="check_password()" id="new_password2" name="new_password" /></td>
                                    </tr>
                                    <tr>
                                        <td>Password Again</td>
                                        <td>:</td>
                                        <td><input type="password" onkeyup="check_password()" id="new_password_again" name="new_password_again" /></td>
                                        <td><div id="password_check" style="color: #ff6666;"></div></td>
                                    </tr>

                                    <tr>
                                        <td></td>
                                        <td></td>
                                        <td><input name="save_user" class="btn btn-metis-1" id="save_user" type="button" value="Save User"  onclick="save_user()"/></td>
                                    </tr>
                                </table>			
		</div>
	</div>
	<div class="text-center">
		<ul class="inline">
			<li><a class="muted" data-toggle="tab" href="#login">Login</a></li>
			<li><a class="muted" data-toggle="tab" href="#signup">Signup</a></li>
		</ul>
	</div>
</div>
<!-- /container -->
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="assets/js/vendor/jquery-1.10.1.min.js"><\/script>')</script>
<script src="assets/js/vendor/bootstrap.min.js" type="text/javascript"></script>
<script>
            $('.inline li > a').click(function() {
                var activeForm = $(this).attr('href') + ' > form';
                //console.log(activeForm);
                $(activeForm).addClass('magictime swap');
                //set timer to 1 seconds, after that, unload the magic animation
                setTimeout(function() {
                    $(activeForm).removeClass('magictime swap');
                }, 1000);
            });

        </script>
        
        <script type="text/javascript">
            
                
            function user_login(){
                $.ajaxSetup ({
                    cache: false
                });
                document.getElementById("result").innerHTML = "Loading Please Wait...";
                var user_name=document.getElementById("user_name").value;
                var password=document.getElementById("password").value;
                
                if(user_name=="" || password==""){
                    alert("Please Enter Full Details");
                    document.getElementById("result").innerHTML = "Please Enter Full Details";
                }else{
                $.post("user_login.php",{
        
                    user_name:user_name,
                    password:password
                   
    
                },function(res){
                    if(res == "Success"){
                        window.location.assign("dashboard/dashboard.php");
                    }else {
            
                        document.getElementById("result").innerHTML = res;  
                    }
    
                } , 'text');

}
            }
                
                    
            function save_user(){
                $.ajaxSetup ({
                    cache: false
                });
                document.getElementById("result_save_user").innerHTML = "Loading Please Wait...";
                var first_name=document.getElementById("first_name").value;
                var last_name=document.getElementById("last_name").value;
                var contact_no=document.getElementById("contact_no").value;
                var email=document.getElementById("email").value;
                var username=document.getElementById("username2").value;
                var new_password=document.getElementById("new_password2").value;
                
                if(first_name=="" || last_name=="" || contact_no=="" || email==""){
                    alert("Please Enter Full Details");
                     document.getElementById("result_save_user").innerHTML = "";
                }else{
                    $.post("user_registration.php",{
        
                        first_name:first_name,
                        last_name:last_name,
                        contact_no:contact_no,
                        email:email,
                        username:username,
                        new_password:new_password
    
                    },function(res){
                        if(res == "success"){
                            alert("Successfuly Saved");
                            window.location.assign("login.php");
                        }else {
            
                            document.getElementById("result_save_user").innerHTML = res;  
                        }
    
                    } , 'text');

                }
            }
            function check_password(){
                $.ajaxSetup ({
                    cache: false
                });
                
                var new_password=document.getElementById("new_password2").value;
                var new_password_again=document.getElementById("new_password_again").value;
                
                if(new_password==""){
                    document.getElementById("password_check").innerHTML = "";
                }else if(new_password!=new_password_again){
                    document.getElementById("password_check").innerHTML = "Password Not Matched!";
                    document.getElementById("save_user").disabled = true;
                }else{
                    document.getElementById("password_check").innerHTML = "";
                    document.getElementById("save_user").disabled = false;
                }
            }
            
                
        </script>


</body>

</html>
