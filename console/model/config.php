<?php
	session_start(); 
	error_reporting(E_ALL);

	define("HOST","148.72.232.177");
	define("USER","agrofarm");
	define("PASS","dNhi78&4");
	define("DB","agrofarm");

	define("SERVER_NAME",$_SERVER["SERVER_NAME"]); 

	$root = $_SERVER["DOCUMENT_ROOT"];

	$protocol = 'http';
	define('PROTOCOL', $protocol ."://");

	define('WS_ROOT', "/agrofarm");
	define("FS_UPLOAD_PATH", $root.WS_ROOT."/upload/"); //path is tested;
	define("WS_UPLOAD_PATH", PROTOCOL.SERVER_NAME.WS_ROOT."/upload/"); //path is tested;

	require "../phpqrcode/qrlib.php";    



?>

