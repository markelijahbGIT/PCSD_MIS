<?php

require_once '../../database_connections.php'; 
require_once '../../../../../rest-api-authentication/api/validate_token_function.php';

$validate_response =  json_decode(validateToken($key,$_COOKIE['jwtPHP']));

if($validate_response->message == "Access granted."){
	if($validate_response->data->user_level == "MIS"){

$data = json_decode(file_get_contents("php://input")); 

//$startDate = mysqli_real_escape_string($con, $data->startDate);
 //$Selected_Year = mysql_real_escape_string($_POST['Selected_Year']);
 $Selected_Year = mysqli_real_escape_string($con, $data->Selected_Year);



 if(isset($Selected_Year)){

 	// $query = "SELECT *
		// 		FROM indicators
		// 		WHERE year_indicator = $Selected_Year"; 

 	$query = "SELECT indicators.idindicators , indicators.idsubactivities, indicators.Title ,indicators.year_indicator,indicators.TargetWeight,indicators.budget,indicators.AnnualTarget,indicators.agency_commitment, indicators.division,subactivities.idsubactivities ,mainactivities.Title AS Main_Activity, subactivities.Title AS Sub_Activity, mainactivities.MFONo FROM ((indicators INNER JOIN subactivities ON indicators.idsubactivities = subactivities.idsubactivities ) INNER JOIN mainactivities ON subactivities.idMainActivities = mainactivities.idMainActivities) WHERE indicators.year_indicator = $Selected_Year AND indicators.deleted= 0"; 
 	

 }else{
 	// $query = "SELECT *
		// 		FROM indicators
		// 		";

 	$query = "SELECT indicators.idindicators , indicators.idsubactivities, indicators.Title ,indicators.year_indicator,indicators.TargetWeight,indicators.AnnualTarget,indicators.agency_commitment, indicators.division,subactivities.idsubactivities,mainactivities.Title AS Main_Activity, subactivities.Title AS Sub_Activity, mainactivities.MFONo FROM ((indicators INNER JOIN subactivities ON indicators.idsubactivities = subactivities.idsubactivities ) INNER JOIN mainactivities ON subactivities.idMainActivities = mainactivities.idMainActivities) WHERE indicators.deleted= 0"; 
 }
 //echo $query;

	// WHERE job_order.jobStatus = 'Pending' AND jobCompletionDate is Null
//"SELECT * FROM job_order WHERE jobStatus = 'Pending' AND jobCompletionDate is Null"; //WHERE overtime.overtimeDate BETWEEN '$startDate' AND '$endDate'
$result = mysqli_query($con, $query);
$arr = array();
if(mysqli_num_rows($result) != 0) {
	while($row = mysqli_fetch_assoc($result)) {
			$arr[] = $row;

			
			

	}
}

echo $json_info = json_encode($arr);

}
}
?>