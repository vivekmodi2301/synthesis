<?php 
	if(isset($do)){
		$page=$do;
	}else{
		$page="";
	}
	switch ($page) {
		case 'syn_a_users':
			include_once("module/$mod/add_users.php");
			break;
		case 'syn_s_users':
			include_once("module/$mod/see_users.php");
			break;
		default:
			echo "Page not found";
			break;
	}
?>