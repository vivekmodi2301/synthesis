<?php 
	if(isset($do)){
		$page=$do;
	}else{
		$page="";
	}
	switch ($page) {
		case 'syn_a_profile':
		case 'syn_e_profile':
			include_once("module/$mod/add_teachr.php");
			break;
		case 'syn_s_profile':
			include_once("module/$mod/see_teachr_profile.php");
			break;
		case 'syn_action':
			include_once("module/$mod/action.php");
		case 'upload_csv':
			include_once("module/$mod/upload_teacherProfile.php");
			break;
		case 'csv_export':
			include_once("module/teachr_profile/explode.php");
			break;		
		default:
			echo "Page not found";
			break;
	}
?>


