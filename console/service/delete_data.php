<?php 
require '../model/autoload.php';


$table = $_REQUEST['table'];
        
header("content-type:application/json");
	
if($_SERVER['REQUEST_METHOD'] == "POST" || $_SERVER['REQUEST_METHOD'] == "GET")
{
	$obj = new Helper;
	$response = array();
	$data = array();	

        if($obj->deleteData($table,array("id" => $_REQUEST['id'])))
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