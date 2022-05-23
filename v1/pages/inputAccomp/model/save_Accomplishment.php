<?php 
// session_start();
// Including database connections
require_once '../../database_connections.php';
require_once '../../audit_trail.php';
require_once '../../notify.php';
// Fetching and decoding the inserted data
$data = json_decode(file_get_contents("php://input")); 
// Escaping special characters from submitting data & storing in new variables.
//$myJSON = json_encode($data->items);
date_default_timezone_set('Asia/Manila');

$encodeDate = date("Y-m-d H:i:s");

require_once '../../../../../rest-api-authentication/api/validate_token_function.php';
$validate_response =  json_decode(validateToken($key,$_COOKIE['jwtPHP']));
// echo "response ".$validate_response->message;
if($validate_response->message == "Access granted."){
	
$userID = $validate_response->data->id;
$u_lvl = $validate_response->data->user_level;
$u_div = $validate_response->data->user_division;


$quant = mysqli_real_escape_string($con, $data->Quantity);
$indID = mysqli_real_escape_string($con, $data->Selected_Activity_ID);
$dateCom = mysqli_real_escape_string($con, $data->Accom_Date);
$File_Name = mysqli_real_escape_string($con, $data->File_Name);

if(isset($data->Remarks)){
	$rem = mysqli_real_escape_string($con, $data->Remarks);
}else{
	$rem = '';
}



$End_Date = date('Y-m-d', strtotime($dateCom));

$db_name = "accomplished";


$query = "INSERT into $db_name
(quantity,idindicators,remarks,user,fileName,dateCompleted,dateEncoded) 

VALUES 

('$quant','$indID','$rem',$userID,'$File_Name','$End_Date','$encodeDate')"; 

 $audit_query = str_replace("'","",$query);
if ($con->query($query) === TRUE) {
    $last_id = $con->insert_id;

		$audit_query = str_replace("'","",$query);

		audit_trail($userID,$last_id,'Submitted Accomplishment',$encodeDate,$audit_query,$con);
		create_notification($last_id, $userID,$u_div, $db_name, 'Submitted Accomplishment', $con);
    	
    	// echo $last_id;
    	echo json_encode(array("message" => $last_id));

}	else {
		// echo "";
    	echo "Error: " . $query . "<br>" . $con->error;
}
}
// mysqli_query($con, $query);

//echo $query;

?>