<?php
require '../model/autoload.php';


header("content-type:application/json");
   
    if($_SERVER['REQUEST_METHOD'] == "POST" || $_SERVER['REQUEST_METHOD'] == "GET")
    {

        $outp="";    
        $obj = new Helper;    
        $fld_val = $_REQUEST['fld_val'];          
        $fld_name = $_REQUEST['fld_name'];          
        $row = $obj-> joinmutiple_master_farmer_detail_product($fld_name,$fld_val);
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

        //print_r($id);
        die();
           
        
    }
?>