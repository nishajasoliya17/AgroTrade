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
	$data['cat_name'] =  $_REQUEST['cat_name'];
	$data['crop_name'] =  $_REQUEST['crop_name'];
	$data['qty'] =  $_REQUEST['qty'];
    $data['price'] =  $_REQUEST['price'];
    $data['description'] =  $_REQUEST['description'];
	$data['c_date'] =  date('Y/m/d');
    
       $data['img'] = $obj -> uploadfile($_FILES,"image");
    
    

        if($obj->insertData($table,$data))
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