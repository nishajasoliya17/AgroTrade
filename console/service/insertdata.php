<?php 
require '../model/autoload.php';



    

header("content-type:application/json");
    
if($_SERVER['REQUEST_METHOD'] == "POST" || $_SERVER['REQUEST_METHOD'] == "GET")
{
    $obj = new Helper;

    $response = array();
    $data = array();
    
    //$json = $_REQUEST['json'];
    $table = $_REQUEST['table'];
    
    
    $json = '{ "f_cost" : "5" }';

    $row = (array) json_decode($json , true);

    //print_r($row);

    if($obj->insertData($table,$row))
        {
            $response = array("data" => 200);
        }
        else
        {
            $response = array("data" => 100);   
        }

   
    

echo json_encode($response);



}

 
    
?>