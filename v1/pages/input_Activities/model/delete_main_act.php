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

$id = mysqli_real_escape_string($con, $data->id);


$query = "UPDATE mainactivities SET deleted = 1 
			WHERE idMainActivities =  $id"; 

if (mysqli_query($con,$query)) {
            // echo "Deleted";
            echo json_encode(array("message" => "Deleted"));
    
        } else {
            echo "Error: " . $query . "<br>" . mysqli_error($con);
        }
}
}

?>