<?php 
// session_start();
// Including database connectionsrequire_once '../../database_connections.php';

require_once '../../audit_trail.php';
require_once '../../database_connections.php';
require_once '../../../../../rest-api-authentication/api/validate_token_function.php';
$validate_response =  json_decode(validateToken($key,$_COOKIE['jwtPHP']));

if($validate_response->message == "Access granted."){
	if($validate_response->data->user_level == "MIS"){
// Fetching and decoding the inserted data
$data = json_decode(file_get_contents("php://input")); 
// Escaping special characters from submitting data & storing in new variables.
//$myJSON = json_encode($data->items);
date_default_timezone_set('Asia/Manila');

$encodeDate = date("Y-m-d H:i:s");
$userID = $validate_response->data->id;//$_SESSION['user'];




$Title = mysqli_real_escape_string($con, $data->Title);
$Coding = mysqli_real_escape_string($con, $data->Coding);
$idMainActivities = mysqli_real_escape_string($con, $data->Selected_Activity_ID);




$query = "INSERT into subactivities
(Title, Coding,idMainActivities, date_encoded) 

VALUES 

('$Title','$Coding','$idMainActivities','$encodeDate')"; 



mysqli_query($con, $query);
$lastID = mysqli_insert_id($con);

$audit_query = str_replace("'","",$query);
audit_trail($userID,$lastID,'Save SubActivity',$encodeDate,$audit_query,$con);

echo json_encode(array("message" => "Success"));

}}
?>