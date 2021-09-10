<?php 
require '../model/autoload.php';

$table = ' salemaster_crop';

function sendSms($fmob,$umob,$msg)
{
    $apiKey = urlencode('mdQssR7pN3k-wnC7KzaQgTmuiw2zhcRLXHdUpd5lsl');
        
        // Message details
        $numbers = array($fmob,$umob);
        $sender = urlencode('TXTLCL');
        $message = rawurlencode($msg);
     
        $numbers = implode(',', $numbers);
     
        // Prepare data for POST request
        $data = array('apikey' => $apiKey, 'numbers' => $numbers, "sender" => $sender, "message" => $message);
     
        // Send the POST request with cURL
        $ch = curl_init('https://api.textlocal.in/send/');
        curl_setopt($ch, CURLOPT_POST, true);
        curl_setopt($ch, CURLOPT_POSTFIELDS, $data);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        $response = curl_exec($ch);
        curl_close($ch);
        
        // Process your response here
        return $response;
}


	//9408997342
//

header("content-type:application/json");
	
if($_SERVER['REQUEST_METHOD'] == "POST" || $_SERVER['REQUEST_METHOD'] == "GET")
{
	$obj = new Helper;
	$response = array();
	$data1 = array();

	$data['id'] =  $_REQUEST['order_id'];
	$data1['order_status'] =  'Delivered';
    $data1['pay_status'] =  'paid';
    $data1['del_date'] =  date('d-m-Y');
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
        $data = $obj->joinmutiple_master_farmer_detail_product('id' , $_REQUEST['order_id']);
        $proinfo = '';

        foreach($data as $skey=>$sval)
        {
            $proinfo .= " ".$sval['product_crop_name'] . "  ";
        }
        $message = 'Oreder Has Been Delivered Products::'. $proinfo . " On Date" . date('d-m-Y');

        $msgdata = sendSms($data[0]['farmer_mobileno'] , $data[0]['customer_mobileno'] , $message);

    if($row)
    {
    	if($obj->updateData($table,$data1,array("id" => $_REQUEST['order_id'])))
        {
            $response = array("data" => 200, "t_id" => $row[0]['id'] , 'res'=>$msgdata , 'fmob' => $data[0]['farmer_mobileno'] , 'umob'=> $data[0]['customer_mobileno']  );
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