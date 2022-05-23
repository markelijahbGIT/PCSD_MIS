<?php

date_default_timezone_set('Asia/Manila');

require_once '../../database_connections.php'; 
$data = json_decode(file_get_contents("php://input")); 

$firstDay = mysqli_real_escape_string($con, $data->firstDay);
$lastDay = mysqli_real_escape_string($con, $data->lastDay);

$firstDay =date('Y-m-d H:i:s', strtotime($firstDay));
$lastDay =date('Y-m-d H:i:s', strtotime($lastDay)); 

$first_Month = date('n', strtotime($firstDay));
$last_Month = date('n', strtotime($lastDay));

$idindicators = mysqli_real_escape_string($con, $data->idindicators);

//echo $firstDay . " : , " .  $lastDay ." : , " .  $Selected_Year;


$query = "SELECT accomplished.idaccomplished, 
				accomplished.idindicators, 
				accomplished.quantity,
				accomplished.user, 
				accomplished.remarks,
				accomplished.fileName,
				accomplished.dateCompleted,
				accomplished.dateEncoded,
				accomplished.confirmation_status,
				indicators.Title,
				indicators.idindicators  

				from accomplished JOIN indicators
				ON indicators.idindicators = accomplished.idindicators
					WHERE accomplished.dateCompleted BETWEEN '$firstDay' AND '$lastDay' 
						AND accomplished.idindicators = '$idindicators'";
$result = mysqli_query($con, $query);
$arr = array();
if(mysqli_num_rows($result) != 0) {
	while($row = mysqli_fetch_assoc($result)) {

		$arr[] = $row;

	}}




//echo $query;
echo $json_info = json_encode($arr);

?>
