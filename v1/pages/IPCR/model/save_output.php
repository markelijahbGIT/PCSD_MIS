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
$ipcr_outputs_activity_title = mysqli_real_escape_string($con, $_POST['ipcr_outputs_activity_title']);
$ipcr_outputs_year = mysqli_real_escape_string($con, $_POST['ipcr_outputs_year']);


$query = "INSERT into ipcr_outputs
(user_id,ipcr_outputs_activity_title,ipcr_outputs_year, date_encoded) 

VALUES 

($user_id, '$ipcr_outputs_activity_title', $ipcr_outputs_year, '$encodeDate')"; 
//mysqli_query($con, $query);
// if ($con->query($query) === TRUE) {
//     $last_id = $con->insert_id;

//     echo $last_id;
// }	else {
// 		echo "";
//     	//echo "Error: " . $query . "<br>" . $con->error;
// }

// mysqli_query($con, $query);
if (mysqli_query($con,$query)) {
        echo "Data Added";

    }
    else {
        echo "Error: " . $query . mysqli_error($con);
        // echo $query;
    }

//echo $query;

?>