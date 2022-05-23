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



 $query = "SELECT accomplished.idaccomplished, 
				accomplished.idindicators, 
				accomplished.quantity,
				accomplished.user, 
				accomplished.remarks,
				accomplished.fileName,
				accomplished.dateCompleted,
				accomplished.dateEncoded,
				accomplished.confirmation_status,
				accomplished.decline_remarks,
				indicators.Title,
				indicators.idindicators  

				from accomplished JOIN indicators
				ON indicators.idindicators = accomplished.idindicators
					WHERE year(accomplished.dateCompleted) =  '$Selected_Year'
						AND accomplished.confirmation_status = 'declined'";
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