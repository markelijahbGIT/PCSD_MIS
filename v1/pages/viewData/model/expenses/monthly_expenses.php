<?php

date_default_timezone_set('Asia/Manila');

require_once '../../../database_connections_accounting.php'; 


$firstDay = mysqli_real_escape_string($con, $_POST['firstDay']);
$lastDay = mysqli_real_escape_string($con, $_POST['lastDay']);
// $Selected_Year = mysqli_real_escape_string($con, $_POST['Selected_Year']);

//echo $firstDay . " : , " .  $lastDay ." : , ";
// 
// $firstDay=date("Y-m-d",$firstDay);
// $lastDay=date("Y-m-d",$lastDay);



// $firstDay = date_format($firstDay,"Y-m-d");
// $lastDay = date_format($lastDay,"Y-m-d");



// $first_Month = date('n', strtotime($firstDay));
// $last_Month = date('n', strtotime($lastDay));

$monthF=date("m",strtotime($firstDay));

$monthL=date("m",strtotime($lastDay));



mysqli_query($con, "Delete from report");


// $indicators_query = "SELECT * FROM indicators WHERE year_indicator = $Selected_Year";


$expenses_query = "SELECT pcsds_pms.subactivities.idsubactivities,pcsds_pms.indicators.idindicators,pcsds_pms.indicators.idindicators as idIND, pcsds_pms.subactivities.Title , sum(tblexpenses.Amount) AS Expense , Month_date, Year_date, pcsds_pms.indicators.division,
	(SELECT SUM(pcsds_pms.indicators.budget) from pcsds_pms.indicators WHERE pcsds_pms.indicators.idsubactivities = pcsds_pms.subactivities.idsubactivities) as budget,
	(SELECT SUM(pcsds_pms.monthlytarget.budget) from pcsds_pms.monthlytarget WHERE pcsds_pms.monthlytarget.idindicators = idIND AND month BETWEEN $monthF AND $monthL) as m_budget

FROM ((pcsds_pms.subactivities
  JOIN 
 pcsds_accounting_is.tblexpenses ON tblexpenses.idsubactivities = subactivities.idsubactivities) 
  JOIN pcsds_pms.indicators ON pcsds_pms.subactivities.idsubactivities = pcsds_pms.indicators.idsubactivities)

 WHERE  DATE BETWEEN '$firstDay' AND '$lastDay'
 AND subactivities.deleted= 0
 GROUP BY pcsds_pms.subactivities.Title
 ";
 // echo $month;

$expenses_result = mysqli_query($con, $expenses_query);
$arr = array();
if(mysqli_num_rows($expenses_result) != 0) {
	while($expenses_row = mysqli_fetch_assoc($expenses_result)) {

		$arr[] = $expenses_row;

	}}




//echo $target_query;
echo $json_info = json_encode($arr);

?>
