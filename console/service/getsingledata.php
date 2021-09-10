<?php
require '../model/autoload.php';


header("content-type:application/json");
   
    if($_SERVER['REQUEST_METHOD'] == "POST" || $_SERVER['REQUEST_METHOD'] == "GET")
    {

        $outp="";
        
        $table = $_REQUEST['table'];
        $key = $_REQUEST['db_field_name'];
        $value = $_REQUEST['db_field_value'];
        
        $obj = new Helper;        
        $row = $obj-> getSingleData($table , array($key => $value));       
        
        foreach ($row as $key => $value) 
        {
            $outp .= "{";
            foreach ($value as $k => $v) 
            {
                $v = $obj->escapeJsonString($v);              

                $outp .= '"'.$k.'":"'.$v.'",';           
                
            }

            $outp = rtrim($outp,",");
            $outp .= "},";           
           
        }

        $outp = rtrim($outp,",");

        echo $outp ='{"response":['.$outp.']}';

        print_r($id);
        die();
           
        
    }
?>