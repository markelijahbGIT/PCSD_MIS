<?php

date_default_timezone_set('Asia/Manila');

require_once '../../database_connections.php'; 
$data = json_decode(file_get_contents("php://input")); 

$firstDay = mysqli_real_escape_string($con, $data->firstDay);
$lastDay = mysqli_real_escape_string($con, $data->lastDay);

$firstDay =date('Y-m-d H:i:s', strtotime($firstDay));
$lastDay =date('Y-m-d H:i:s', strtotime($lastDay)); 

$first_Month = date('n', strtotime($firstDay));
$last_Month = date('n', strtotime($lastDay));

$Selected_Year = mysqli_real_escape_string($con, $data->Selected_Year);

//echo $firstDay . " : , " .  $lastDay ." : , " .  $Selected_Year;


$indicators_query = "SELECT * FROM indicators WHERE year_indicator = $Selected_Year";

//$query = "SELECT * FROM inspection_template ". $whereCond ; //WHERE overtime.overtimeDate BETWEEN '$startDate' AND '$endDate'

mysqli_query($con, "Delete from report");

$indicators_result = mysqli_query($con, $indicators_query);
$arr = array();
if(mysqli_num_rows($indicators_result) != 0) {
	while($indicators_row = mysqli_fetch_assoc($indicators_result)) {

		$idindicators = $indicators_row["idindicators"];

		$titlseind =  $indicators_row['Title'];
		
		$TarWeight = $indicators_row['TargetWeight'];
		if(is_numeric($TarWeight)){
						
					$TarWeight = $TarWeight;

					}else{
						$TarWeight = 0;
					}
		//echo $idindicators;

		$accom_query = "SELECT SUM(quantity) AS accVal 
						from accomplished 
						WHERE dateCompleted BETWEEN '$firstDay' AND '$lastDay' 
						AND idindicators = '$idindicators'";
		$accom_result = mysqli_query($con, $accom_query);
			if(mysqli_num_rows($accom_result) != 0) {
				while($accom_row = mysqli_fetch_assoc($accom_result)) {
					$accVal =  $accom_row['accVal'];

					//echo $accVal;

				}
			}

		$target_query = "SELECT SUM(target) AS tarVal 
						from monthlytarget 
						WHERE month BETWEEN $first_Month AND $last_Month 
						and idindicators = '$idindicators'";
		$target_result = mysqli_query($con, $target_query);
			if(mysqli_num_rows($target_result) != 0) {
				while($target_row = mysqli_fetch_assoc($target_result)) {
					$tarVal =  $target_row['tarVal'];

					if(is_numeric($tarVal)){
						if($tarVal != 0){
								$Weight = ($accVal / $tarVal)*100;

							}else{
								$Weight = 0;
							}

					}else{
						$Weight = 0;
					}


					

										
					$Percent = number_format((float)$Weight, 2, '.', '');
					
					$Slippage =number_format((float)  $Percent - 100, 2, '.', '');
					
					$Weight = ($Weight*$TarWeight)/100;
					$Weight = number_format((float)$Weight, 2, '.', '');
					
					$report_query="INSERT INTO report  
					 (idindicators,Indicator, Accomplished,Target,AccomWeight ,TargetWeight, Percent, Slippage)

					VALUES
					('$idindicators','$titlseind','$accVal' ,'$tarVal', '$Weight', '$TarWeight', '$Percent', '$Slippage')";

					 mysqli_query($con, $report_query);


					//echo $report_query;

				}
			}


  			//$arr['sarap_sa_utak'] = $new_Value;
			
		
	}
}


$report_query = "SELECT * from report";
$report_result = mysqli_query($con, $report_query);
if(mysqli_num_rows($report_result) != 0) {
	while($report_row = mysqli_fetch_assoc($report_result)) {

		$arr[] = $report_row;

	}}




//echo $target_query;
echo $json_info = json_encode($arr);

?>
