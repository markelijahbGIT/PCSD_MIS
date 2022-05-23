<?php
require_once '../../../../../rest-api-authentication/api/validate_token_function.php';



if(isset($_COOKIE['jwtPHP'])){


	$validate_response =  json_decode(validateToken($key,$_COOKIE['jwtPHP']));


	if($validate_response->message == "Access granted."){
		
			$user_level = $validate_response->data->user_level;
			echo json_encode(
	            array(
	                "message" => "success",
	                "user_level" => $user_level
	            )
	        	);
		}
}
?>