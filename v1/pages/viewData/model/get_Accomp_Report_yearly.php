<?php

date_default_timezone_set('Asia/Manila');

require_once '../../database_connections.php'; 
$data = json_decode(file_get_contents("php://input")); 

$year_start = mysqli_real_escape_string($con, $data->year_start);
$year_end = mysqli_real_escape_string($con, $data->year_end);



//echo $year_start . " : , " .  $year_end ." : , " .  $Selected_Year;

mysqli_query($con, "Delete from report");



for($i=$year_start; $i<=$year_end; $i++) {
  


// $indicators_query = "SELECT * FROM indicators WHERE year_indicator = $i";

$indicators_query = "SELECT indicators.idindicators , indicators.idsubactivities, indicators.Title ,indicators.year_indicator,indicators.TargetWeight,indicators.AnnualTarget,indicators.agency_commitment, indicators.division,subactivities.idsubactivities,subactivities.Title  as Sub_Act_Title, mainactivities.MFONo FROM ((indicators INNER JOIN subactivities ON indicators.idsubactivities = subactivities.idsubactivities ) INNER JOIN mainactivities ON subactivities.idMainActivities = mainactivities.idMainActivities) WHERE indicators.year_indicator = $i";

//$query = "SELECT * FROM inspection_template ". $whereCond ; //WHERE overtime.overtimeDate BETWEEN '$startDate' AND '$endDate'



$indicators_result = mysqli_query($con, $indicators_query);
$arr = array();
if(mysqli_num_rows($indicators_result) != 0) {
	while($indicators_row = mysqli_fetch_assoc($indicators_result)) {

		$idindicators = $indicators_row["idindicators"];

		$Sub_Act_Title = $indicators_row["Sub_Act_Title"]; 

		$titlseind =  $indicators_row['Title'];
		$indicators_commitment = $indicators_row["agency_commitment"];
		$division = $indicators_row["division"];

		$pap = $indicators_row["MFONo"];
		
		$TarWeight = $indicators_row['TargetWeight'];
		if(is_numeric($TarWeight)){
						
					$TarWeight = $TarWeight;

					}else{
						$TarWeight = 0;
					}
		//echo $idindicators;

		$accom_query = "SELECT SUM(quantity) AS accVal 
						from accomplished 
						WHERE year(dateCompleted) = $i 
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
						WHERE idindicators = '$idindicators'";
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
					 (idindicators,Indicator, Sub, agency_commitment, division, pap ,Accomplished,Target,AccomWeight ,TargetWeight, Percent, Slippage, year)

					VALUES
					('$idindicators','$titlseind','$Sub_Act_Title', '$indicators_commitment','$division','$pap','$accVal' ,'$tarVal', '$Weight', '$TarWeight', '$Percent', '$Slippage',$i)";

					 mysqli_query($con, $report_query);

					//echo $report_query;

				}
			}

  			//$arr['sarap_sa_utak'] = $new_Value;
	}
}

}//end of for loop YEAR


$report_query = "SELECT * from report";
$report_result = mysqli_query($con, $report_query);
if(mysqli_num_rows($report_result) != 0) {
	while($report_row = mysqli_fetch_assoc($report_result)) {

		$arr[] = $report_row;

	}}

//echo $target_query;
// echo $year_start . " : , " .  $year_end ." : , " .  $Selected_Year;
echo $json_info = json_encode($arr);

?>
