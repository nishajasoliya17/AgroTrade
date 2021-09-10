<?php 
require 'config.php';

	class Db 
	{
		protected $con;
		public function __construct( )
		{
				//$this->con = connect();
		}

		public function connect()
		{
			$this->con = mysqli_connect(HOST,USER,PASS,DB);
				if(!$this -> con)
				{
					echo "Error:".mysqli_error($this->con);
				}

				return $this->con;
		}

		public function inserData($tbl,$data,$empty=null,$emptydata = null)
		{
			
			/*echo $tbl;
			echo "<pre>";
			print_r($data);
			echo "<pre>";
			print_r(implode(",",array_keys($data)));
			echo "<pre>";
			print_r(implode(",",array_values($data)));
			echo "<pre>";*/

			$query = "insert into " . $tbl . " (" .implode(",",array_keys($data)).") values "."('".implode("','",array_values($data))."')";
			
			
			$res = mysqli_query($this->con,$query);
			if(!$res)
			{
				echo mysqli_error($this->con);
			}
			else
			{

			}

		}

		public function updateData($tbl,$data,$pk)
		{
			$query = "update ". $tbl ." set ";

			foreach($data as $key=>$value)
			{
				$query.= $key." = "."'".$value."'"." , ";
			}

			$query = rtrim($query," , ");
			$query .= " where ";

			foreach($pk as $key => $value)
			{
				$query .= $key ." = "  ."'".$value."'". " AND ";
			}
			$query = rtrim($query," AND ");
			

			$res = mysqli_query($this->con,$query);
			if(!$res)
			{
				echo mysqli_error($this->con);
			}
			else
			{

			}
			
		}
		public function getMasterData($tbl)
		{
			$data = array();
			$query = "select * from ".$tbl ;
			$res = mysqli_query($this->con,$query);
			while($row = mysqli_fetch_assoc($res))
			{
				$data [] =  $row;
			}

			return $data;
			
		}
	}

	
	

?>
