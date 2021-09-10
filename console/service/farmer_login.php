<?php 
require '../model/autoload.php';

$table = 'farmer';

header("content-type:application/json");
	
if($_SERVER['REQUEST_METHOD'] == "POST" || $_SERVER['REQUEST_METHOD'] == "GET")
{
	$obj = new Helper;
	$response = array();
	$data = array();
	
	$data['mobileno'] =  $_REQUEST['mobileno'];
	$data['pass'] =  $_REQUEST['pass'];
	$data['verify'] = "1";

	
	
    
    
	$row = $obj->getSingleData($table,$data);
    if($row)
    {
    	
    	$response = array("data" => 200 , "f_id" => $row[0]['id']);
    }
    else
    {
    	$response = array("data" => 100);	
    }





}

	echo json_encode($response);	

	//nehupatel1909@gmail.com
	//nehu1919
	
?>