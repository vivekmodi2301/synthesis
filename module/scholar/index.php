<?php 
	if(isset($do)){
		$page=$do;
	}else{
		$page="";
	}
	switch ($page) {
		case 'syn_a_reson':
		case 'syn_e_reson':
			include_once("module/$mod/add_scholar_reson.php");
			break;
		case 'syn_s_reson':
			include_once("module/$mod/see_scholar_reason.php");
			break;
			default:
			echo "Page not found";
			break;
	}

