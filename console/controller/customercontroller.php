<?php 
    class CustomerController extends Controller
    {
        private $tbl = 'customer'; 
        public function loadview($action)
        {
            
            if($action == 'listdata')
            {
               

               $row = $this->getMasterData($this->tbl);
                 
                include 'page/customer/customerlist.php';                
                
            }

            if($action == "detail")
            {
                
                $row = $this->getSingleData('salemaster_crop',array("cust_id" => $_REQUEST['id']));
        
        
               include 'page/customer/customerdetail.php';
            }
           
        }
    }

