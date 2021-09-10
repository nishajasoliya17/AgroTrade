<?php 
require '../model/autoload.php';



    

header("content-type:application/json");
    
if($_SERVER['REQUEST_METHOD'] == "POST" || $_SERVER['REQUEST_METHOD'] == "GET")
{
    $obj = new Helper;

    $response = array();
    $data = array();
    
    $json = $_REQUEST['json'];
    $table = $_REQUEST['table'];
    $fldname = $_REQUEST['fldname'];
    $fldval = $_REQUEST['fldval'];
    
    
    // $json = '{
    //     "name" : "klkldkf",
    //     "address" : "klkldkf",
    //     "mobileno" : "klkldkf",
    //     "mobileno" : "klkldkf"
    // }';

    $row = (array) json_decode($json);

    if($obj->updateData($table,$row,array($fldname=>$fldval)))
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