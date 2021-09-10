<?php 
header("content-type:application/json");
require '../model/autoload.php';
$table = 'customer';



if($_SERVER['REQUEST_METHOD'] == "POST" ||  $_SERVER['REQUEST_METHOD'] == "GET")
{
	$obj = new Helper;        
    $row = $obj-> getMasterData($table);  
    $response = array();

	
	$data = array( "username" => $_REQUEST['username'] , "password" => $_REQUEST['password']);
	$row = $obj-> getSingleData($table , $data);
	//print_r($row);
	if($row)
	{
		$response = array("data" => 200 , "id" => $row[0]['cust_id']);
	}
	else
	{
		$response = array("data" => 100);
	}

	echo json_encode($response);



    
        
	
}




?>