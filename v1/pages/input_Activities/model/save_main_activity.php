<?php 
// session_start();
// Including database connectionsrequire_once '../../database_connections.php';
$encodeDate = date("Y-m-d H:i:s");
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
$MFONo = mysqli_real_escape_string($con, $data->MFONo);
$yr = mysqli_real_escape_string($con, $data->yr);

$division = mysqli_real_escape_string($con, $data->division);

$query = "INSERT into mainactivities
(Title, Coding ,MFONo, yr, Division, date_encoded) 

VALUES 

('$Title', '$Coding','$MFONo','$yr','$division','$encodeDate')"; 
$audit_query = str_replace("'","",$query);
$lastID = mysqli_insert_id($con);


if (mysqli_query($con,$query)) {
		echo json_encode(array("message" => "Success"));
        audit_trail($userID,$lastID,'Save Main Activity',$encodeDate,$audit_query,$con);
    
        } else {
            echo "Error: " . $query . "<br>" . mysqli_error($con);
        }

// echo $query;
}}
?>