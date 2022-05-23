<?php
// Connecting to database as mysqli_connect("hostname", "username", "password", "database name");
//$con = mysqli_connect("localhost", "root", "itunit7611", "pcsds_pms_luigi");
require_once '../database_connections.php';

// //Check database
// if ($con->connect_error) {
//     die("Connection failed: " . $con->connect_error);
    
// }
// else{
//     echo "Connected successfully";
// }

 // $query = "SELECT sum(Amount) FROM tblexpenses WHERE Year_Date = 2020 and idsubactivities = 104";

$query = "SELECT  pcsds_pms_luigi.subactivities.idsubactivities, pcsds_pms_luigi.indicators.idindicators, pcsds_pms_luigi.subactivities.Title , sum(tblexpenses.Amount) AS Expense , Month_date, Year_date, pcsds_pms_luigi.indicators.division

FROM ((pcsds_pms_luigi.subactivities
 LEFT JOIN 
 pcsds_accounting_is.tblexpenses ON tblexpenses.idsubactivities = subactivities.idsubactivities) 
 left JOIN pcsds_pms_luigi.indicators ON pcsds_pms_luigi.subactivities.idsubactivities = pcsds_pms_luigi.indicators.idsubactivities)
 WHERE  Year_Date = 2020
 GROUP BY pcsds_pms_luigi.subactivities.Title";

//  "SELECT  pcsds_pms_luigi.subactivities.idsubactivities, pcsds_pms_luigi.indicators.idindicators, pcsds_pms_luigi.subactivities.Title , sum(tblexpenses.Amount) AS Expense , Month_date, Year_date, pcsds_pms_luigi.indicators.division

// FROM ((pcsds_pms_luigi.subactivities
//  LEFT JOIN 
//  pcsds_accounting_is.tblexpenses ON tblexpenses.idsubactivities = subactivities.idsubactivities) 
//  left JOIN pcsds_pms_luigi.indicators ON pcsds_pms_luigi.subactivities.idsubactivities = pcsds_pms_luigi.indicators.idsubactivities)
//  WHERE Month_date = 1 AND Year_Date = 2020";


//  SELECT  pcsds_pms_luigi.subactivities.Title , sum(tblexpenses.Amount) AS Expense , Month_date, Year_date
// FROM pcsds_pms_luigi.subactivities
//  LEFT JOIN 
//  pcsds_accounting_is.tblexpenses ON tblexpenses.idsubactivities = subactivities.idsubactivities 
//  WHERE Month_date = 1 AND Year_Date = 2020



// ObrNo,Amount, NAME
$result = mysqli_query($con,$query);


$arr = array();
if(mysqli_num_rows($result) != 0) {
	while($row = mysqli_fetch_assoc($result)) {
			$arr[] = $row;
			//echo $row;
			//echo $json_info = html_entity_decode(json_encode($row)) ; 	

	}
}
echo $json_info = json_encode($arr);


?>