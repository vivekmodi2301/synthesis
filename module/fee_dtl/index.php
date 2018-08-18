<?php 
	if(isset($do)){
		$page=$do;
	}else{
		$page="";
	}
		// echo $page;
	switch ($page) {
		case 'syn_a_feee':
			// echo $page;
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
		case 'syn_fee_dtl':
			include_once("module/$mod/see_fee_detail.php");
			break;
		case 'syn_e_detail':
			include_once("module/$mod/edit_fee_detail.php");
			break;
		case 'syn_d_detail':
			include_once("module/$mod/delete_fee.php");
			break;
		case 'syn_pdc_fee':
			include_once("module/$mod/pdc_fee.php");
			break;
		case 'syn_search_fee':
			include_once("module/$mod/search_by_date.php");
			break;
		case 'upload_csv':
			include_once("module/$mod/upload_fee.php");
			break;
		case 'csv_export':
			include_once("module/$mod/explode.php");
			break;
		default:
			echo "Page not found";
			break;
	}
?>