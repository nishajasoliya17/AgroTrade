<?php 
require '../model/autoload.php';

$table = 'expense';


	

header("content-type:application/json");
	
if($_SERVER['REQUEST_METHOD'] == "POST" || $_SERVER['REQUEST_METHOD'] == "GET")
{
	$obj = new Helper;
	$response = array();
	$data = array();

	$data['f_cost'] =  $_REQUEST['f_cost'];
	$data['p_cost'] =  $_REQUEST['p_cost'];
	$data['half_no_worker'] =  $_REQUEST['half_no_worker'];
	$data['half_sal'] =  $_REQUEST['half_sal'];
	$data['full_no_worker'] =  $_REQUEST['full_no_worker'];
	$data['full_sal'] =  $_REQUEST['full_sal'];
	$data['extra_cost'] =  $_REQUEST['extra_cost'];
	$data['extra_note'] =  $_REQUEST['extra_note'];
	$data['total_income'] =  $_REQUEST['total_income'];
	$data['date'] =  $_REQUEST['date'];
	$data['f_id'] =  $_REQUEST['f_id'];
	$data['pro_id'] =  $_REQUEST['pro_id'];
	
    
    
    
    

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
