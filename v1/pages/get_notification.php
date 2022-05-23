<?php 
require_once 'database_connections.php';
require_once '../../../rest-api-authentication/api/validate_token_function.php';

$validate_response =  json_decode(validateToken($key,$_COOKIE['jwtPHP']));

if($validate_response->message == "Access granted."){

	$user_division = $validate_response->data->user_division;
	$user_email = $validate_response->data->email;

	if($validate_response->data->user_level == "MIS"){

		$query = "SELECT notifications.notifications_id, notifications.record_id, notifications.user_id ,notifications.notif_text ,notifications.date_created, notifications.user_id , notifications.user_division, CONCAT(pcsds_api_db.users.firstname,' ',pcsds_api_db.users.lastname) AS Name ,
		(SELECT indicators.Title FROM `accomplished` JOIN indicators ON accomplished.idindicators = indicators.idindicators 
			WHERE accomplished.idaccomplished = notifications.record_id) AS Title,
			(SELECT indicators.idindicators FROM `accomplished` JOIN indicators ON accomplished.idindicators = indicators.idindicators 
			WHERE accomplished.idaccomplished = notifications.record_id) AS indicator_id  
		FROM notifications

		JOIN pcsds_api_db.users ON notifications.user_id = pcsds_api_db.users.id 

		WHERE seen = 0 ORDER BY date_created DESC";



		}
	else{

			$query = "SELECT notifications.notifications_id, notifications.record_id, notifications.user_id ,notifications.notif_text ,notifications.date_created, notifications.user_id , notifications.user_division,CONCAT(pcsds_api_db.users.firstname,' ',pcsds_api_db.users.lastname) AS Name ,
		(SELECT indicators.Title FROM `accomplished` JOIN indicators ON accomplished.idindicators = indicators.idindicators 
			WHERE accomplished.idaccomplished = notifications.record_id) AS Title,
			(SELECT indicators.idindicators FROM `accomplished` JOIN indicators ON accomplished.idindicators = indicators.idindicators 
			WHERE accomplished.idaccomplished = notifications.record_id) AS indicator_id   
		FROM notifications

		JOIN pcsds_api_db.users ON notifications.user_id = pcsds_api_db.users.id  

		WHERE notifications.user_division ='$user_division' AND seen = 0 ORDER BY date_created DESC";



		}
		
		$result = mysqli_query($con,$query);
		$array = array();
		if(mysqli_num_rows($result) != 0){
		    while($row=mysqli_fetch_assoc($result)){
		        $array[]=$row;
		    }
		}

		echo $json_info = json_encode($array);

}

?>