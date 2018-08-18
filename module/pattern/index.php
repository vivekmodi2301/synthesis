<?php 
	if(isset($do)){
		$page=$do;
	}else{
		$page="";
	}
	switch ($page) {
		case 'syn_a_patt':
			include_once("module/$mod/add_pattern.php");
			break;
		case 'syn_e_patt':
			include_once("module/$mod/edit_pattern.php");
			break;
		case 'syn_s_patt':
			include_once("module/$mod/see_pattern.php");
			break;


		case 'syn_a_coloumn':
			include_once("module/$mod/add_coloumn.php");
			break;
		case 'syn_e_coloumn':
			include_once("module/$mod/edit_coloumn.php");
			break;
		case 'syn_s_coloumn':
			include_once("module/$mod/see_coloumn.php");
			break;

		default:
			echo "Page not found";
			break;
	}
?>