<?php 
	if(isset($do)){
		$page=$do;
	}else{
		$page="";
	}
	switch ($page) {
		case 'syn_a_stat':
		case 'syn_e_stat':
			include_once("module/$mod/add_stat.php");
			break;
		case 'syn_a_detail':
			include_once("module/$mod/add_one_pchq.php");
			break;
		case 'syn_s_stat':
			include_once("module/$mod/see_stat.php");
			break;
		case 'upload_csv':
			include_once("module/$mod/upload_stationary.php");
			break;
		default:
			echo "Page not found";
			break;
	}
?>