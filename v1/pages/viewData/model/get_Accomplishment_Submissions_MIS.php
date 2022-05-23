<?php

date_default_timezone_set('Asia/Manila');

require_once '../../database_connections.php'; 
require_once '../../../../../rest-api-authentication/api/validate_token_function.php';
$validate_response =  json_decode(validateToken($key,$_COOKIE['jwtPHP']));
if($validate_response->message == "Access granted."){

	$user_Div = $validate_response->data->user_division;
	$data = json_decode(file_get_contents("php://input")); 
	$record_id = $data->accomp_id;

	if($validate_response->data->user_level == "MIS"){
		
		// $notifications_id = $data->notifications_id;
		// echo $record_id;
		$q_WHERE = " WHERE accomplished.idaccomplished = $record_id";
	}else{
		$q_WHERE = " WHERE indicators.division = '$user_Div' AND accomplished.idaccomplished = $record_id ";
	}
}
//echo $firstDay . " : , " .  $lastDay ." : , " .  $Selected_Year;


$query = "SELECT accomplished.idaccomplished, 
				accomplished.idindicators, 
				accomplished.quantity,
				accomplished.user, 
				accomplished.remarks,
				accomplished.fileName,
				accomplished.dateCompleted,
				accomplished.dateEncoded,
				accomplished.confirmation_status,
				indicators.Title,
				indicators.division,
				indicators.idindicators  

				from accomplished JOIN indicators
				ON indicators.idindicators = accomplished.idindicators
					$q_WHERE ";



$result = mysqli_query($con, $query);
$arr = array();
if(mysqli_num_rows($result) != 0) {
	while($row = mysqli_fetch_assoc($result)) {

		$arr[] = $row;

	}}




//echo $query;
echo $json_info = json_encode($arr);

?>
