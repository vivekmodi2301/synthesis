<?php 
	if(isset($do)){
		$page=$do;
	}else{
		$page="";
	}
	switch ($page) {
		case 'syn_a_employee':
		case 'syn_e_employee':
			include_once("module/$mod/add_emp.php");
			break;
		case 'syn_s_employee':
			include_once("module/$mod/see_emp_profile.php");
			break;
		case 'syn_action':
			include_once("module/$mod/action.php");
		break;
	    case 'upload_csv':
			include_once("module/$mod/upload_employee.php");
			break;
			case 'csv_export':
			include_once("module/$mod/explode.php");
		break;
		default: echo("Page not found");
		break;
	}
?>