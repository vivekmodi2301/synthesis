<?php 

	if(isset($do)){
		$page=$do;
	}else{
		$page="";
	}
	switch ($page) {
		case 'syn_s_stu':
			include_once("module/$mod/see_all_stu.php");
			break;
		case 'syn_see_stu_profile':
			include_once("module/$mod/see_stu_profile.php");
			break;
			case 'csv_export':
			include_once("module/$mod/explode.php");
			break;
		default:
			echo "Page not found";
			break;
	}
?>