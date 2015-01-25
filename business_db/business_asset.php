			<?php
include '../conn.php';

if ($_POST["selected"]!= null){
$value=$_POST["selected"];
echo "a". $_POST["selected"];
session_start();
$_SESSION["value"]=$value; // The value is stored in session , it can be used in
 $session = $_SESSION["value"];
  echo "b". $session; 

echo "c". $_POST["selected"];    }
  
  
  else 
  {session_start();
  
  echo "d".$_POST["selected"];}
  
$query="SELECT org_id, org_name FROM organization";

echo "<form method='POST' action='#'>";
/* You can add order by clause to the sql statement if the names are to be displayed in alphabetical order */
$result = mysql_query ($query);
echo "<select name='selected' value=''></option>";
// printing the list box select command
while($nt=mysql_fetch_array($result)){//Array or records stored in $nt
echo "<option value=$nt[org_id]>$nt[org_name]</option>";
/* Option values are added by looping through the array */
}
echo "</select>";// Closing of list box 
                     // subsequent pages
   echo "<input type='submit' value='Submit'>";
   echo "</form>"
?>

<!DOCTYPE html>
<!--[if lt IE 7]>       <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>          <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>          <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">

<!--<![endif]-->
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
			$('#dlg').dialog('open').dialog('setTitle','New Asset');
			$('#fm').form('clear');
			url = 'save_user.php';
		}
		function editUser(){
			var row = $('#dg').datagrid('getSelected');
			if (row){
				$('#dlg').dialog('open').dialog('setTitle','Edit Asset');
				$('#fm').form('load',row);
				url = 'update_user.php?id='+row.id;
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
				$.messager.confirm('Confirm','Are you sure you want to remove this asset?',function(r){
					if (r){
						$.post('remove_user.php',{id:row.id},function(result){
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
<!-- #wrap -->
<div id="wrap"> 
  <!-- #top -->
  <div id="top"> 
    <!-- .navbar -->
    <div class="navbar navbar-inverse navbar-static-top">
      <div class="navbar-inner">
        <div class="container-fluid"> <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse"> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </a>
          <div class="brand">
            <div class="sc_logo"><a href="index.html"></a> </div>
          </div>
          <!-- .topnav -->
          <div class="btn-toolbar topnav">
            <div class="btn-group"> <a id="changeSidebarPos" class="btn btn-success" rel="tooltip"
                                    data-original-title="Show / Hide Sidebar" data-placement="bottom"> <i class="icon-resize-horizontal"></i> </a> </div>
            <div class="btn-group"> <a class="btn btn-inverse" rel="tooltip" data-original-title="E-mail" data-placement="bottom"> <i class="icon-envelope"></i> <span class="label label-warning">5</span> </a> <a class="btn btn-inverse" rel="tooltip" href="#" data-original-title="Messages"
                                       data-placement="bottom"> <i class="icon-comments"></i> <span class="label label-important">4</span> </a> </div>
            <div class="btn-group"> <a class="btn btn-inverse" rel="tooltip" href="#" data-original-title="Document"
                                       data-placement="bottom"> <i class="icon-file"></i> </a> <a href="#helpModal" class="btn btn-inverse" rel="tooltip" data-placement="bottom"
                                       data-original-title="Help" data-toggle="modal"> <i class="icon-question-sign"></i> </a> </div>
            <div class="btn-group"> <a class="btn btn-inverse" data-placement="bottom" data-original-title="Logout" rel="tooltip"
                                       href="login.html"><i class="icon-off"></i></a></div>
									   
          </div>
          <!-- /.topnav -->
          <div class="nav-collapse collapse"> 
            <!-- .nav -->
            <ul class="nav">
              <li><a href="#">Dashboard</a></li>
              <li><a href="#">Tables</a></li>
              <li><a href="#">File Manager</a></li>
              <li class="dropdown "> <a data-toggle="dropdown" class="dropdown-toggle" href="#"> Form Elements <b class="caret"></b> </a>
                <ul class="dropdown-menu">
                  <li><a href="form-general.html">General</a></li>
                  <li><a href="form-validation.html">Validation</a></li>
                  <li><a href="form-wysiwyg.html">WYSIWYG</a></li>
                  <li><a href="form-wizard.html">Wizard &amp; File Upload</a></li>
                </ul>
              </li>
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
          <div class="search-bar-inner"> <a id="menu-toggle" href="#menu" data-toggle="collapse"
                                   class="accordion-toggle btn btn-inverse visible-phone"
                                   rel="tooltip" data-placement="bottom" data-original-title="Show/Hide Menu"> <i class="icon-sort"></i> </a>
            <form class="main-search">
              <input class="input-block-level" type="text" placeholder="Live search...">
              <button id="searchBtn" type="submit" class="btn btn-inverse"><i class="icon-search"></i> </button>
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
            <h3><i class="icon-check-empty"></i> Asset Register</h3>
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
    <div class="media user-media hidden-phone"> <a href="blank.html" class="user-link"> <img src="../assets/img/user.gif" alt="User" class="media-object img-polaroid user-img"> <span class="label user-label">16</span> </a>
      <div class="media-body hidden-tablet">
        <h5 class="media-heading">Archie</h5>
        <ul class="unstyled user-info">
          <li><a href="#">Administrator</a></li>
          <li>Last Access : <br/>
            <small><i class="icon-calendar"></i> 16 Mar 16:32</small> </li>
        </ul>
      </div>
    </div>
    <!-- /.user-media --> 
    <!-- #menu -->
    <ul id="menu" class="unstyled accordion collapse in">
      <li class="accordion-group "> <a data-parent="#menu" data-toggle="collapse" class="accordion-toggle" data-target="#dashboard-nav"> <i class="icon-dashboard icon-large"></i> Dashboard <span
                                class="label label-inverse pull-right">2</span> </a>
        <ul class="collapse" id="dashboard-nav">
          <li><a href="../dashboard/dashboard.php"><i class="icon-angle-right"></i> Main</a></li>
          <li><a href="#"><i class="icon-angle-right"></i> Alternative Style</a></li>
        </ul>
      </li>
      <li><a href="../scope/scope.php"><i class="icon-table icon-large"></i> Scope</a></li>
      <li class="accordion-group active"> <a data-parent="#menu" data-toggle="collapse" class="accordion-toggle" data-target="#component-nav"> <i class="icon-tasks icon-large"></i>Asset Register <span
                                class="label label-inverse pull-right">8</span> </a>
        <ul class="collapse " id="component-nav">
          <li><a href="#"><i class="icon-angle-right"></i> Business Database </a></li>
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
      <li><a href="#"><i class="icon-file icon-large"></i> Risk Assestment </a></li>
      <li class="accordion-group"><a data-parent="#menu" data-toggle="collapse" class="accordion-toggle" data-target="#soa-nav" > <i class="icon-tasks icon-large"></i>Statement of Applicability <span
                                class="label label-inverse pull-right">2</span> </a>
        <ul class="collapse " id="soa-nav">
          <li><a href="../SOA/isms.php"><i class="icon-angle-right"></i> ISMS Mandatory</a></li>
          <li><a href="#"><i class="icon-angle-right"></i> Support Utilities</a></li>
        </ul>
      </li>
      <li class="accordion-group "> <a data-parent="#menu" data-toggle="collapse" class="accordion-toggle" data-target="#error-nav"> <i class="icon-warning-sign icon-large"></i> Oraganization <span
                                class="label label-inverse pull-right">2</span> </a>
        <ul class="collapse" id="error-nav">
          <li><a href="../organization/company.php"><i class="icon-angle-right"></i> Organisation Details</a></li>
          <li><a href="#"><i class="icon-angle-right"></i> Other Details </a></li>
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
          
          <h2>Business Databases</h2>
          <div class="demo-info" style="margin-bottom:10px">
            <div class="demo-tip icon-tip">&nbsp;</div>
            <div>List of Business Database and Valuation of Business Databases</div>
          </div>
          <div class="sortableTable">
            <div class="scrollable">
              <table id="dg" title="Business Asset" class="easyui-datagrid table table-bordered sortableTable responsive" style="width:auto;height:250px"
			url="get_users.php"
			toolbar="#toolbar" pagination="true"
			rownumbers="true" fitColumns="true" singleSelect="true">
                <thead style="float: left; ">
                  <tr >
                    <th field="AssetID" width="50">Asset ID</th>
                    <th field="Owner" width="50">Owner</th>
                    <th field="Custodian" width="50">Custodian</th>
                    <th field="Users" width="50">Users</th>
                    <th field="Location" width="50">Location</th>
                    <th field="SysAdmin" width="50">SysAdmin</th>
                    <th field="LifeCycle" width="50">LifeCycle</th>
                    <th field="BusinessRequirements" width="50">Business Requirements</th>
                    <th field="TechnicalContact" width="50">Technical Contact</th>
                    <th field="Vendor" width="50">Vendor</th>
                    <th field="ExpectedLife" width="50">Expected Life</th>
                    <th field="ExpiredLife" width="50">ExpiredLife</th>
                    <th field="MaintenanceStatus" width="50">Maintenance Status</th>
                    <th field="Purpose" width="50">Purpose</th>
                    <th field="Dependency" width="50">Dependency</th>
                    <th field="BackupSchedule" width="50">Backup Schedule</th>
                    <th field="BackupLocation" width="50">Backup Location</th>
                    <th field="ConfidentialityRequirements" width="50">Confidentiality Requirements</th>
                    <th field="IntegrityRequirements" width="50">Integrity Requirements</th>
                    <th field="AvailabilityRequirements" width="50">Availability Requirements</th>
                  </tr>
                </thead>
              </table>
            </div>
          </div>
          <div id="toolbar"> <a href="#" class="easyui-linkbutton" iconCls="icon-add" plain="true" onclick="newUser()">New Assest</a> <a href="#" class="easyui-linkbutton" iconCls="icon-edit" plain="true" onclick="editUser()">Edit Asset</a> <a href="#" class="easyui-linkbutton" iconCls="icon-remove" plain="true" onclick="removeUser()">Remove Asset</a> </div>
          <div id="dlg" class="easyui-dialog" style="width:400px;height:280px;padding:10px 20px; "
			closed="true" buttons="#dlg-buttons">
            <div class="ftitle">Asset Information</div>
            <form id="fm" method="post" novalidate>
              <div class="fitem">
                <label>Asset ID</label>
                <input name="AssetID">
              </div>
              <div class="fitem">
                <label>Owner</label>
                <input name="Owner">
              </div>
              <div class="fitem">
                <label>Custodian</label>
                <input name="Custodian">
              </div>
              <div class="fitem">
                <label>Users</label>
                <input name="Users">
              </div>
              <div class="fitem">
                <label>Location</label>
                <input name="Location">
              </div>
              <div class="fitem">
                <label>Sys Admin</label>
                <input name="SysAdmin">
              </div>
              <div class="fitem">
                <label>Life Cycle</label>
                <input name="LifeCycle">
              </div>
              <div class="fitem">
                <label>Business Requirements</label>
                <input name="BusinessRequirements">
              </div>
              <div class="fitem">
                <label>Technical Contact</label>
                <input name="TechnicalContact">
              </div>
              <div class="fitem">
                <label>Vendor</label>
                <input name="Vendor">
              </div>
              <div class="fitem">
                <label>Expected Life</label>
                <input name="ExpectedLife">
              </div>
              <div class="fitem">
                <label>Expired Life</label>
                <input name="ExpiredLife">
              </div>
              <div class="fitem">
                <label>Maintenance Status</label>
                <input name="MaintenanceStatus">
              </div>
              <div class="fitem">
                <label>Purpose</label>
                <input name="Purpose">
              </div>
              <div class="fitem">
                <label>Dependency</label>
                <input name="Dependency">
              </div>
              <div class="fitem">
                <label>Backup Schedule</label>
                <input name="BackupSchedule">
              </div>
              <div class="fitem">
                <label>Backup Location</label>
                <input name="BackupLocation">
              </div>
              <div class="fitem">
                <label>Confidentiality Requirements</label>
                <input name="ConfidentialityRequirements">
              </div>
              <div class="fitem">
                <label>Integrity Requirements</label>
                <input name="IntegrityRequirements">
              </div>
              <div class="fitem">
                <label>Availability Requirements</label>
                <input name="AvailabilityRequirements">
              </div>
            </form>
          </div>
          <div id="dlg-buttons"> <a href="#" class="easyui-linkbutton" iconCls="icon-ok" onclick="saveUser()">Save</a> <a href="#" class="easyui-linkbutton" iconCls="icon-cancel" onclick="javascript:$('#dlg').dialog('close')">Cancel</a> </div>
        </div>
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

</body>
</html>
