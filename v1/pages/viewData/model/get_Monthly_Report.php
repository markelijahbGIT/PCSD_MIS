<?php

date_default_timezone_set('Asia/Manila');

require_once '../../database_connections.php'; 

$data = json_decode(file_get_contents("php://input")); 

$Selected_Year = mysqli_real_escape_string($con, $data->Selected_Year);


mysqli_query($con, "Delete from report_monthly");

$target_query = "
INSERT INTO report_monthly (Target,month)

SELECT SUM(target) as Targets, monthlytarget.month as Month  FROM indicators join monthlytarget 

ON

monthlytarget.idindicators = indicators.idindicators

WHERE 
monthlytarget.month BETWEEN 1 AND 12
AND
indicators.year_indicator = $Selected_Year

group by monthlytarget.month";


mysqli_query($con, $target_query);
$arr = array();

$accomp_query = "SELECT sum(quantity) as Accomplished, month(dateCompleted) as Month 
FROM `accomplished` 
where year(dateCompleted) = $Selected_Year
group by month(dateCompleted)";

$result = mysqli_query($con, $accomp_query);
if(mysqli_num_rows($result) != 0) {
	while($report_row = mysqli_fetch_assoc($result)) {

		$Accomplished = $report_row['Accomplished'];
		$Month =  $report_row['Month'];

		$update_query = "UPDATE report_monthly SET 
							Accomplished = $Accomplished
						WHERE month = $Month";

						mysqli_query($con, $update_query);
	}}

	$chart_query = "SELECT Accomplished, Target, month
					FROM report_monthly
					";

$result = mysqli_query($con, $chart_query);
if(mysqli_num_rows($result) != 0) {
	while($report_row = mysqli_fetch_assoc($result)) {

		$arr[] = $report_row;
	}}



	


echo $json_info = json_encode($arr);





?>