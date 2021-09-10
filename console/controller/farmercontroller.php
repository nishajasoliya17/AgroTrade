<?php 
    class FarmerController extends Controller
    {
        private $tbl = 'farmer'; 
        public function loadview($action)
        {
            
            if($action == 'listdata')
            {
               

               $row = $this->getMasterData($this->tbl);
                 
                include 'page/farmer/farmerlist.php';                
                
            }

            if($action == "detail")
            {
            
                //$row1 = $this->getMasterData('product');
                $row = $this->getSingleData('product',array("f_id" => $_REQUEST['id']));
                
                include 'page/farmer/farmerdetail.php';
            }
			
			
            if($action == "buydetail")
            {
            
                $row = $this->getSingleData('salemaster_fp',array("f_id" => $_REQUEST['id']));
                //print_r($row);
                include 'page/farmer/farmerbuy.php';
            }
           
        }
    }

