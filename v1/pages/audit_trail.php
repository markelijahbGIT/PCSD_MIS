<?php 

function audit_trail($userID,$record_id ,$trans_type , $encodeDate, $audit_query, $con) {
	// require_once '../../../../../rest-api-authentication/api/validate_token_function.php';

// $validate_response =  json_decode(validateToken($key,$_COOKIE['jwtPHP']));

// if($validate_response->message == "Access granted."){

  $trail_query = "INSERT into audit_trail
		(user_id,record_id, trans_type, transaction_date,transaction_details) 

		VALUES 

		('$userID','$record_id','$trans_type','$encodeDate','$audit_query')"; 

		mysqli_query($con, $trail_query);
// }

}

?>