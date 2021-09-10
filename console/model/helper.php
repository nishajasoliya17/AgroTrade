<?php 
	class Helper extends Db
	{
		
		public function __construct()
		{
			$this->con = $this->connect();
		}

		public function is_login()
		{
			if(isset($_SESSION['login']))
			{
				return true;
			}
			else
			{
				return false;
			}
		}

		public function redirect($url)
		{
			
			echo "<script>window.location='".$url."';</script>";
		}

		public function getfilename($name)
		{
			return strtotime("now")."_".$name;
		}

		public function uploadfile($file,$name)
		{
			
			$fn = $file[$name]['name'];
			$fn = $this->getfilename($fn);
        	$tmp = $file[$name]['tmp_name'];
       		$path = FS_UPLOAD_PATH.$fn;      
        	
			move_uploaded_file($tmp,$path);

			return  WS_UPLOAD_PATH.$fn;
			
		}
		
		function escapeJsonString($value) {

            $escapers =     array("\\",     "/",   "\"",  "\n",  "\r",  "\t", "\x08", "\x0c");
            $replacements = array("\\\\", "\\/", "\\\"", "\\n", "\\r", "\\t",  "\\f",  "\\b");
            $result = str_replace($escapers, $replacements, $value);

            return $result;
        }
		function generateQrCode($qrdata)
        {
        	 $errorCorrectionLevel = 'H';       

    		$matrixPointSize = 10;
    		
        	$filename = FS_UPLOAD_PATH.'test'.md5($qrdata.'|'.$errorCorrectionLevel.'|'.$matrixPointSize).'.png';

       	 	QRcode::png($qrdata, $filename, $errorCorrectionLevel, $matrixPointSize, 2);    
        
    		return WS_UPLOAD_PATH.basename($filename); 
        }

	}