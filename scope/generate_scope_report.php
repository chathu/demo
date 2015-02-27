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

    <link rel="stylesheet" href="style.css"/>

    <link href="../css/easyui.css" rel="stylesheet" type="text/css">
    <link href="../css/demo.css"  rel="stylesheet" type="text/css">
    <link href="../css/icon.css"  rel="stylesheet" type="text/css">

    <script type="text/javascript" src="../assets/js/vendor/modernizr-2.6.2-respond-1.1.0.min.js"></script>

    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="../assets/js/vendor/jquery-1.10.1.min.js"><\/script>')</script>        
    <script type="text/javascript" src="../assets/js/vendor/bootstrap.min.js"></script>        

    <script type="text/javascript" src="../assets/js/style-switcher.js"></script>
</head>
<body>
    <?php
    include '../conn.php';
    $org_id = $_GET['org_id'];


    $query = "SELECT * FROM scope where org_id='$org_id' and status='Include' ";
    $result = mysql_query($query);
    ?>
    <div id="iddiv">
        
        <center>
            <h3> Include </h3>
            <table style="width: 700px;" border="1">

                <tr>
                    <th>Business Function</th>
                    <th>Purpose</th>
                    <th>Reason</th>
                </tr>

                <?php
                while ($nt = mysql_fetch_array($result)) {
                    ?>

                    <tr>
                        <td> <?php echo $nt['business_function'] ?> </td>
                        <td> <?php echo $nt['purpose'] ?> </td>
                        <td> <?php echo $nt['reson'] ?> </td>

                    </tr>

                    <?php
                }
                ?>

            </table>

            <h3>Exclude</h3>

            <table style="width: 700px;" border="1">

                <tr>
                    <th>Business Function</th>
                    <th>Purpose</th>
                    <th>Reason</th>
                </tr>

                <?php
                $org_id = $_GET['org_id'];
                $query = "SELECT * FROM scope where org_id='$org_id' and status='Exclude' ";
                $result = mysql_query($query);

                while ($nt = mysql_fetch_array($result)) {
                    ?>

                    <tr>
                        <td> <?php echo $nt['business_function'] ?> </td>
                        <td> <?php echo $nt['purpose'] ?> </td>
                        <td> <?php echo $nt['reson'] ?> </td>

                    </tr>

                    <?php
                }
                ?>

            </table>
        </center>
    </div>
</body>