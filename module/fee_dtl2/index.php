<?php 
	if(isset($do)){
		$page=$do;
	}else{
		$page="";
	}
	switch ($page) {
		case 'syn_a_feee':
			include_once("module/$mod/add_feee.php");
			break;
		case 'syn_csv_fee':
			include_once("module/$mod/csv_feee.php");
			break;
		case 'syn_s_fee':
			include_once("module/$mod/see_feee.php");
			break;
		case 'syn_al_fee':
			include_once("module/$mod/alott_feee.php");
			break;
		case 'syn_al_fee_list':
			include_once("module/$mod/alott_fee_detail.php");
			break;
		default:
			echo "Page not found";
			break;
	}
?>