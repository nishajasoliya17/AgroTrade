<?php 
require '../model/autoload.php';

$table = 'customer';

header("content-type:application/json");
	
if($_SERVER['REQUEST_METHOD'] == "POST" || $_SERVER['REQUEST_METHOD'] == "GET")
{
	$obj = new Helper;
	$response = array();
	$data = array();
	
	$data['name'] =  $_REQUEST['name'];
	$data['password'] =  $_REQUEST['password'];
	$data['verify'] = "1";

	
	
    
    $row = $obj->getSingleData($table,$data);
    if($row)
    {
    	
    	$response = array("data" => 200 , "c_id" => $row[0]['id']);
    }
    else
    {
    	$response = array("data" => 100);	
    }








}

	echo json_encode($response);	
	
?>