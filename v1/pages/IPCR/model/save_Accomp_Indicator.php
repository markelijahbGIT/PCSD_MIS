<?php 
// Including database connections
session_start();
require_once '../../database_connections.php';
// Fetching and decoding the inserted data
//$data = json_decode(file_get_contents("php://input")); 
// Escaping special characters from submitting data & storing in new variables.
//$myJSON = json_encode($data->items);
date_default_timezone_set('Asia/Manila');

$encodeDate = date("Y-m-d H:i:s");

$user_id = $_SESSION['user'];
$ipcr_indicators_id = mysqli_real_escape_string($con, $_POST['ipcr_indicators_id']);
$ipcr_actual_accomplished = mysqli_real_escape_string($con, $_POST['ipcr_actual_accomplished']);
$ipcr_actual_date_completed = mysqli_real_escape_string($con, $_POST['ipcr_actual_date_completed']);
$ipcr_actual_remarks = mysqli_real_escape_string($con, $_POST['ipcr_actual_remarks']);

$ipcr_actual_date_encoded =$encodeDate;



$query = "INSERT into ipcr_actual
(ipcr_user_id,
	 ipcr_indicators_id,
	 ipcr_actual_accomplished,
	 ipcr_actual_date_completed,
	 ipcr_actual_date_encoded,
	 ipcr_actual_remarks) 

VALUES 

($user_id,
	  $ipcr_indicators_id, 
	 '$ipcr_actual_accomplished' ,
	 '$ipcr_actual_date_completed',
	 '$ipcr_actual_date_encoded',
	 '$ipcr_actual_remarks')"; 
//mysqli_query($con, $query);

if (mysqli_query($con,$query)) {
        

	$query = "SELECT SUM(ipcr_actual_accomplished) as ipcr_actual_accomplished 
				FROM ipcr_actual
				WHERE ipcr_indicators_id = $ipcr_indicators_id";


	$result = mysqli_query($con, $query);
	if(mysqli_num_rows($result) != 0) {
		while($row = mysqli_fetch_assoc($result)) {

				$new_q1 = $row["ipcr_actual_accomplished"];
				
				$query = "UPDATE ipcr_indicators
							SET ipcr_q1 = $new_q1
				
				WHERE ipcr_indicators_id = $ipcr_indicators_id";

				mysqli_query($con, $query);



		}
	}








        echo "Data Added";




    }
    else {
        echo "Error: " . $query . mysqli_error($con);
        // echo $query;
    }
// if ($con->query($query) === TRUE) {
//     $last_id = $con->insert_id;

//     echo $last_id;
// }	else {
// 		echo "";
//     	//echo "Error: " . $query . "<br>" . $con->error;
// }

// mysqli_query($con, $query);

//echo $query;

?>