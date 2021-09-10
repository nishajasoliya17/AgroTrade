<?php 
require '../model/autoload.php';

$table = 'customer';	

header("content-type:application/json");
	
if($_SERVER['REQUEST_METHOD'] == "POST" || $_SERVER['REQUEST_METHOD'] == "GET")
{
	$obj = new Helper;
	$response = array();
	$data = array();
	
	$data['mobileno'] =  $_REQUEST['mobileno'];
	$data['otp'] =  $_REQUEST['otp'];
	
    
    

    if($obj->getSingleData($table,$data))
    {
    	$obj->updateData($table , array("verify" => '1') , $data);
    	$response = array("data" => 200);
    }
    else
    {
    	$response = array("data" => 100);	
    }





}

	echo json_encode($response);	
	
?>