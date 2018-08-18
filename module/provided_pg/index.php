<?php 
	if(isset($do)){
		$page=$do;
	}else{
		$page="";
	}
	switch ($page) {
		case 'syn_a_pg':
		case 'syn_e_pg':
			include_once("module/$mod/add_pg.php");
			break;
		case 'syn_s_pg':
			include_once("module/$mod/see_pg.php");
			break;
			default:
			echo "Page not found";
			break;
	}

