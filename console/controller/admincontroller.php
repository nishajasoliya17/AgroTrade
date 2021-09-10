<?php 
	class Admincontroller extends Controller
	{
		public function loadview($action)
		{
			echo $action;
			if($action == 'login')
			{
				//include 'login.html';
			}
		}
	}

