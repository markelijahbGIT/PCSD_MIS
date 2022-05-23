<?php 

function create_notification($record_id, $user_id,$u_div ,$db_name, $notif_text, $con) {

	$date_created = date("Y-m-d h:i:sa");

  $notify_query = "INSERT into notifications
		(record_id, user_id, user_division, db_name, notif_text, date_created) 

		VALUES 

		($record_id,$user_id, '$u_div','$db_name','$notif_text','$date_created')"; 

		mysqli_query($con, $notify_query);
}

?>