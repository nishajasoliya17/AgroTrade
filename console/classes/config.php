<?php
	session_start(); 
	error_reporting(E_ALL);

	define("HOST","localhost");
	define("USER","root");
	define("PASS","");
	define("DB","agrofarm");

	define("SERVER_NAME",$_SERVER["SERVER_NAME"]); 

	$root = $_SERVER["DOCUMENT_ROOT"];

	$protocol = 'http';
	define('PROTOCOL', $protocol ."://");

	define('WS_ROOT', "/agrofarm");
	define("FS_UPLOAD_PATH", $root.WS_ROOT."/upload/"); //path is tested;
	define("WS_UPLOAD_PATH", PROTOCOL.SERVER_NAME.WS_ROOT."/upload/"); //path is tested;

	



?>

