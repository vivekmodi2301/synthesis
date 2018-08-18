<?php 

	if(isset($do)){
		$page=$do;
	}else{
		$page="";
	}
	switch ($page) {
		case 'syn_a_salary':
			include_once("module/$mod/add_salary.php");
			break;
		case 'syn_salary_list':
			include_once("module/$mod/list.php");
			break;
		case 'upload_csv':
			include_once("module/$mod/upload_salary.php");
			break;
		case 'csv_export':
			include_once("module/salary/explode.php");
			break;
		default:
			echo "Page not found";
			break;
	}
?>