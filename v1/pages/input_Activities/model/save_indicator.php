<?php 
// Including database connections
require_once '../../audit_trail.php';
require_once '../../database_connections.php';
require_once '../../../../../rest-api-authentication/api/validate_token_function.php';
$validate_response =  json_decode(validateToken($key,$_COOKIE['jwtPHP']));

if($validate_response->message == "Access granted."){
	if($validate_response->data->user_level == "MIS"){
// Fetching and decoding the inserted data
$data = json_decode(file_get_contents("php://input")); 
// Escaping special characters from submitting data & storing in new variables.
//$myJSON = json_encode($data->items);
date_default_timezone_set('Asia/Manila');

$Target =  $data->Target;

$Deadlines = $data->Deadlines;

$Budget_monthly = $data->Budget;

//$json = $Target;
$json = json_encode($Target, TRUE);
$obj = json_decode($json, TRUE);

$encodeDate = date("Y-m-d H:i:s");

$Title = mysqli_real_escape_string($con, $data->Title);
$Division = mysqli_real_escape_string($con, $data->Division);
$Commitment = mysqli_real_escape_string($con, $data->Commitment);
$TargetWeight = mysqli_real_escape_string($con, $data->TargetWeight);
$AnnualTarget = mysqli_real_escape_string($con, $data->AnnualTarget);

$idsubactivities = mysqli_real_escape_string($con, $data->idsubactivities);
$year_indicator = mysqli_real_escape_string($con, $data->year_indicator);

$budget = mysqli_real_escape_string($con, $data->budget);

$userID = $_SESSION['user'];

$month_count = 0;

$query = "INSERT into indicators
(Title, division,agency_commitment,idsubactivities,year_indicator,TargetWeight,AnnualTarget, date_encoded,budget) 

VALUES 

('$Title', '$Division','$Commitment' ,'$idsubactivities','$year_indicator','$TargetWeight','$AnnualTarget','$encodeDate', '$budget')"; 
mysqli_query($con, $query);

$lastID = mysqli_insert_id($con);

foreach($obj as $key_indic => $value_indic) 
{
    $month_count += 1;
    
	$date = date_parse($key_indic);
	$monthNum = $date['month'];
	//echo 'Your key is: '. $monthNum .' and the value of the key is:'.$value.'<br>';


	$query = "INSERT into monthlytarget
	(idindicators,	month, 	target, date_encoded) 

	VALUES 

	('$lastID','$monthNum','$value_indic','$encodeDate')"; 
	
	
    if($month_count > 12){
        break;
    }else{
	mysqli_query($con, $query);
    }
	
}

$json_dead = json_encode($Deadlines, TRUE);
$obj_dead = json_decode($json_dead, TRUE);

foreach($obj_dead as $key_dead => $value_dead) 
{
	$date = date_parse($key_dead);
	$monthNum = $date['month'];
	//echo 'Your key is: '. $monthNum .' and the value of the key is:'.$value.'<br>';

	//Date Plus 1 day

	
	$value_dead = date('Y-m-d H:i:s', strtotime($value_dead));


	$query = "UPDATE monthlytarget
	SET deadline = '$value_dead'
	WHERE idindicators = '$lastID' AND month = '$monthNum'"; 

	mysqli_query($con, $query);

	// echo $query;
}

// echo $json;

$json_Budget = json_encode($Budget_monthly, TRUE);
$obj_Budget = json_decode($json_Budget, TRUE);

foreach($obj_Budget as $key_Budget => $value_Budget) 
{
	$date = date_parse($key_Budget);
	$monthNum = $date['month'];
	//echo 'Your key is: '. $monthNum .' and the value of the key is:'.$value.'<br>';

	//Date Plus 1 day


	$query = "UPDATE monthlytarget
	SET budget = $value_Budget
	WHERE idindicators = '$lastID' AND month = '$monthNum'"; 

	mysqli_query($con, $query);
	

	
}

$audit_query = str_replace("'","",$query);
audit_trail($userID,$lastID,'Save Indicator',$encodeDate,$audit_query,$con);
echo json_encode(array("message" => "Add Successful."));

//session_destroy();
}}

?>