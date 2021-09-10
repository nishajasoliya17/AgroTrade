<?php 

   header("content-type:application/json");
	
	$user = "abc";
	$pass = "123";



	if($user == "abc" && $pass == "1234")
	{
		//echo "valid user";

		$response = array("data" => 200);
	}
	else
	{
		//echo "falid";
		$response = array("data" => 100);
	}

	echo json_encode($response);	
	//print_r($response);
?>