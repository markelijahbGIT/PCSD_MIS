<?php

// date_default_timezone_set('Asia/Manila');

// require_once 'database_connections.php'; 
// $data = json_decode(file_get_contents("php://input")); 


// $notif_id = mysqli_real_escape_string($con,$data->id);

//echo $firstDay . " : , " .  $lastDay ." : , " .  $Selected_Year;

function remove_notif($notif_id,$con){
	
	$query = "UPDATE notifications
				SET seen = 1
						WHERE  	notifications_id = $notif_id";

	mysqli_query($con, $query);


}

?>