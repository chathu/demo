<?php

$org_name = $_REQUEST['org_name'];
$address = $_REQUEST['address'];
$telephone = $_REQUEST['telephone'];
$email = $_REQUEST['email'];

include '../conn.php';
include '../session.php';

$ses_sql1 = mysql_query("select * from user_login where username='$login_session'", $conn);
$row1 = mysql_fetch_assoc($ses_sql1);
$result1 = $row1['user_id'];


$sql = "insert into organization(org_name,address,telephone,email,user_id) values('$org_name','$address','$telephone','$email','$result1')";
$result = @mysql_query($sql);
if ($result) {

    $isms = array(
        "4.1" => "The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS",
        "4.2.1 (a)" => "Define the scope and boundaries of the ISMS",
        "4.2.1 (c)" => "Define the risk assessment approach ",
        "4.2.1 (d)" => "Identify the risks",
        "4.2.1 (e)" => "Analyse and evaluate the risks",
        "4.2.21 (b)" => "Define an ISMS policy",
        "4.2.1 (f)" => "Identify and evaluate options for the treatment of risks",
        "4.2.1 (g)" => "Select control objectives and controls for the treatment of risks",
        "4.2.1 (h)" => "Obtain management approval of the proposed residual risks",
        "4.2.1 (i)" => "Obtain management authorization to implement and operate the ISMS",
        "4.2.1 (j)" => "Prepare a Statement of Applicability [see the SoA spreadsheet]",
        "4.2.2 (a)" => "Formulate a risk treatment plan",
        "4.2.2 (b)" => "Implement the risk treatment plan in order to achieve the identified control objectives",
        "4.2.2 (c)" => "Implement controls selected in 4.2.1g to meet the control objectives",
        "4.2.2 (d)" => "Define how to measure the effectiveness of the selected controls or groups of controls and specify how these measurements are to be used to assess control effectiveness to produce comparable and reproducible results (see 4.2.3c)",
        "4.2.2 (e)" => "Implement training and awareness programmes (see 5.2.2)",
        "4.2.2 (f)" => "Manage operation of the ISMS",
        "4.2.2 (g)" => "Manage resources for the ISMS (see 5.2)",
        "4.2.2 (h)" => "Implement procedures and other controls capable of enabling prompt detection of security events and response to security incidents (see 4.2.3a)",
        "4.2.3 (a)" => "Execute monitoring and reviewing procedures and other controls",
        "4.2.3 (b)" => "Undertake regular reviews of the effectiveness of the ISMS",
        "4.2.3 (c)" => "Measure the effectiveness of controls to verify that security requirements have been met.",
        "4.2.3 (d)" => "Review risk assessments at planned intervals and review the residual risks and the identified acceptable levels of risks",
        "4.2.3 (e)" => "Conduct internal ISMS audits at planned intervals (see 6)",
        "4.2.3 (f)" => "Undertake a management review of the ISMS on a regular basis (see 7.1)",
        "4.2.3 (g)" => "Update security plans to take into account the findings of monitoring and reviewing activities",
        "4.2.3 (h)" => "Record actions and events that could have an impact on the effectiveness or performance of the ISMS (see 4.3.3)",
        "4.2.4 (a)" => "Implement the identified improvements in the ISMS.",
        "4.2.4 (b)" => "Take appropriate corrective and preventive actions in accordance with 8.2 and 8.3",
        "4.2.4 (c)" => "Communicate the actions and improvements to all interested parties",
        "4.2.4 (d)" => "Ensure that the improvements achieve their intended objectives",
        "4.3.1 (a)" => "Documented statements of the ISMS policy (see 4.2.1b) and objectives",
        "4.3.1 (b)" => "Scope of the ISMS (see 4.2.1a)",
        "4.3.1 (c)" => "Procedures and controls in support of the ISMS",
        "4.3.1 (d)" => "Description of the risk assessment methodology (see 4.2.1c)",
        "4.3.1 (e)" => "Risk assessment report (see 4.2.1c to 4.2.1g)",
        "4.3.1 (f)" => "Risk treatment plan (see 4.2.2b)",
        "4.3.1 (g)" => "Procedures needed by the organization to ensure the effective planning, operation and control of its information security processes and describe how to measure the effectiveness of controls (see 4.2.3c) ",
        "4.3.1 (h)" => "Records required by this International Standard (see 4.3.3)",
        "4.3.1 (i)" => "Statement of Applicability",
        "4.3.2" => "Documents required by the ISMS shall be protected and controlled. A documented procedure shall be established to define the management actions needed to:",
        "4.3.2 (a)" => "Approve documents for adequacy prior to issue",
        "4.3.2 (b)" => "Review and update documents as necessary and re-approve documents",
        "4.3.2 (c)" => "Ensure that changes and the current revision status of documents are identified",
        "4.3.2 (d)" => "Ensure that relevant versions of applicable documents are available at points of use",
        "4.3.2 (e)" => "Ensure that documents remain legible and readily identifiable",
        "4.3.2 (f)" => "Ensure that documents are available to those who need them, and are transferred, stored and ultimately disposed of in accordance with the procedures applicable to their classification",
        "4.3.2 (g)" => "Ensure that documents of external origin are identified",
        "4.3.2 (h)" => "Ensure that the distribution of documents is controlled",
        "4.3.2 (i)" => "Prevent the unintended use of obsolete documents",
        "4.3.2 (j)" => "Apply suitable identification to documents if they are retained for any purpose",
        "4.15233" => "The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS",
        "4232.2565.1" => "Define the scope and boundaries of the ISMS",
        "454.6562.1 (b)" => "Define an ISMS policy",
        "4544.1" => "The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS",
        "4.2213.1" => "Define the scope and boundaries of the ISMS",
        "434.243.431 (b)" => "Define an ISMS policy",
        "4434.143" => "The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS",
        "443.432.1" => "Define the scope and boundaries of the ISMS",
        "443.432.431 (b)" => "Define an ISMS policy",
        "4565.6761" => "The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS",
        "476.276.761" => "Define the scope and boundaries of the ISMS",
        "40.287.01 (b)" => "Define an ISMS policy",
        "40.0187" => "The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS",
        "4.209.1" => "Define the scope and boundaries of the ISMS",
        "487.287.1 (b)" => "Define an ISMS policy",
        "487.187" => "The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS",
        "47.287.871" => "Define the scope and boundaries of the ISMS",
        "487.287.187 (b)" => "Define an ISMS policy",
        "487.871" => "The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS",
        "487.2.871" => "Define the scope and boundaries of the ISMS",
        "4.872.8781 (b)" => "Define an ISMS policy",
        "487.1" => "The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS",
        "487.2.1" => "Define the scope and boundaries of the ISMS",
        "4.2.1 (b)" => "Define an ISMS policy",
        "4.8788771" => "The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS",
        "4.872.1" => "Define the scope and boundaries of the ISMS",
        "4.287.1 (b)" => "Define an ISMS policy",
        "4.8788771" => "The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS",
        "4.72.1" => "Define the scope and boundaries of the ISMS",
        "4.782.1 (b)" => "Define an ISMS policy",
        "4.7817" => "The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS",
        "4.278.1" => "Define the scope and boundaries of the ISMS",
        "4.782.1 (b)" => "Define an ISMS policy",
        "4.875651" => "The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS",
        "4.86772.1" => "Define the scope and boundaries of the ISMS",
        "4.865672.1 (b)" => "Define an ISMS policy",
        "4.187" => "The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS",
        "4.276768.1" => "Define the scope and boundaries of the ISMS",
        "4.27676.1 (b)" => "Define an ISMS policy",
        "4.13232" => "The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS",
        "4.2433.1" => "Define the scope and boundaries of the ISMS",
        "4.26.1 (b)" => "Define an ISMS policy",
        "4.134" => "The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS",
        "4.234.1" => "Define the scope and boundaries of the ISMS",
        "4.243243.1 (b)" => "Define an ISMS policy",
        "4.1432" => "The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS",
        "4.243.1" => "Define the scope and boundaries of the ISMS",
        "4.2432.1 (b)" => "Define an ISMS policy",
        "4.343.1" => "Define the scope and boundaries of the ISMS",
        "4.434343.1 (b)" => "Define an ISMS policy",
        "4.143" => "The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS",
        "4.243.1" => "Define the scope and boundaries of the ISMS",
        "4.24343.1 (b)" => "Define an ISMS policy",
        "4.14343" => "The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS",
        "4.24343.1" => "Define the scope and boundaries of the ISMS",
        "4.2432.1 (b)" => "Define an ISMS policy",
        "4.431" => "The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS",
        "4.2342.1" => "Define the scope and boundaries of the ISMS",
        "4.24324.1 (b)" => "Define an ISMS policy",
        "4.1432432" => "The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS",
        "443.24343.1" => "Define the scope and boundaries of the ISMS",
        "4432.2432.1 (b)" => "Define an ISMS policy",
        "4.1432" => "The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS",
        "44324.2.1" => "Define the scope and boundaries of the ISMS",
        "434.23432.1 (b)" => "Define an ISMS policy",
        "444324.4321" => "The organization shall establish, implement, operate, monitor, review, maintain and improve a documented ISMS",
        "443243.2.1" => "Define the scope and boundaries of the ISMS"
    );
    $status = "";
    foreach ($isms as $x => $x_value) {

        $ra = mysql_query("select * from organization where org_name='$org_name' and address='$address' and telephone='$telephone' and email='$email' and user_id='$result1'", $conn);
        $row2 = mysql_fetch_assoc($ra);
        $org_id = $row2['org_id'];

        $sql1 = "insert into gap_analysis(ISO_clause,ISMS,org_id) values('$x','$x_value','$org_id')";
        $result2 = @mysql_query($sql1);

        if ($result2) {
            $status = "OK";
        } else {
            $status = "NO";
        }
    }
} else {
    echo json_encode(array('msg' => 'Some errors occured.'));
}

if ($status == "OK") {
    echo json_encode(array('success' => true));
} else if ($status == "NO") {
    echo json_encode(array('msg' => 'Some errors occured.'));
}
?>