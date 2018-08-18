<?php 
	@session_start();
	// print_r($_SESSION);
	error_reporting(0);
	define('HOSTNAME','localhost',true);
	define('USERNAME','root',true);
	define('PASSWORD','',true);
	define('DB','masterdb',true);
	@define('DB2',$_SESSION['select_db'],true);
	// define('ROOT','http://TEST-PC/synthesis/',true);
	define('ROOT','http://localhost/synthesis/',true);

	define('USER','ozN1Kpl5RkmhT5tYqgL7MA',true);
	define('SENDERID','SNTSYS',true);
	define('CHANNEL','trans',true);
	define('DCS','0',true);
	define('FLASHSMS','0',true);
	define('ROUTE','15',true);
?>

