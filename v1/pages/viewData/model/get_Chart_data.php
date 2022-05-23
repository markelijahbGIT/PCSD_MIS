<?php

date_default_timezone_set('Asia/Manila');

require_once '../../database_connections.php'; 


$report_query = "SELECT  SUM(Accomplished) as Accomplished, year, SUM(Target) as Target
			FROM `report` 
			GROUP BY year";
$report_result = mysqli_query($con, $report_query);
if(mysqli_num_rows($report_result) != 0) {
	while($report_row = mysqli_fetch_assoc($report_result)) {

		$arr[] = $report_row;

	}}




//echo $target_query;
echo $json_info = json_encode($arr);
?>