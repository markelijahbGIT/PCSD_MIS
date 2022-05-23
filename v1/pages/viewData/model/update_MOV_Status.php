<?php
date_default_timezone_set('Asia/Manila');

require_once '../../database_connections.php';
require_once '../../audit_trail.php';
require_once '../../notify.php';
require_once '../../remove_notif.php';
require_once '../../../../../rest-api-authentication/api/validate_token_function.php';

$validate_response =  json_decode(validateToken($key,$_COOKIE['jwtPHP']));

if($validate_response->message == "Access granted."){
	if($validate_response->data->user_level == "MIS"){

		$data = json_decode(file_get_contents("php://input")); 

		$accomp_id = mysqli_real_escape_string($con,$_POST['accomp_id']);
		$notifications_id = mysqli_real_escape_string($con,$_POST['notifications_id']); 
		//echo $notifications_id;
		$encodeDate = date("Y-m-d H:i:s");
		$userID = $validate_response->data->id;//$_SESSION['user'];
		$u_lvl = $validate_response->data->user_level;
		$u_div = $validate_response->data->user_division;

		$query = "UPDATE accomplished
					SET confirmation_status	= 'confirmed'
							WHERE  	idaccomplished = '$accomp_id'";
		if ($con->query($query) === TRUE) {

			$audit_query = str_replace("'","",$query);

			audit_trail($userID,$accomp_id,'Accepted Accomplishment Submission',$encodeDate,$audit_query,$con);
			create_notification($accomp_id, $userID,$u_div, 'accomplished', 'Accepted/Confirmed Accomplishment', $con);
			remove_notif($notifications_id, $con);

		    // echo "Success";
		    echo json_encode(array("message" => "Success",
									"data" => $notifications_id));
		} else {
		    echo "Error updating record: " . $con->error;
		}

	}
}

?>
