<?php 
    class DiseaseController extends Controller
    {
        private $tbl = 'disease'; 
        public function loadview($action)
        {
            
            if($action == 'listdata')
            {
               $row = $this->getMasterData($this->tbl);         

               
                include 'page/disease/diseaselist.php';                
                
            }
            
            if($action == "addform")
            {
                include 'page/disease/diseaseform.php';
            }

            if($action == "add")
            {
                
                $data = $_POST;                
               // $data['img'] = $this -> uploadfile($_FILES,"f");
               $this->insertData($this->tbl,$data);

               $this->redirect("index.php?controller=diseasecontroller&action=listdata");
                
            }

            if($action == "editform")
            {
                $row = $this->getSingleData($this->tbl,array("id" => $_REQUEST['id']));
                
                include 'page/disease/diseaseform.php';
            }

            if($action == "edit")
            {
                $data = $_POST;
                print_r($_POST);
               /* if($_FILES['f'] == null)
                {
                    $data['img'] = $_REQUEST['oldpath'];    
                }
                else
                {
                    $data['img'] = $this -> uploadfile($_FILES,"f");
                    
                }
                
                unset($data['oldpath']);*/
                
                $this->updateData($this->tbl,$data,array("id" => $_REQUEST['id']));
                $this->redirect("index.php?controller=diseasecontroller&action=listdata");
            }

            if($action == "delete")
            {
                $this->deleteData($this->tbl,array("id" => $_REQUEST['id']));

               $this->redirect("index.php?controller=diseasecontroller&action=listdata");
            }
        }
    }
