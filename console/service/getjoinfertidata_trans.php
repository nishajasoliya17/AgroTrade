<?php
require '../model/autoload.php';


header("content-type:application/json");
   
    if($_SERVER['REQUEST_METHOD'] == "POST" || $_SERVER['REQUEST_METHOD'] == "GET")
    {

        $outp="";    
        $obj = new Helper;              
        $fld_name1 = $_REQUEST['fld_name1'];
        $fld_val1 = $_REQUEST['fld_val1'];          
        $fld_name2 = $_REQUEST['fld_name2'];
        $fld_val2 = $_REQUEST['fld_val2'];   

        $row = $obj-> joinfertimaster_trans_detail1($fld_name1, $fld_val1, $fld_name2, $fld_val2);
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