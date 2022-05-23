<?php

require_once '../../../../../rest-api-authentication/api/validate_token_function.php';
$validate_response =  json_decode(validateToken($key,$_COOKIE['jwtPHP']));
// echo "response ".$validate_response->message;
if($validate_response->message == "Access granted."){

/* Getting file name */
$filename = $_FILES['file']['name'];

$docID = $_POST['meta'];

$newfilename =  $docID. "-" .$filename;//$_POST['name'];//
/* Location */
$location = '../../../uploads/mov/';

//mkdir("../../../../../uploads/mov/".$filename."/", 0700);

/* Upload file */
//move_uploaded_file($_FILES['file']['tmp_name'],$location.$newfilename);
move_uploaded_file($_FILES['file']['tmp_name'],$location.$newfilename);

$arr = array("name"=>$filename);
echo json_encode($_FILES['file']);
}

/* Getting file name */