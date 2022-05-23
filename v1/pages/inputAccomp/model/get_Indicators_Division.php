<?php
require_once '../../database_connections.php';
require_once '../../../../../rest-api-authentication/api/validate_token_function.php';

$validate_response =  json_decode(validateToken($key,$_COOKIE['jwtPHP']));

// echo $response->data->firstname;

$data = json_decode(file_get_contents("php://input")); 

 $Selected_Year = mysqli_real_escape_string($con, $data->Selected_Year);

if($validate_response->message == "Access granted."){
	
	$user_Div = $validate_response->data->user_division;


	if($validate_response->data->user_level == "MIS"){

		$ifMIS = '';
	}else{
		$ifMIS =" AND mainactivities.Division = '$user_Div' AND indicators.division = '$user_Div' ";

	}

 if(isset($Selected_Year)){

 	// $query = "SELECT *
		// 		FROM indicators
		// 		WHERE year_indicator = $Selected_Year"; 

 	$query = "SELECT indicators.idindicators , indicators.idsubactivities, indicators.Title ,indicators.year_indicator,indicators.TargetWeight,indicators.budget,indicators.AnnualTarget,indicators.agency_commitment, indicators.division,subactivities.idsubactivities ,mainactivities.Title AS Main_Activity, subactivities.Title AS Sub_Activity, mainactivities.MFONo,
 	(SELECT budget  FROM `monthlytarget` WHERE 	idindicators = indicators.idindicators AND 	month = 1 ) AS jan_budget,
    (SELECT budget  FROM `monthlytarget` WHERE 	idindicators = indicators.idindicators AND 	month = 2 ) AS feb_budget,
    (SELECT budget  FROM `monthlytarget` WHERE 	idindicators = indicators.idindicators AND 	month = 3 ) AS mar_budget,
    (SELECT budget  FROM `monthlytarget` WHERE 	idindicators = indicators.idindicators AND 	month = 4 ) AS apr_budget,
    (SELECT budget  FROM `monthlytarget` WHERE 	idindicators = indicators.idindicators AND 	month = 5 ) AS may_budget,
    (SELECT budget  FROM `monthlytarget` WHERE 	idindicators = indicators.idindicators AND 	month = 6 ) AS jun_budget,
    (SELECT budget  FROM `monthlytarget` WHERE 	idindicators = indicators.idindicators AND 	month = 7 ) AS jul_budget,
    (SELECT budget  FROM `monthlytarget` WHERE 	idindicators = indicators.idindicators AND 	month = 8 ) AS aug_budget,
    (SELECT budget  FROM `monthlytarget` WHERE 	idindicators = indicators.idindicators AND 	month = 9 ) AS sep_budget,
    (SELECT budget  FROM `monthlytarget` WHERE 	idindicators = indicators.idindicators AND 	month = 10) AS oct_budget,
    (SELECT budget  FROM `monthlytarget` WHERE 	idindicators = indicators.idindicators AND 	month = 11) AS nov_budget,
    (SELECT budget  FROM `monthlytarget` WHERE 	idindicators = indicators.idindicators AND 	month = 12) AS dec_budget,
    
    (SELECT target  FROM `monthlytarget` WHERE 	idindicators = indicators.idindicators AND 	month = 1 ) AS jan,
    (SELECT target  FROM `monthlytarget` WHERE 	idindicators = indicators.idindicators AND 	month = 2 ) AS feb,
    (SELECT target  FROM `monthlytarget` WHERE 	idindicators = indicators.idindicators AND 	month = 3 ) AS mar,
    (SELECT target  FROM `monthlytarget` WHERE 	idindicators = indicators.idindicators AND 	month = 4 ) AS apr,
    (SELECT target  FROM `monthlytarget` WHERE 	idindicators = indicators.idindicators AND 	month = 5 ) AS may,
    (SELECT target  FROM `monthlytarget` WHERE 	idindicators = indicators.idindicators AND 	month = 6 ) AS jun,
    (SELECT target  FROM `monthlytarget` WHERE 	idindicators = indicators.idindicators AND 	month = 7 ) AS jul,
    (SELECT target  FROM `monthlytarget` WHERE 	idindicators = indicators.idindicators AND 	month = 8 ) AS aug,
    (SELECT target  FROM `monthlytarget` WHERE 	idindicators = indicators.idindicators AND 	month = 9 ) AS sep,
    (SELECT target  FROM `monthlytarget` WHERE 	idindicators = indicators.idindicators AND 	month = 10) AS oct,
    (SELECT target  FROM `monthlytarget` WHERE 	idindicators = indicators.idindicators AND 	month = 11) AS nov,
    (SELECT target  FROM `monthlytarget` WHERE 	idindicators = indicators.idindicators AND 	month = 12) AS dec_tar,
    
    (SELECT deadline  FROM `monthlytarget` WHERE 	idindicators = indicators.idindicators AND 	month = 1 ) AS jan_dead,
    (SELECT deadline  FROM `monthlytarget` WHERE 	idindicators = indicators.idindicators AND 	month = 2 ) AS feb_dead,
    (SELECT deadline  FROM `monthlytarget` WHERE 	idindicators = indicators.idindicators AND 	month = 3 ) AS mar_dead,
    (SELECT deadline  FROM `monthlytarget` WHERE 	idindicators = indicators.idindicators AND 	month = 4 ) AS apr_dead,
    (SELECT deadline  FROM `monthlytarget` WHERE 	idindicators = indicators.idindicators AND 	month = 5 ) AS may_dead,
    (SELECT deadline  FROM `monthlytarget` WHERE 	idindicators = indicators.idindicators AND 	month = 6 ) AS jun_dead,
    (SELECT deadline  FROM `monthlytarget` WHERE 	idindicators = indicators.idindicators AND 	month = 7 ) AS jul_dead,
    (SELECT deadline  FROM `monthlytarget` WHERE 	idindicators = indicators.idindicators AND 	month = 8 ) AS aug_dead,
    (SELECT deadline  FROM `monthlytarget` WHERE 	idindicators = indicators.idindicators AND 	month = 9 ) AS sep_dead,
    (SELECT deadline  FROM `monthlytarget` WHERE 	idindicators = indicators.idindicators AND 	month = 10) AS oct_dead,
    (SELECT deadline  FROM `monthlytarget` WHERE 	idindicators = indicators.idindicators AND 	month = 11) AS nov_dead,
    (SELECT deadline  FROM `monthlytarget` WHERE 	idindicators = indicators.idindicators AND 	month = 12) AS dec_dead
    
 	
 	FROM ((indicators INNER JOIN subactivities ON indicators.idsubactivities = subactivities.idsubactivities ) INNER JOIN mainactivities ON subactivities.idMainActivities = mainactivities.idMainActivities)
 	WHERE indicators.year_indicator = $Selected_Year $ifMIS AND indicators.deleted= 0 ORDER BY indicators.date_encoded DESC"; 
 	

 }else{
 	// $query = "SELECT *
		// 		FROM indicators
		// 		";

 	$query = "SELECT indicators.idindicators , indicators.idsubactivities, indicators.Title ,indicators.year_indicator,indicators.TargetWeight,indicators.AnnualTarget,indicators.agency_commitment, indicators.division,subactivities.idsubactivities,mainactivities.Title AS Main_Activity, subactivities.Title AS Sub_Activity, mainactivities.MFONo FROM ((indicators INNER JOIN subactivities ON indicators.idsubactivities = subactivities.idsubactivities ) INNER JOIN mainactivities ON subactivities.idMainActivities = mainactivities.idMainActivities) WHERE indicators.deleted= 0  $ifMIS"; 
 }
 //echo $query;

	// WHERE job_order.jobStatus = 'Pending' AND jobCompletionDate is Null
//"SELECT * FROM job_order WHERE jobStatus = 'Pending' AND jobCompletionDate is Null"; //WHERE overtime.overtimeDate BETWEEN '$startDate' AND '$endDate'
$result = mysqli_query($con, $query);
$arr = array();
if(mysqli_num_rows($result) != 0) {
	while($row = mysqli_fetch_assoc($result)) {
			$arr[] = $row;
	}
}

echo $json_info = json_encode($arr);
}

?>