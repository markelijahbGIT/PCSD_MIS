<?php
// Connecting to database as mysqli_connect("hostname", "username", "password", "database name");
//$con = mysqli_connect("localhost", "root", "itunit7611", "pcsds_accounting_is");
$con = mysqli_connect("localhost", "mis", "@pcsdpms92", "pcsds_accounting_is");

// //Check database
// if ($con->connect_error) {
//     die("Connection failed: " . $con->connect_error);
    
// }
// else{
//     echo "Connected successfully";
// }

 // $query = "SELECT sum(Amount) FROM tblexpenses WHERE Year_Date = 2020 and idsubactivities = 104";



// $query = "SELECT  pcsds_pms.subactivities.idsubactivities, pcsds_pms.indicators.idindicators, pcsds_pms.subactivities.Title , sum(tblexpenses.Amount) AS Expense , Month_date, Year_date, pcsds_pms.indicators.division

// FROM ((pcsds_pms.subactivities
//  LEFT JOIN 
//  pcsds_accounting_is.tblexpenses ON tblexpenses.idsubactivities = subactivities.idsubactivities) 
//  left JOIN pcsds_pms.indicators ON pcsds_pms.subactivities.idsubactivities = pcsds_pms.indicators.idsubactivities)
//  WHERE  Year_Date = 2020
//  GROUP BY pcsds_pms.subactivities.Title";

//  // Month_date = 1 AND


// //  SELECT  pcsds_pms.subactivities.Title , sum(tblexpenses.Amount) AS Expense , Month_date, Year_date
// // FROM pcsds_pms.subactivities
// //  LEFT JOIN 
// //  pcsds_accounting_is.tblexpenses ON tblexpenses.idsubactivities = subactivities.idsubactivities 
// //  WHERE Month_date = 1 AND Year_Date = 2020



// // ObrNo,Amount, NAME
// $result = mysqli_query($con,$query);


// $arr = array();
// if(mysqli_num_rows($result) != 0) {
// 	while($row = mysqli_fetch_assoc($result)) {
// 			$arr[] = $row;
// 			//echo $row;
// 			//echo $json_info = html_entity_decode(json_encode($row)) ; 	

// 	}
// }
// echo $json_info = json_encode($arr);


?>