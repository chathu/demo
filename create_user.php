<!DOCTYPE html>
<!--[if lt IE 7]>       <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>          <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>          <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->  <html class="no-js"> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>Create User</title>
        <meta name="description" content="Softcare Apps, ISO 27001">
        <meta name="viewport" content="width=device-width">
        <link type="text/css" rel="stylesheet" href="assets/css/bootstrap.min.css"/>
        <link type="text/css" rel="stylesheet" href="assets/css/bootstrap-responsive.min.css"/>
        <link type="text/css" rel="stylesheet" href="assets/Font-awesome/css/font-awesome.min.css"/>
        <link type="text/css" rel="stylesheet" href="assets/css/style.css"/>

        <link rel="stylesheet" href="assets/css/theme.css">

        <link rel="stylesheet" href="style.css"/>

        <link href="css/easyui.css" rel="stylesheet" type="text/css">
        <link href="css/demo.css"  rel="stylesheet" type="text/css">
        <link href="css/icon.css"  rel="stylesheet" type="text/css">

        <script type="text/javascript" src="assets/js/vendor/modernizr-2.6.2-respond-1.1.0.min.js"></script>

        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>
        <script>window.jQuery || document.write('<script src="assets/js/vendor/jquery-1.10.1.min.js"><\/script>')</script>        
        <script type="text/javascript" src="assets/js/vendor/bootstrap.min.js"></script>        




        <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
        <!--[if lt IE 9]>
        <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
        <!--[if IE 7]>
        <link type="text/css" rel="stylesheet" href="../assets/Font-awesome/css/font-awesome-ie7.min.css"/>
        <![endif]-->


        <!-- from my works -->





        <!-- end of from my works -->

    </head>
    <body>
<?php 
include 'DB.php';

?>

        <!-- .outer -->
        <div class="container-fluid outer">
            <div class="row-fluid">
                <!-- .inner -->
                <div class="span9 inner">
                    <!-- content is here -->
                    <h4>User Registration</h4>
                    <br />
                    <table>
                        <tr>
                            <td>User Type</td>
                            <td>:</td>
                            <td><select id="user_type">
                                    <?php
                                    $result = mysqli_query($con, "SELECT * FROM user_types");
                                    
                                    while ($row = mysqli_fetch_array($result)) {
                                        ?>
                                    <option value="<?php echo $row['user_type_id']; ?>"><?php echo $row['user_type'] ; ?></option>

                                    <?php }
                                    
                                    mysqli_close($con);
                                    ?>    
                                </select>
                            </td>
                        </tr>
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
                            <td><input type="text" id="username" name="username" /></td>
                        </tr>

                        <tr>
                            <td>Password</td>
                            <td>:</td>
                            <td><input type="password" onkeyup="check_password()" id="new_password" name="new_password" /></td>
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
                            <td><input name="save_user" class="btn btn-metis-1" id="save_user" type="button" value="Save User"  onclick="assign_user()"/></td>
                        </tr>
                    </table>
                    <br />

                    <div id="result_save_user"  style="color: red;">

                    </div>

                    <br />
                    



                </div>

                <!-- /.row-fluid -->
            </div>
            <!-- /.outer -->
        </div>


    </body>
</html>