<?php 
require '../model/autoload.php';

$table = ' salemaster_fp';


	

header("content-type:application/json");
	
if($_SERVER['REQUEST_METHOD'] == "POST" || $_SERVER['REQUEST_METHOD'] == "GET")
{
	$obj = new Helper;
	$response = array();
	$data1 = array();

	$data['id'] =  $_REQUEST['order_id'];
	$data1['order_status'] =  'Delivered';
	$data1['id'] =  $_REQUEST['order_id'];
       /* if($obj->updateData($table,$data,array("id" => $_REQUEST['order_id'])))
        {
            $response = array("data" => 200);
        }
        else
        {
            $response = array("data" => 100);   
        }*/

        $row = $obj->getSingleData($table,$data);
    if($row)
    {
    	if($obj->updateData($table,$data1,array("id" => $_REQUEST['order_id'])))
        {
            $response = array("data" => 200, "t_id" => $row[0]['t_id']);
        }
        else
        {
            $response = array("data" => 100);   
        }
    	//$response = array("data" => 200 , "t_id" => $row[0]['id']);
    }
    else
    {
    	$response = array("data" => 500);	
    }

}

	echo json_encode($response);	
	
?>