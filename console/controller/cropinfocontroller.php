<?php 
    class CropInfoController extends Controller
    {
        private $tbl = 'crop_info'; 
        public function loadview($action)
        {
            
            if($action == 'listdata')
            {
               

               $row = $this->getMasterData($this->tbl);
                 



               
                include 'page/crop_info/cropinfolist.php';                
                
            }
            
            if($action == "addform")
            {
                $cat = $this->getMasterData('categories');
                include 'page/crop_info/cropinfoform.php';
            }

            if($action == "add")
            {
                
                $data = $_POST;                
                $data['img'] = $this -> uploadfile($_FILES,"f");
               $this->insertData($this->tbl,$data);

               $this->redirect("index.php?controller=cropinfocontroller&action=listdata");
                
            }

            if($action == "editform")
            {
                $cat = $this->getMasterData('categories');
                $row = $this->getSingleData($this->tbl,array("id" => $_REQUEST['id']));
                
                include 'page/crop_info/cropinfoform.php';
            }

            if($action == "edit")
            {
                $data = $_POST;
                //print_r($_POST);
                if($_FILES['f']['name'] == null)
                {
                    $data['img'] = $_REQUEST['oldpath'];  
                    unset($data['oldpath']);  
                }
                else
                {
                    $data['img'] = $this -> uploadfile($_FILES,"f");
                
                }
            
                unset($data['oldpath']);
    
               $this->updateData($this->tbl,$data,array("id" => $_REQUEST['id']));

               $this->redirect("index.php?controller=cropinfocontroller&action=listdata");
            }


           /*if($action == "edit")
            {
                $data = $_POST;
                 if($_FILES['f'] ['name'] == null)
                {
                    $data['img'] = $_REQUEST['oldpath'];  
                    unset($data['oldpath']);  
                }
                else
                {
                    $data['img'] = $this -> uploadfile($_FILES,"f");
                    
                }
                //print_r($_POST);
                //die();
                //unset($data['oldpath']);
                print_r($_POST);
                die();
                $this->updateData($this->tbl,$data,array("id" => $_REQUEST['id']));
              $this->redirect("index.php?controller=cropinfocontroller&action=listdata");
            }*/

            if($action == "delete")
            {
                $this->deleteData($this->tbl,array("id" => $_REQUEST['id']));

               $this->redirect("index.php?controller=cropinfocontroller&action=listdata");
            }
        }
    }

