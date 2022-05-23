<?php
session_start();
require_once '../../database_connections.php'; 
//$data = json_decode(file_get_contents("php://input")); 

//$startDate = mysqli_real_escape_string($con, $data->startDate);
 $Selected_Year = mysqli_real_escape_string($con, $_POST['yr']);
 $userID = $_SESSION['user'];

 if(isset($Selected_Year)){

 	$query = "SELECT *
				FROM ipcr_outputs
				WHERE 	ipcr_outputs_year = $Selected_Year
				AND user_id = $userID";

 }else{
 	$query = "SELECT *
				FROM indicators
				";
 }


	

	// WHERE job_order.jobStatus = 'Pending' AND jobCompletionDate is Null
//"SELECT * FROM job_order WHERE jobStatus = 'Pending' AND jobCompletionDate is Null"; //WHERE overtime.overtimeDate BETWEEN '$startDate' AND '$endDate'
$result = mysqli_query($con, $query);
$arr = array();
if(mysqli_num_rows($result) != 0) {
	while($row = mysqli_fetch_assoc($result)) {
			$arr[] = $row;

			//echo $row;
			

	}
}

echo $json_info = json_encode($arr);
?>