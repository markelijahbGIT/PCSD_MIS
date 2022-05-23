<?php
	// session_start();
	// session_destroy();

	
	setcookie("jwtPHP", $jwt , time()-(86400 * 30) , "/" ,"192.168.0.111" , false , true);
	echo "success";
	
?>