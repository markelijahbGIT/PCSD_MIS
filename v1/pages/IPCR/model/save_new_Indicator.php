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
$ipcr_AnnualTarget = mysqli_real_escape_string($con, $_POST['ipcr_AnnualTarget']);

$ipcr_first_sem_target = mysqli_real_escape_string($con, $_POST['ipcr_first_sem_target']);
$ipcr_first_sem_target_no = mysqli_real_escape_string($con, $_POST['ipcr_first_sem_target_no']);


$ipcr_second_sem_target = mysqli_real_escape_string($con, $_POST['ipcr_second_sem_target']);
$ipcr_second_sem_target_no = mysqli_real_escape_string($con, $_POST['ipcr_second_sem_target_no']);
$ipcr_output_id = mysqli_real_escape_string($con, $_POST['ipcr_output_id']);


$query = "INSERT into ipcr_indicators
(ipcr_user_id, ipcr_AnnualTarget,ipcr_first_sem_target,ipcr_first_sem_target_no, ipcr_second_sem_target, ipcr_second_sem_target_no, ipcr_output_id, date_encoded) 

VALUES 

($user_id, $ipcr_AnnualTarget, '$ipcr_first_sem_target' , $ipcr_first_sem_target_no, '$ipcr_second_sem_target', $ipcr_second_sem_target_no, $ipcr_output_id, '$encodeDate')"; 
//mysqli_query($con, $query);

if (mysqli_query($con,$query)) {
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