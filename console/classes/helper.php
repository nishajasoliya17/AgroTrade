<?php 
	class Helper extends Db
	{
		
		public function __construct()
		{
			$this->con = $this->connect();
		}
	}