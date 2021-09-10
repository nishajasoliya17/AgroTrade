<?php 
require '../model/autoload.php';
$table = 'customer';
function sendSms($mobile, $otp)
 {

    $curl = curl_init();
    $api_key = "c84a98e2-ef24-11e9-b828-0200cd936042";
    curl_setopt_array($curl, array(
        CURLOPT_URL => "http://2factor.in/API/V1/" . $api_key . "/SMS/" . $mobile . "/" . $otp,
        CURLOPT_RETURNTRANSFER => true,
        CURLOPT_ENCODING => "",
        CURLOPT_MAXREDIRS => 10,
        CURLOPT_TIMEOUT => 30,
        CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
        CURLOPT_CUSTOMREQUEST => "GET",
        CURLOPT_POSTFIELDS => "",
    ));

    $response1 = curl_exec($curl);
    $err = curl_error($curl);

    curl_close($curl);

    if ($err) {
        echo "cURL Error #:" . $err;
    } else {
        
    }
}

	

header("content-type:application/json");
	
if($_SERVER['REQUEST_METHOD'] == "POST" || $_SERVER['REQUEST_METHOD'] == "GET")
{
	$obj = new Helper;
	$response = array();
	$data = array();

	$data['name'] =  $_REQUEST['name'];
	$data['address'] =  $_REQUEST['address'];
	$data['mobileno'] =  $_REQUEST['mobileno'];
	$data['password'] =  $_REQUEST['password'];
	$data['username'] =  $_REQUEST['username'];
	$data['lat'] =  $_REQUEST['lat'];
	$data['lgt'] =  $_REQUEST['lgt'];
	
    
    $otp = rand(1000, 9999);
    $data['otp'] =  $otp;
    $data['verify'] =  '0';
    if($obj->getSingleData($table,array("mobileno" => $data['mobileno'])))
    {
        $response = array("data" => 500);
    }
    else
    {
        sendSms($_REQUEST['mobileno'],$otp);

        if($obj->insertData($table,$data))
        {
            $response = array("data" => 200);
        }
        else
        {
            $response = array("data" => 100);   
        } 
    }

    





}

	echo json_encode($response);	
	
?>