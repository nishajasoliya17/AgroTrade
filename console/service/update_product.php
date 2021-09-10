<?php 
require '../model/autoload.php';

$table = 'product';


	

header("content-type:application/json");
	
if($_SERVER['REQUEST_METHOD'] == "POST" || $_SERVER['REQUEST_METHOD'] == "GET")
{
	$obj = new Helper;
	$response = array();
	$data = array();

	$data['f_id'] =  $_REQUEST['f_id'];
	$data['name'] =  $_REQUEST['name'];
	$data['actual_qty'] =  $_REQUEST['actual_qty'];
	$data['expected_qty'] =  $_REQUEST['expected_qty'];
	$data['price'] =  $_REQUEST['price'];

    
    
    
      


        if($obj->updateData($table,$data,array("id" => $_REQUEST['id'])))
        {
            $response = array("data" => 200);
        }
        else
        {
            $response = array("data" => 100);   
        } 
    

    





}

	echo json_encode($response);	
	
?>