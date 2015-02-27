<html>
    <?php
    include 'conn.php';


    $org_id = $_GET['org_id'];
    $org = mysql_query("select * from organization where org_id='$org_id'", $conn);
    $org_result = mysql_fetch_assoc($org);

    $sql2 = "select count(*) from gap_analysis where status='2' and org_id='$org_id'";

    list($value2) = @mysql_fetch_row(mysql_query($sql2));

    $count2 = ($value2 / 118) * 100;

    $sql3 = "select count(*) from gap_analysis where status='3' and org_id='$org_id'";

    list($value3) = @mysql_fetch_row(mysql_query($sql3));


    $count3 = ($value3 / 118) * 100;

    $sql = "select count(*) from gap_analysis where status='1' and org_id='$org_id'";

    list($value) = @mysql_fetch_row(mysql_query($sql));

    $count = ((118 - ($value + $value2 + $value3)) / 118 ) * 100;
    ?>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <title><?php echo $org_result['org_name'];?> - Overview Of Implementation</title>

        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
        <script type="text/javascript">
            $(function () {
                var chart;
                $(document).ready(function() {
    	
                    // Radialize the colors
                    Highcharts.getOptions().colors = $.map(Highcharts.getOptions().colors, function(color) {
                        return {
                            radialGradient: { cx: 0.5, cy: 0.3, r: 0.7 },
                            stops: [
                                [0, color],
                                [1, Highcharts.Color(color).brighten(-0.3).get('rgb')] // darken
                            ]
                        };
                    });
		
                    // Build the chart
                    chart = new Highcharts.Chart({
                        chart: {
                            renderTo: 'container',
                            plotBackgroundColor: null,
                            plotBorderWidth: null,
                            plotShadow: false
                        },
                        title: {
                            text: '<?php echo $org_result['org_name'];?> - Overview Of Implementation'
                        },
                        tooltip: {
                            pointFormat: '{series.name}: <b>{point.percentage}%</b>',
                            percentageDecimals: 1
                        },
                        plotOptions: {
                            pie: {
                                allowPointSelect: true,
                                cursor: 'pointer',
                                dataLabels: {
                                    enabled: true,
                                    color: '#000000',
                                    connectorColor: '#000000',
                                    formatter: function() {
                                        return '<b>'+ this.point.name +'</b>: '+ this.percentage +' %';
                                    }
                                }
                            }
                        },
                        series: [{
                                type: 'pie',
                                name: 'Implementation',
                                data: [
                                   
                                    ['Partially Implemented',     <?php echo $count2; ?>],
                                    ['Not Implemented',  <?php echo $count; ?>],
                                    ['Fully Implemented',    <?php echo $count3; ?>]
                                    
                                ]
                            }]
                    });
                });
    
            });
        </script>
    </head>
    <body>
        <script src="../js/highcharts.js"></script>
        <script src="../js/modules/exporting.js"></script>

        <div id="container" style="min-width: 400px; height: 400px; margin: 0 auto"></div>

    </body>
</html>