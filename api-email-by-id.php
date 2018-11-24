<?php

$userId=$_GET['id'];

if (isset($userId)) {

	// request db for email by userId
	// select `email` from `users` where `id`=userId limit 1
	
	$userEmail = 'user' . $userId . '@example.com'; // generate fake email just for test
	
	echo $userEmail;

}

?>