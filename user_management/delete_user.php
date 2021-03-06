﻿<!DOCTYPE html>
<!--[if lt IE 7]>       <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>          <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>          <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->  <html class="no-js"> <!--<![endif]-->

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>Blank Page</title>
        <meta name="description" content="Softcare Apps, ISO 27001">
        <meta name="viewport" content="width=device-width">
        <link type="text/css" rel="stylesheet" href="../assets/css/bootstrap.min.css"/>
        <link type="text/css" rel="stylesheet" href="../assets/css/bootstrap-responsive.min.css"/>
        <link type="text/css" rel="stylesheet" href="../assets/Font-awesome/css/font-awesome.min.css"/>
        <link type="text/css" rel="stylesheet" href="../assets/css/style.css"/>

        <link rel="stylesheet" href="../assets/css/theme.css">



        <link href="../css/easyui.css" rel="stylesheet" type="text/css">
        <link href="../css/demo.css"  rel="stylesheet" type="text/css">
        <link href="../css/icon.css"  rel="stylesheet" type="text/css">

        <script type="text/javascript" src="../assets/js/vendor/modernizr-2.6.2-respond-1.1.0.min.js"></script>

        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>
        <script>window.jQuery || document.write('<script src="../assets/js/vendor/jquery-1.10.1.min.js"><\/script>')</script>        
        <script type="text/javascript" src="../assets/js/vendor/bootstrap.min.js"></script>        

        <script type="text/javascript" src="../assets/js/style-switcher.js"></script>




        <script type="text/javascript" src="../js/jquery.easyui.min.js"></script>
        <script type="text/javascript">
            var url;
            function newUser(){
                $('#dlg').dialog('open').dialog('setTitle','Create New User');
                $('#fm').form('clear');
                url = 'save_user.php';
            }
            function editUser(){
                var row = $('#dg').datagrid('getSelected');
                if (row){
                    $('#dlg').dialog('open').dialog('setTitle','Edit User');
                    $('#fm').form('load',row);
                    url = 'update_user.php?user_id='+row.user_id;
                }
            }
            function saveUser(){
                $('#fm').form('submit',{
                    url: url,
                    onSubmit: function(){
                        return $(this).form('validate');
                    },
                    success: function(result){
                        var result = eval('('+result+')');
                        if (result.success){
                            $('#dlg').dialog('close');		// close the dialog
                            $('#dg').datagrid('reload');	// reload the user data
                        } else {
                            $.messager.show({
                                title: 'Error',
                                msg: result.msg
                            });
                        }
                    }
                });
            }
            function removeUser(){
                var row = $('#dg').datagrid('getSelected');
                if (row){
                    $.messager.confirm('Confirm','Are you sure you want to remove this User?',function(r){
                        if (r){
                            $.post('remove_user.php',{user_id:row.user_id},function(result){
                                if (result.success){
                                    $('#dg').datagrid('reload');	// reload the user data
                                } else {
                                    $.messager.show({	// show error message
                                        title: 'Error',
                                        msg: result.msg
                                    });
                                }
                            },'json');
                        }
                    });
                }
            }
        </script>
        <script type="text/javascript">
            
                
            function user_logout(){
                $.ajaxSetup ({
                    cache: false
                });
                var confirm_this=confirm("Are You Sure You Want To Logout?","");
                
                if(confirm_this==true){
                
                    $.post("../logout.php",null,function(res){
                        if(res=="success"){
                            window.location.assign("../login.php");
                        }else{
                        
                        }
                    } , 'text');
                }
            }
           
            function create_user_registration(){
                $.ajaxSetup ({
                    cache: false
                });
                
                $.post("../create_user.php",null,function(res){
                    document.getElementById("content").innerHTML = res; 
    
                } , 'text');
                    
                
            }
            function delete_user(){
                $.ajaxSetup ({
                    cache: false
                });
                
                $.post("../delete_user.php",null,function(res){
                    document.getElementById("content").innerHTML = res; 
    
                } , 'text');
                    
                
            }
            function assign_user(){
                $.ajaxSetup ({
                    cache: false
                });
                document.getElementById("result_save_user").innerHTML = "Loading Please Wait...";
                var first_name=document.getElementById("first_name").value;
                var last_name=document.getElementById("last_name").value;
                var contact_no=document.getElementById("contact_no").value;
                var email=document.getElementById("email").value;
                var username=document.getElementById("username").value;
                var new_password=document.getElementById("new_password").value;
               
                var user_type=document.getElementById("user_type").value;
                
                
                if(first_name=="" || last_name=="" || contact_no=="" || email==""){
                    alert("Please Enter Full Details");
                    document.getElementById("result_save_user").innerHTML = "";
                }else{
                    $.post("../sub_user_registration.php",{
        
                        first_name:first_name,
                        last_name:last_name,
                        contact_no:contact_no,
                        email:email,
                        username:username,
                        new_password:new_password,
                        user_type:user_type
    
                    },function(res){
                       
                        if(res == "success"){
                            alert("Successfuly Saved");
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
                
                var new_password=document.getElementById("new_password").value;
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
            function load_user_type_users(){
                $.ajaxSetup ({
                    cache: false
                });
                var user_type=document.getElementById("user_type").value;
                $.post("../search_result_user_type_users.php",{
                    user_type:user_type
                    
                },function(res){
                    document.getElementById("search_result_user_type_users").innerHTML = res; 
    
                } , 'text');
                    
                
            }
           
            function delete_sub_user(user_id){
                $.ajaxSetup ({
                    cache: false
                });
                
                $.post("../delete_sub_user.php",{
                    user_id:user_id
                    
                },function(res){
                    if(res=="success"){
                        alert("Successfully Delete User");
                        delete_user();
                    }else{
                        alert(res);   
                    }
                    
    
                } , 'text');
                    
                
            }
                
        </script>
        <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
        <!--[if lt IE 9]>
                <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
        <!--[if IE 7]>
                <link type="text/css" rel="stylesheet" href="../assets/Font-awesome/css/font-awesome-ie7.min.css"/>
                <![endif]-->

        <!-- from my works -->

        <style type="text/css">
            #fm {
                margin: 0;
                padding: 10px 30px;
            }
            .ftitle {
                font-size: 14px;
                font-weight: bold;
                color: #666;
                padding: 5px 0;
                margin-bottom: 10px;
                border-bottom: 1px solid #ccc;
            }
            .fitem {
                margin-bottom: 5px;
            }
            .fitem label {
                display: inline-block;
                width: 80px;
            }
        </style>

        <!-- end of from my works -->

    </head>
    <body>
 <?php
        include '../conn.php';
        include '../session.php';
        
        $ses_sql1 = mysql_query("select * from user_login where username='$login_session'", $conn);
        $row1 = mysql_fetch_assoc($ses_sql1);
        $result1 = $row1['user_id'];

        $ses_sql = mysql_query("select * from users where user_id='$result1'", $conn);
        $row = mysql_fetch_assoc($ses_sql);
        $result = $row['firstname'];


        $sql = mysql_query("select * from user_has_user_type where user_id='$result1'", $conn);
        $row2 = mysql_fetch_assoc($sql);
        $result2 = $row2['user_type_id'];

        $sql1 = mysql_query("select * from user_types where user_type_id='$result2'", $conn);
        $row3 = mysql_fetch_assoc($sql1);
        $result3 = $row3['user_type'];
        ?>
        <!-- #wrap -->
        <div id="wrap">
            <!-- #top -->
            <div id="top">
                <!-- .navbar -->
                <div class="navbar navbar-inverse navbar-static-top">
                    <div class="navbar-inner">
                        <div class="container-fluid">
                            <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </a>
                            <div class="brand"> <div class="sc_logo"><a href="../../index.html"></a> </div></div><!-- .topnav -->
                            <div class="btn-toolbar topnav">
                                <div class="btn-group">
                                    <a id="changeSidebarPos" class="btn btn-success" rel="tooltip"
                                       data-original-title="Show / Hide Sidebar" data-placement="bottom">
                                        <i class="icon-resize-horizontal"></i>
                                    </a>
                                </div>
                                <div class="btn-group">
                                    <a class="btn btn-inverse" rel="tooltip" data-original-title="E-mail" data-placement="bottom">
                                        <i class="icon-envelope"></i>
                                        <span class="label label-warning">5</span>
                                    </a>
                                    <a class="btn btn-inverse" rel="tooltip" href="#" data-original-title="Messages"
                                       data-placement="bottom">
                                        <i class="icon-comments"></i>
                                        <span class="label label-important">4</span>
                                    </a>
                                </div>
                                <div class="btn-group">
                                    <a class="btn btn-inverse" rel="tooltip" href="#" data-original-title="Document"
                                       data-placement="bottom">
                                        <i class="icon-file"></i>
                                    </a>
                                    <a href="#helpModal" class="btn btn-inverse" rel="tooltip" data-placement="bottom"
                                       data-original-title="Help" data-toggle="modal">
                                        <i class="icon-question-sign"></i>
                                    </a>
                                </div>

                                <div class="btn-group">
                                    <a class="btn btn-inverse" data-placement="bottom" data-original-title="Logout" rel="tooltip"
                                       href="#" onclick="user_logout()"><i class="icon-off"></i></a>
                                </div>

                            </div>
                            <!-- /.topnav -->
                            <div class="nav-collapse collapse">
                                <!-- .nav -->
                                <ul class="nav">
                                    <li><a href="#">Dashboard</a></li>
                                    <li><a href="#">Tables</a></li>
                                    <li><a href="#">File Manager</a></li>

                                    <?php if ($result3 == "Admin") { ?>
                                        <li class="dropdown ">
                                            <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                                                User Management <b class="caret"></b>
                                            </a>
                                            <ul class="dropdown-menu">
                                                <li><a href="#" onclick="create_user_registration()">Create User</a></li>
                                                <li><a href="../organization/company.php" onclick="delete_user()">Delete User</a></li>
                                            </ul>
                                        </li>
                                        <li class="dropdown ">
                                            <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                                                Reports <b class="caret"></b>
                                            </a>
                                            <ul class="dropdown-menu">
                                                <li><a href="../Full_Report.php" target="_blank">Implementation Report</a></li>
                                            </ul>
                                        </li>

                                    <?php }
                                    ?>


                                    <li><a href="#" onclick="user_logout()">Log Out</a></li>

                                </ul>
                                <!-- /.nav -->

                            </div>
                        </div>
                    </div>
                </div>
                <!-- /.navbar -->
            </div>
            <!-- /#top -->
            <!-- .head -->
            <header class="head">
                <div class="search-bar">
                    <div class="row-fluid">
                        <div class="span12">
                            <div class="search-bar-inner">
                                <a id="menu-toggle" href="#menu" data-toggle="collapse"
                                   class="accordion-toggle btn btn-inverse visible-phone"
                                   rel="tooltip" data-placement="bottom" data-original-title="Show/Hide Menu">
                                    <i class="icon-sort"></i>
                                </a>
                                <form class="main-search">
                                    <input class="input-block-level" type="text" placeholder="Live search...">
                                    <button id="searchBtn" type="submit" class="btn btn-inverse"><i class="icon-search"></i>
                                    </button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- ."main-bar -->
                <div class="main-bar">
                    <div class="container-fluid">
                        <div class="row-fluid">
                            <div class="span12">
                                <h3><i class="icon-check-empty"></i> User Management</h3>
                            </div>
                        </div>
                        <!-- /.row-fluid -->
                    </div>
                    <!-- /.container-fluid -->
                </div>
                <!-- /.main-bar -->
            </header>
            <!-- /.head -->

            <!-- #left -->
            <div id="left">
                <!-- .user-media -->
                <div class="media user-media hidden-phone">
                    <a href="#" class="user-link">
                        <img src="../assets/img/user.gif" alt="User" class="media-object img-polaroid user-img">
                        <span class="label user-label">16</span>
                    </a>
                    <div class="media-body hidden-tablet">
                        <h5 class="media-heading"> <?php
                                    echo $result;
                                    ?></h5>
                        <ul class="unstyled user-info">
                            <li><a href="#"><?php
                            echo $result3;
                                    ?></a></li>
                            <li>Last Access : <br/>
                                <small><i class="icon-calendar"></i> <?php
                                    $sql2 = mysql_query("select max(date) as MaxDate,max(time) as MaxTime from user_session_management where user_id='$result1'", $conn);
                                    $row4 = mysql_fetch_assoc($sql2);
                                    $result4 = $row4['MaxDate'];
                                    $result5 = $row4['MaxTime'];

                                    echo $result4 . "<br />" . $result5;
                                    ?></small>
                            </li>
                        </ul>
                    </div>
                </div>
                <!-- /.user-media -->
                <!-- #menu -->
                <ul id="menu" class="unstyled accordion collapse in">
                    <li class="accordion-group">
                        <a data-parent="#menu" href="../dashboard/dashboard.php" data-toggle="collapse" class="accordion-toggle" data-target="#dashboard-nav">
                            <i ></i> Dashboard <span
                                class="label label-inverse pull-right">2</span>
                        </a>
                        <ul class="collapse" id="dashboard-nav">
                            <li><a href="#"><i class="icon-angle-right"></i> Default Style</a></li>
                            <li><a href="#"><i class="icon-angle-right"></i> Alternative Style</a></li>
                        </ul>
                    </li>
                    <li class="accordion-group">
                        <a data-parent="#menu" data-toggle="collapse" class="accordion-toggle" data-target="#error-nav">
                            <i></i> Organization <span
                                class="label label-inverse pull-right">2</span>
                        </a>
                        <ul class="collapse" id="error-nav">
                            <li><a href="../organization/company.php"><i class="icon-angle-right"></i> Organization Data</a></li>
                            <li><a href="#"><i class="icon-angle-right"></i> Other Details </a></li>

                        </ul>
                    </li>
                    <li><a href="../scope/scope.php"><i></i> Scope</a></li>
                    <li class="accordion-groups">
                        <a data-parent="#menu" data-toggle="collapse" class="accordion-toggle" data-target="#component-nav">
                            <i ></i>Asset Register <span
                                class="label label-inverse pull-right">8</span>
                        </a>
                        <ul class="collapse " id="component-nav">
                           <li><a href="../business_db/business_asset.php"><i class="icon-angle-right"></i> Business Database </a></li>
                            <li><a href="../digital_asset/digital_asset.php"><i class="icon-angle-right"></i> Digital Asset</a></li>
                            <li><a href="#"><i class="icon-angle-right"></i> Source Code</a></li>
                            <li><a href="#"><i class="icon-angle-right"></i> Software</a></li>
                            <li><a href="#"><i class="icon-angle-right"></i> Non Digital Asset</a></li>
                            <li><a href="#"><i class="icon-angle-right"></i> People Asset</a></li>
                            <li><a href="#"><i class="icon-angle-right"></i> Network Devices</a></li>
                            <li><a href="#"><i class="icon-angle-right"></i> Desktops</a></li>
                            <li><a href="#"><i class="icon-angle-right"></i> Laptops</a></li>
                            <li><a href="#"><i class="icon-angle-right"></i> Media</a></li>
                            <li><a href="#"><i class="icon-angle-right"></i> Support Utilities</a></li>

                        </ul>
                    </li>



                    <li><a href="#"><i ></i> Risk Assestment </a></li>
                    <li class="accordion-group"><a data-parent="#menu" data-toggle="collapse" class="accordion-toggle" data-target="#soa-nav" > <i></i>Statement of Applicability <span
                                class="label label-inverse pull-right">2</span> </a>
                        <ul class="collapse " id="soa-nav">
                            <li><a href="../SOA/isms.php"><i class="icon-angle-right"></i> ISMS Mandatory</a></li>
                            <li><a href="#"><i class="icon-angle-right"></i> Support Utilities</a></li>
                        </ul>
                    </li>
                    
                    <li class="accordion-group active">
                        <a data-parent="#menu" data-toggle="collapse" class="accordion-toggle" data-target="#er-nav">
                            <i></i> User Management <span
                                class="label label-inverse pull-right">2</span>
                        </a>
                        <ul class="collapse" id="er-nav">
                            <li><a onclick="create_user_registration()"><i class="icon-angle-right"></i> Create User</a></li>
                            <li><a href="../user_management/delete_user.php"><i class="icon-angle-right"></i> Edit User </a></li>

                        </ul>
                    </li>

                </ul>
                <!-- /#menu -->

            </div>
            <!-- /#left --> 

            <!-- #content -->
            <div id="content" class=""> 
                <!-- .outer -->
                <div class="container-fluid outer">
                    <div class="row-fluid"> 
                        <!-- .inner -->
                        <div class="span12 inner"> 
                            <!-- content is here -->
                            <h2>Edit User</h2>
                            <div class="demo-info" style="margin-bottom:10px">
                                <div class="demo-tip icon-tip">&nbsp;</div>
                                <div>Identify your users </div>
                            </div>
                            <table id="dg" title="Edit User" class="easyui-datagrid" style="width:auto;height:250px"
                                   url="search_result_user_type_users.php"
                                   toolbar="#toolbar" pagination="true"
                                   rownumbers="true" fitColumns="true" singleSelect="true">
                                <thead>
                                    <tr>
                                        <th field="firstname" width="15%" scope="row">First Name</th>
                                        <th field="lastname" width="50%" scope="row">Last Name</th>
                                        <th field="phone" width="10%" scope="row">Phone</th>
                                        <th field="email" width="25%" scope="row">Email</th>
                                    </tr>
                                </thead>
                            </table>
                            <div id="toolbar"> 
                                <?php if ($result3 == "Admin") { ?>
                                    <!--<a href="#" class="easyui-linkbutton" iconCls="icon-add" plain="true" onclick="newUser()"> Add New</a> -->
                                    <a href="#" class="easyui-linkbutton" iconCls="icon-edit" plain="true" onclick="editUser()">Edit</a> 
                                    <a href="#" class="easyui-linkbutton" iconCls="icon-remove" plain="true" onclick="removeUser()">Remove</a> 
                                <?php } else { ?>
                                    
                                <?php } ?>

                            </div>
                            <div id="dlg" class="easyui-dialog" style="width:400px;height:280px;padding:10px 20px"
                                 closed="true" buttons="#dlg-buttons">
                                <div class="ftitle">Edit User</div>
                                <form id="fm" method="post" novalidate>
                                    <div class="fitem">
                                        <label>First Name</label>
                                        <input name="firstname" class="easyui-validatebox" >
                                    </div>
                                    <div class="fitem">
                                        <label>Last Name</label>
                                        <input name="lastname" class="easyui-validatebox" >
                                    </div>
                                    <div class="fitem">
                                        <label>Phone</label>
                                        <input name="phone" class="easyui-validatebox" >
                                    </div>
                                    <div class="fitem">
                                        <label>Email</label>
                                        <input name="email" class="easyui-validatebox">
                                    </div>
                                </form>
                            </div>
                            <div id="dlg-buttons"> <a href="#" class="easyui-linkbutton" iconCls="icon-ok" onclick="saveUser()">Save</a> <a href="#" class="easyui-linkbutton" iconCls="icon-cancel" onclick="javascript:$('#dlg').dialog('close')">Cancel</a> </div>

                            <!-- /.inner --> 
                        </div>
                        <!-- /.row-fluid --> 
                    </div>
                    <!-- /.outer --> 
                </div>
                <!-- /#content --> 
                <!-- #push do not remove -->
                <div id="push"></div>
                <!-- /#push --> 
            </div>
            <!-- /#wrap -->

            <div class="clearfix"></div>
            <div id="footer">
                <p>2013 © Softcare Apps</p>
            </div>

            <!-- #helpModal -->
            <div id="helpModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="helpModalLabel"
                 aria-hidden="true">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">Ã—</button>
                    <h3 id="helpModalLabel"><i class="icon-external-link"></i> Help</h3>
                </div>
                <div class="modal-body">
                    <p> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. </p>
                </div>
                <div class="modal-footer">
                    <button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
                </div>
            </div>
            <!-- /#helpModal --> 

        </div>
    </body>
</html>