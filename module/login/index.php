<?php 
	if(isset($do)){
		$page=$do;
	}else{
		$page="";
	}
	switch ($page) {
		case 'syn_in':include_once("module/$mod/login.php");
			break;
		case 'syn_out':
			include_once("module/$mod/logout.php");
			break;
		case 'change_password':
			include_once("module/$mod/password_change.php");
			break;
		default:
			echo "Page not found";
			break;
	}
?>