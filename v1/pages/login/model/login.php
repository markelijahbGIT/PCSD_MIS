<?php
	// session_start();
	require_once '../../database_connection_hris.php';

	
	$data = json_decode(file_get_contents("php://input"));


	$username = mysqli_real_escape_string($con, $data->username);
    $password = mysqli_real_escape_string($con, $data->password);
    $query_string = "select * from admin where admin_user='$username' and admin_pass='$password'";
//echo $query_string;

	$query=$con->query($query_string);
	//mysqli_query($con, $query);
	if($query->num_rows > 0){
		$row=$query->fetch_array();

		// $_SESSION['user']=$row['id'];
		// // $_SESSION['user_level']=$row['user_type'];
		// $_SESSION['user_name']=$row['admin_user'];
		// $_SESSION['user_level']=$row['user_level'];
		// $_SESSION['user_division']=$row['user_division'];
		
		// $_SESSION['full_name'] =  $row['personnelLastName']; 

		// setcookie('userID', $_SESSION['user'], time() + (86400 * 30), "/");
		
		echo "success";
	}
	else{
		echo "fail";
	}

	
?>