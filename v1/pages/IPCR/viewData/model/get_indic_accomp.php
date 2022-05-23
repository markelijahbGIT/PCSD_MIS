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


$query = "SELECT * from accomplished 
					WHERE dateCompleted BETWEEN '$firstDay' AND '$lastDay' 
						AND idindicators = '$idindicators'";
$result = mysqli_query($con, $query);
$arr = array();
if(mysqli_num_rows($result) != 0) {
	while($row = mysqli_fetch_assoc($result)) {

		$arr[] = $row;

	}}




//echo $query;
echo $json_info = json_encode($arr);

?>
