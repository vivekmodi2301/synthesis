<?php 
	if(isset($do)){
		$page=$do;
	}else{
		$page="";
	}
	switch ($page) {
		case 'syn_a_attndnce':
		case 'syn_e_attndnce':
			include_once("module/$mod/add_attndnce.php");
			break;
		case 'syn_s_class':
			include_once("module/$mod/see_clases.php");
			break;

		case 'syn_a_batch':
		case 'syn_e_batch':
			include_once("module/$mod/add_batch.php");
			break;
		case 'syn_s_batch':
			include_once("module/$mod/see_batches.php");
			break;
		default:
			echo "Page not found";
			break;
	}
?>