<?php 
require_once 'database_connections.php';
require_once '../../../rest-api-authentication/api/validate_token_function.php';

$validate_response =  json_decode(validateToken($key,$_COOKIE['jwtPHP']));

if($validate_response->message == "Access granted."){
	$user_division = $validate_response->data->user_division;
	if($validate_response->data->user_level == "MIS"){
		

	$query = "SELECT * FROM notifications WHERE seen = 0";
	}else{

	$query = "SELECT * FROM notifications WHERE user_division = '$user_division' AND  seen = 0";
	}

	// mysqli_query run command requirements ng pag run sa sql database ay ang $connection at $query string
	$result = mysqli_query($con,$query);
	$array = array();
	if(mysqli_num_rows($result) != 0){
	    while($row=mysqli_fetch_assoc($result)){
	        $array[]=$row;
	    }
	}
	
	echo mysqli_num_rows($result);
}

// echo $validate_response->message;

?>