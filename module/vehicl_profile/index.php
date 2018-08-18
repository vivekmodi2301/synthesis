
<?php 

	if(isset($do)){
		$page=$do;
	}else{
		$page="";
	}
	switch ($page) {
		case 'syn_add':
			include_once("module/$mod/add_driver.php");
			break;
		case 'syn_see':
			include_once("module/$mod/see_driver_profile.php");
			break;
		case 'syn_action':
			include_once("module/$mod/action.php");
			break;
		case 'upload_csv':
			include_once("module/$mod/upload_vec.php");
			break;
		case 'csv_export':
			include_once("module/vehicl_profile/explode.php");
			break;
		default:
			echo "Page not found";
			break;
	}
?>