<?php

date_default_timezone_set('Asia/Manila');

require_once '../../../database_connections_accounting.php'; 


$firstDay = mysqli_real_escape_string($con, $_POST['year_start']);


$lastDay = mysqli_real_escape_string($con, $_POST['year_end']);

$firstDay = date('Y-m-d', strtotime($firstDay.'-01-01'));

$lastDay =date('Y-m-d', strtotime($lastDay.'-12-31')); 
// echo $firstDay;



//$Selected_Year = mysqli_real_escape_string($con, $data->Selected_Year);

//echo $firstDay . " : , " .  $lastDay ." : , " .  $Selected_Year;


$expenses_query = "SELECT pcsds_pms.subactivities.idsubactivities,pcsds_pms.indicators.idindicators, pcsds_pms.subactivities.Title , sum(tblexpenses.Amount) AS Expense , Month_date, Year_date, pcsds_pms.indicators.division,
	(SELECT SUM(pcsds_pms.indicators.budget) from pcsds_pms.indicators WHERE pcsds_pms.indicators.idsubactivities = pcsds_pms.subactivities.idsubactivities) as budget

FROM ((pcsds_pms.subactivities
  JOIN 
 pcsds_accounting_is.tblexpenses ON tblexpenses.idsubactivities = subactivities.idsubactivities) 
  JOIN pcsds_pms.indicators ON pcsds_pms.subactivities.idsubactivities = pcsds_pms.indicators.idsubactivities)
 WHERE  DATE BETWEEN '$firstDay' AND '$lastDay'
 AND subactivities.deleted= 0
 GROUP BY pcsds_pms.subactivities.Title
 ";
 // echo $expenses_query;

$expenses_result = mysqli_query($con, $expenses_query);
$arr = array();
if(mysqli_num_rows($expenses_result) != 0) {
	while($expenses_row = mysqli_fetch_assoc($expenses_result)) {

		$arr[] = $expenses_row;

	}}

//echo $target_query;
echo $json_info = json_encode($arr);
//ECHO $expenses_query;

?>
