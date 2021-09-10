<?php 
require '../model/autoload.php';

$table = 'transporter';

header("content-type:application/json");
	
if($_SERVER['REQUEST_METHOD'] == "POST" || $_SERVER['REQUEST_METHOD'] == "GET")
{
	$obj = new Helper;
	$response = array();
	$data = array();
	
	$data['mobileno'] =  $_REQUEST['mobileno'];
	$data['password'] =  $_REQUEST['password'];
	//$data['verify'] = "1";

	
	
    
    $row = $obj->getSingleData($table,$data);
    if($row)
    {
    	
    	$response = array("data" => 200 , "t_id" => $row[0]['id']);
    }
    else
    {
    	$response = array("data" => 100);	
    }


}

	echo json_encode($response);	
	
?>