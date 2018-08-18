<?php 
	if(isset($do)){
		$page=$do;
	}else{
		$page="";
	}
	switch ($page) {
		case 'syn_i_per':
			include_once("module/$mod/perma_icrd.php");
			break;
		case 'syn_r_per':
			include_once("module/$mod/reg_icrd.php");
			break;
		case 'syn_lib_icrd':
			include_once("module/$mod/lib_icrd.php");
			break;
		default:
			echo "Page not found";
			break;
	}
?>