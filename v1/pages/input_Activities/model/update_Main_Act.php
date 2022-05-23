<?php 
// Including database connections
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

$idMainActivities = mysqli_real_escape_string($con,$_POST['idMainActivities']);
$yr = mysqli_real_escape_string($con, $_POST['yr']);
$MFONo = mysqli_real_escape_string($con, $_POST['MFONo']);
$Title = mysqli_real_escape_string($con, $_POST['Title']);
$Coding = mysqli_real_escape_string($con, $_POST['Coding']);


$query = "UPDATE mainactivities SET Title = '$Title',Coding = '$Coding', MFONo = '$MFONo', yr = $yr 
			WHERE idMainActivities =  $idMainActivities"; 

if (mysqli_query($con,$query)) {
            echo json_encode(array("message" => "Edited"));
    
        } else {
            echo "Error: " . $query . "<br>" . mysqli_error($con);
        }



// echo $json;
}}
?>