<?php 
	if(isset($do)){
		$page=$do;
	}else{
		$page="";
	}
	switch ($page) {
		case 'syn_a_office':
		case 'syn_e_office':
			include_once("module/$mod/add_officestaff.php");
			break;
		case 'syn_s_office':
			include_once("module/$mod/see_officestaff.php");
			break;
			default:
			echo "Page not found";
			break;
	}

