<?php 
	if(isset($do)){
		$page=$do;
	}else{
		$page="";
	}
	switch ($page) {
		case 'syn_chng_yr':
			include_once("module/$mod/change_year.php");
			break;
		default:
			echo "Page not found";
			break;
	}
?>