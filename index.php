<?php
session_start();
// session_destroy();
$phpfiles=glob("include/php/*.php");
//$obj=new pro();
 error_reporting(0);
 // session_destroy();
// print_r($_GET);//exit;
// print_r($_SESSION);
foreach ($phpfiles as $phpfile) {
	include_once($phpfile);
}
include_once('header.php');
$mod="login";
$do="syn_in";
if(isset($_SESSION['logindtl'])){

if(isset($_GET['mod']) && $_GET['do']!='syn_in')
	{
		$mod=$_GET['mod'];
		$do=(isset($_GET['do']))?$_GET['do']:'';
	}
	else{

		$mod="stu_profile";
		$do="syn_see_stu_profile";	
	}
}
// echo "$do";exit;
if(file_exists("module/$mod/index.php")){
	// echo "aja";
	require("module/$mod/index.php");
}else{
	echo "Not found";
}
include_once('footer.php');
?>