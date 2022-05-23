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

mysqli_query($con, "Delete from report");


// $indicators_query = "SELECT * FROM indicators WHERE year_indicator = $Selected_Year";


$indicators_query = "SELECT indicators.idindicators , indicators.idsubactivities, indicators.Title ,indicators.year_indicator,indicators.TargetWeight,indicators.AnnualTarget,indicators.agency_commitment, indicators.division, subactivities.idsubactivities,subactivities.Title  as Sub_Act_Title, mainactivities.MFONo FROM ((indicators INNER JOIN subactivities ON indicators.idsubactivities = subactivities.idsubactivities ) INNER JOIN mainactivities ON subactivities.idMainActivities = mainactivities.idMainActivities) WHERE indicators.year_indicator = $Selected_Year AND indicators.deleted= 0";

//$query = "SELECT * FROM inspection_template ". $whereCond ; //WHERE overtime.overtimeDate BETWEEN '$startDate' AND '$endDate'



$indicators_result = mysqli_query($con, $indicators_query);
$arr = array();
if(mysqli_num_rows($indicators_result) != 0) {
	while($indicators_row = mysqli_fetch_assoc($indicators_result)) {

		$idindicators = $indicators_row["idindicators"];

		$indicators_commitment = $indicators_row["agency_commitment"];

		$Sub_Act_Title = $indicators_row["Sub_Act_Title"]; 
		
// echo $indicators_commitment;

		$division = $indicators_row["division"];
		$pap = $indicators_row["MFONo"];

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
						AND confirmation_status = 'confirmed'
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
					 (idindicators,Indicator,Sub, Accomplished,Target,AccomWeight ,TargetWeight, Percent, Slippage, year,agency_commitment,division,pap)

					VALUES
					('$idindicators','$titlseind','$Sub_Act_Title','$accVal' ,'$tarVal', '$Weight', '$TarWeight', '$Percent', '$Slippage',$Selected_Year, '$indicators_commitment','$division','$pap')";

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
