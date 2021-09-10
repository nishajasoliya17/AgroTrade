<?php 
require 'config.php';

	class Db 
	{
		public $con;
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
		public function checkunique($tbl,$checkdata)
		{
			//$this -> getSingleData($tbl,$checkdata);

			
			if( $this -> getSingleData($tbl,$checkdata))
			{
				
				return true;
			}
			else
			{
				return false;
			}
		}

		public function insertData($tbl,$data,$checkempty=null,$checkdata = null)
		{
			
			if($checkempty)
			{
				
				if($this ->checkunique($tbl,$checkdata))
				{
					
					return false;

				}
				else
				{
					echo $query = "insert into " . $tbl . " (" .implode(",",array_keys($data)).") values "."('".implode("','",mysqli_real_escape_string($this->con,array_values($data)))."')";				
				
						$res = mysqli_query($this->con,$query);
						if(!$res)
						{
							echo mysqli_error($this->con);
						}
						else
						{
							return true;
						}

						
				}
			}
			else
			{
				 $query = "insert into " . $tbl . " (" .implode(",",array_keys($data)).") values "."('".implode("','",array_values($data))."')";				
				
						$res = mysqli_query($this->con,$query);
						if(!$res)
						{
							echo mysqli_error($this->con);
						}
						else
						{
							return true;
						}

						
			}

			

		}

		public function updateData($tbl,$data,$pk)
		{
			$query = "update ". $tbl ." set ";

			foreach($data as $key=>$value)
			{
				$query.= $key." = "."'".mysqli_real_escape_string($this->con,$value)."'"." , ";
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
				return true;
			}
			
		}

		public function deleteData($tbl,$pk)
		{
			$query = "delete from ". $tbl . "  ";

			
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
				return true;		
			}

		}

		public function getData($query)
		{
			$data = array();
			$res = mysqli_query($this->con,$query);

			
			if(mysqli_num_rows($res) >= 1)
			{
				while($row = mysqli_fetch_assoc($res))
				{
					$data [] =  $row;
					
				}	

				return $data;	
			}
			else
			{
				return false;
			}
			

			

			
		}

		
		public function getMasterData($tbl)
		{
			//$data = array();
			$query = "select * from ".$tbl ;
			return $this->getdata($query);
			
		}

		public function getSingleData($tbl,$pk)
		{
			$data = array();
			$query = "select * from " . $tbl ." where " ;

			foreach($pk as $key => $value)
			{
				$query .= $key ." = "  ."'".$value."'". " AND ";
			}
			$query = rtrim($query," AND ");
            $res = mysqli_query($this->con,$query);

			return $this->getdata($query);
		}

		
		public function innerJoin($left,$right,$lid,$rid,$join = null,$where=null)
		{
			
		
			if($join == null)
			{
				$join = "INNER";
			}

			$data = array();
			$s = "";
			$query = "";
			$res = mysqli_query($this->con,"DESCRIBE ". $left);
			while($row = mysqli_fetch_assoc($res))
			{
				$s .= $left.".".$row['Field'] ." as ". $left."_".$row['Field'] ." , ";
			}

			$res = mysqli_query($this->con,"DESCRIBE ". $right);
			while($row = mysqli_fetch_assoc($res))
			{
				$s .= $right.".".$row['Field'] ." as ". $right."_".$row['Field'] ." , ";
			}

			
			 $s = rtrim($s," , ");
			 


			 $query =" select " . $s . " from ". $left . " " . $join . " JOIN ". $right . " ON " . $left.".".$lid ." = " .$right.".".$rid;

			 if($where)
			 {
			 	foreach($where as $key => $value)
				{
					$query .=" where ".$key ." = "  ."'".$value."'". " AND ";
				}
				$query = rtrim($query," AND ");
			 }
			 
			$res = mysqli_query($this->con,$query);

			return $this->getdata($query);
			
		}

		public function joinmutiple_master_farmer_detail_product( $pkfld,$pk )
		{
			
			$left = 'salemaster_crop';
			$s = '';
			$res = mysqli_query($this->con,"DESCRIBE ". $left);
			while($row = mysqli_fetch_assoc($res))
			{
				$s .= $left.".".$row['Field'] ." as ". $left."_".$row['Field'] ." , ";
			}

			$left = 'saledetail_crop';
			$res = mysqli_query($this->con,"DESCRIBE ". $left);
			while($row = mysqli_fetch_assoc($res))
			{
				$s .= $left.".".$row['Field'] ." as ". $left."_".$row['Field'] ." , ";
			} 

			$left = 'farmer';
			$res = mysqli_query($this->con,"DESCRIBE ". $left);
			while($row = mysqli_fetch_assoc($res))
			{
				$s .= $left.".".$row['Field'] ." as ". $left."_".$row['Field'] ." , ";
			} 

			$left = 'product';
			$res = mysqli_query($this->con,"DESCRIBE ". $left);
			while($row = mysqli_fetch_assoc($res))
			{
				$s .= $left.".".$row['Field'] ." as ". $left."_".$row['Field'] ." , ";
			}

			$left = 'customer';
			$res = mysqli_query($this->con,"DESCRIBE ". $left);
			while($row = mysqli_fetch_assoc($res))
			{
				$s .= $left.".".$row['Field'] ." as ". $left."_".$row['Field'] ." , ";
			} 

			$s = rtrim($s," , ");

			//echo "<pre>";
			$query = "SELECT " .$s. "
				FROM salemaster_crop 
				INNER JOIN saledetail_crop
  				  ON salemaster_crop.id=saledetail_crop.scp_id
  				  INNER JOIN product 
  					ON saledetail_crop.pro_id=product.id
				INNER JOIN farmer 
  					ON product.f_id=farmer.id				
				INNER JOIN customer 
  					ON salemaster_crop.cust_id=customer.id where salemaster_crop.".$pkfld." = '".$pk."'
  					";				
  					
			$res = mysqli_query($this->con,$query);
			return $this->getdata($query);

			
		}


		public function joinmutiple_master_farmer_detail_ferti_pesti_info($pkfld,$pk)
		{
			
			$left = 'salemaster_fp';
			$s = '';
			$res = mysqli_query($this->con,"DESCRIBE ". $left);
			while($row = mysqli_fetch_assoc($res))
			{
				$s .= $left.".".$row['Field'] ." as ". $left."_".$row['Field'] ." , ";
			}

			$left = 'saledetail_fp';
			$res = mysqli_query($this->con,"DESCRIBE ". $left);
			while($row = mysqli_fetch_assoc($res))
			{
				$s .= $left.".".$row['Field'] ." as ". $left."_".$row['Field'] ." , ";
			} 

			$left = 'farmer';
			$res = mysqli_query($this->con,"DESCRIBE ". $left);
			while($row = mysqli_fetch_assoc($res))
			{
				$s .= $left.".".$row['Field'] ." as ". $left."_".$row['Field'] ." , ";
			} 

			$left = 'ferti_pesti_info';
			$res = mysqli_query($this->con,"DESCRIBE ". $left);
			while($row = mysqli_fetch_assoc($res))
			{
				$s .= $left.".".$row['Field'] ." as ". $left."_".$row['Field'] ." , ";
			}

			
			$s = rtrim($s," , ");

			//echo "<pre>";
			 $query = "SELECT " .$s. "
				FROM salemaster_fp 
				INNER JOIN saledetail_fp
  				  ON salemaster_fp.id=saledetail_fp.sfp_id
				INNER JOIN ferti_pesti_info 
  					ON saledetail_fp.fp_id=ferti_pesti_info.id
				INNER JOIN farmer 
  					ON salemaster_fp.f_id=farmer.id where salemaster_fp.".$pkfld." = '".$pk."'
  				";	
			$res = mysqli_query($this->con,$query);
			return $this->getdata($query);

			
		}

		public function joinmaster_trans_detail1($pkfld1, $pk1, $pkfld2,$pk2)
		{
			
			$left = 'salemaster_crop';
			$s = '';
			$res = mysqli_query($this->con,"DESCRIBE ". $left);
			while($row = mysqli_fetch_assoc($res))
			{
				$s .= $left.".".$row['Field'] ." as ". $left."_".$row['Field'] ." , ";
			}

			$left = 'customer';
			$res = mysqli_query($this->con,"DESCRIBE ". $left);
			while($row = mysqli_fetch_assoc($res))
			{
				$s .= $left.".".$row['Field'] ." as ". $left."_".$row['Field'] ." , ";
			} 

			$left = 'transporter';
			$res = mysqli_query($this->con,"DESCRIBE ". $left);
			while($row = mysqli_fetch_assoc($res))
			{
				$s .= $left.".".$row['Field'] ." as ". $left."_".$row['Field'] ." , ";
			} 

			$s = rtrim($s," , ");

			//echo "<pre>";
			/*echo $query = "SELECT " .$s. "
				FROM saledetail_crop 
				INNER JOIN salemaster_crop
  				  ON saledetail_crop.scp_id=salemaster_crop.id
				INNER JOIN transporter 
  					ON salemaster_crop.t_id=transporter.id where salemaster_crop.t_id = '7' && salemaster_crop.order_status = 'delivered'
  					";*/
  				$query = "SELECT " .$s. "
				FROM salemaster_crop 
				INNER JOIN transporter 
  					ON salemaster_crop.t_id=transporter.id 
  					INNER JOIN customer
  					ON salemaster_crop.cust_id=customer.id where salemaster_crop. ".$pkfld1." = '".$pk1."' && salemaster_crop.".$pkfld2." = '".$pk2."'
  					";
	
			$res = mysqli_query($this->con,$query);
			return $this->getdata($query);			
		}





		public function order_item_list($pkfld1, $pk1, $pkfld2,$pk2)
		{
			
			$left = 'salemaster_crop';
			$s = '';
			$res = mysqli_query($this->con,"DESCRIBE ". $left);
			while($row = mysqli_fetch_assoc($res))
			{
				$s .= $left.".".$row['Field'] ." as ". $left."_".$row['Field'] ." , ";
			}

			$left = 'saledetail_crop';
			$res = mysqli_query($this->con,"DESCRIBE ". $left);
			while($row = mysqli_fetch_assoc($res))
			{
				$s .= $left.".".$row['Field'] ." as ". $left."_".$row['Field'] ." , ";
			}

			$left = 'transporter';
			$res = mysqli_query($this->con,"DESCRIBE ". $left);
			while($row = mysqli_fetch_assoc($res))
			{
				$s .= $left.".".$row['Field'] ." as ". $left."_".$row['Field'] ." , ";
			} 

			$left = 'farmer';
			$res = mysqli_query($this->con,"DESCRIBE ". $left);
			while($row = mysqli_fetch_assoc($res))
			{
				$s .= $left.".".$row['Field'] ." as ". $left."_".$row['Field'] ." , ";
			} 

			$left = 'product';
			$res = mysqli_query($this->con,"DESCRIBE ". $left);
			while($row = mysqli_fetch_assoc($res))
			{
				$s .= $left.".".$row['Field'] ." as ". $left."_".$row['Field'] ." , ";
			} 




			$s = rtrim($s," , ");

			//echo "<pre>";
			/*echo $query = "SELECT " .$s. "
				FROM saledetail_crop 
				INNER JOIN salemaster_crop
  				  ON saledetail_crop.scp_id=salemaster_crop.id
				INNER JOIN transporter 
  					ON salemaster_crop.t_id=transporter.id where salemaster_crop.t_id = '7' && salemaster_crop.order_status = 'delivered'
  					";*/
  				$query = "SELECT " .$s. "
				FROM salemaster_crop 
				INNER JOIN saledetail_crop
  				  ON saledetail_crop.scp_id=salemaster_crop.id
  				   INNER JOIN product 
  					ON saledetail_crop.pro_id=product.id
				INNER JOIN farmer 
  					ON product.f_id=farmer.id
				INNER JOIN transporter 
  					ON salemaster_crop.t_id=transporter.id where salemaster_crop. ".$pkfld1." = '".$pk1."' && salemaster_crop.".$pkfld2." = '".$pk2."'
  					";
	
			$res = mysqli_query($this->con,$query);
			return $this->getdata($query);			
		}





		public function joinfertimaster_trans_detail1($pkfld1, $pk1, $pkfld2,$pk2)
		{
			
			$left = 'salemaster_fp';
			$s = '';
			$res = mysqli_query($this->con,"DESCRIBE ". $left);
			while($row = mysqli_fetch_assoc($res))
			{
				$s .= $left.".".$row['Field'] ." as ". $left."_".$row['Field'] ." , ";
			}

			

			$left = 'transporter';
			$res = mysqli_query($this->con,"DESCRIBE ". $left);
			while($row = mysqli_fetch_assoc($res))
			{
				$s .= $left.".".$row['Field'] ." as ". $left."_".$row['Field'] ." , ";
			} 

			$left = 'farmer';
			$res = mysqli_query($this->con,"DESCRIBE ". $left);
			while($row = mysqli_fetch_assoc($res))
			{
				$s .= $left.".".$row['Field'] ." as ". $left."_".$row['Field'] ." , ";
			} 

			$s = rtrim($s," , ");

			
  				$query = "SELECT " .$s. "
				FROM salemaster_fp 
				INNER JOIN farmer
  				  ON salemaster_fp.f_id=farmer.id
				INNER JOIN transporter 
  					ON salemaster_fp.t_id=transporter.id where salemaster_fp. ".$pkfld1." = '".$pk1."' && salemaster_fp.".$pkfld2." = '".$pk2."'
  					";		
  					
			$res = mysqli_query($this->con,$query);
			return $this->getdata($query);		
		}



		public function order_ferti_item_list($pkfld1, $pk1, $pkfld2,$pk2)
		{
			
			$left = 'salemaster_fp';
			$s = '';
			$res = mysqli_query($this->con,"DESCRIBE ". $left);
			while($row = mysqli_fetch_assoc($res))
			{
				$s .= $left.".".$row['Field'] ." as ". $left."_".$row['Field'] ." , ";
			}

			$left = 'saledetail_fp';
			$res = mysqli_query($this->con,"DESCRIBE ". $left);
			while($row = mysqli_fetch_assoc($res))
			{
				$s .= $left.".".$row['Field'] ." as ". $left."_".$row['Field'] ." , ";
			}

			$left = 'transporter';
			$res = mysqli_query($this->con,"DESCRIBE ". $left);
			while($row = mysqli_fetch_assoc($res))
			{
				$s .= $left.".".$row['Field'] ." as ". $left."_".$row['Field'] ." , ";
			} 

			$s = rtrim($s," , ");

			
  				$query = "SELECT " .$s. "
				FROM salemaster_fp 
				INNER JOIN saledetail_fp
  				  ON saledetail_crop.sfp_id=salemaster_fp.id
				INNER JOIN transporter 
  					ON salemaster_fp.t_id=transporter.id where salemaster_fp. ".$pkfld1." = '".$pk1."' && salemaster_fp.".$pkfld2." = '".$pk2."'
  					";
	
			$res = mysqli_query($this->con,$query);
			return $this->getdata($query);			
		}


		public function farmer_received_order()
		{
			
			$left = 'salemaster_crop';
			$s = '';
			$res = mysqli_query($this->con,"DESCRIBE ". $left);
			while($row = mysqli_fetch_assoc($res))
			{
				$s .= $left.".".$row['Field'] ." as ". $left."_".$row['Field'] ." , ";
			}

			$left = 'saledetail_crop';
			$res = mysqli_query($this->con,"DESCRIBE ". $left);
			while($row = mysqli_fetch_assoc($res))
			{
				$s .= $left.".".$row['Field'] ." as ". $left."_".$row['Field'] ." , ";
			} 

			$left = 'farmer';
			$res = mysqli_query($this->con,"DESCRIBE ". $left);
			while($row = mysqli_fetch_assoc($res))
			{
				$s .= $left.".".$row['Field'] ." as ". $left."_".$row['Field'] ." , ";
			} 

			$left = 'product';
			$res = mysqli_query($this->con,"DESCRIBE ". $left);
			while($row = mysqli_fetch_assoc($res))
			{
				$s .= $left.".".$row['Field'] ." as ". $left."_".$row['Field'] ." , ";
			}

			$left = 'customer';
			$res = mysqli_query($this->con,"DESCRIBE ". $left);
			while($row = mysqli_fetch_assoc($res))
			{
				$s .= $left.".".$row['Field'] ." as ". $left."_".$row['Field'] ." , ";
			} 

			$s = rtrim($s," , ");

			


  				$query = "SELECT " .$s. "
				FROM salemaster_crop 
				INNER JOIN saledetail_crop
  				  ON salemaster_crop.id=saledetail_crop.scp_id
				INNER JOIN product 
  					ON saledetail_crop.pro_id=product.id
  				INNER JOIN farmer
  					ON product.f_id= farmer.id
				INNER JOIN customer 
  					ON salemaster_crop.cust_id=customer.id where farmer.id= '3'
  					";
  					
			$res = mysqli_query($this->con,$query);
			return $this->getdata($query);

		}

		public function farmer_expense_get($id)
		{
			$left = 'expense';
			$res = mysqli_query($this->con,"DESCRIBE ". $left);
			while($row = mysqli_fetch_assoc($res))
			{
				$s .= $left.".".$row['Field'] ." as ". $left."_".$row['Field'] ." , ";
			} 

			$left = 'product';
			$res = mysqli_query($this->con,"DESCRIBE ". $left);
			while($row = mysqli_fetch_assoc($res))
			{
				$s .= $left.".".$row['Field'] ." as ". $left."_".$row['Field'] ." , ";
			} 

			$s = rtrim($s," , ");

			$query = "SELECT " .$s. " 
			,sum(expense.f_cost) as total_ferti_cost
			,sum(expense.p_cost) as total_p_cost
			,sum(expense.half_no_worker) as total_half_no_worker
			,sum(expense.half_sal) as total_half_sal
			,sum(expense.full_no_worker) as total_full_no_worker
			,sum(expense.full_sal) as total_full_sal
			,sum(expense.extra_cost) as total_extra_cost
			,sum(expense.total_income) as total_total_income

				FROM expense 
				INNER JOIN product
  				  ON expense.pro_id=product.id
				 where expense.f_id= ".$id." group by expense.pro_id";
  					
			$res = mysqli_query($this->con,$query);
			return $this->getdata($query);

		}	

			public function farmer_expense_ge_single($fid,$pid)
		{
			$left = 'expense';
			$res = mysqli_query($this->con,"DESCRIBE ". $left);
			while($row = mysqli_fetch_assoc($res))
			{
				$s .= $left.".".$row['Field'] ." as ". $left."_".$row['Field'] ." , ";
			} 

			$left = 'product';
			$res = mysqli_query($this->con,"DESCRIBE ". $left);
			while($row = mysqli_fetch_assoc($res))
			{
				$s .= $left.".".$row['Field'] ." as ". $left."_".$row['Field'] ." , ";
			} 

			$s = rtrim($s," , ");

			$query = "SELECT " .$s. " 			

				FROM expense 
				INNER JOIN product
  				  ON expense.pro_id=product.id
				 where expense.f_id= ".$fid." AND expense.pro_id = ".$pid."";
  					
			$res = mysqli_query($this->con,$query);
			return $this->getdata($query);

		}	
	}

	
	

?>
