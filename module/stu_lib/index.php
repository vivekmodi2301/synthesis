<?php 
	if(isset($do)){
		$page=$do;
	}else{
		$page="";
	}
	switch ($page) {
		case 'syn_a_chq':
		case 'syn_e_chq':
			include_once("module/$mod/add_pchq.php");
			break;
		case 'syn_a_detail':
			include_once("module/$mod/add_one_pchq.php");
			break;
		case 'syn_s_chq':
			include_once("module/$mod/see_pchq.php");
			break;
		case 'syn_csv_pdc':
			include_once("module/$mod/csv_pdc.php");
			break;
		case 'syn_pdc_dtl':
			include_once("module/$mod/see_pchq_detail.php");
			break;
		case 'syn_e_detail':
			include_once("module/$mod/edit_pchq_detail.php");
			break;
		case 'syn_d_detail':
			include_once("module/$mod/delete_pdc.php");
			break;
		case 'syn_upcmng_pchq':
			include_once("module/$mod/upcmng_pchq.php");
			break;
		case 'syn_bounced_pchq':
			include_once("module/$mod/bouncd_pchq.php");
			break;
		case 'syn_clerd_pchq':
			include_once("module/$mod/clerd_pchq.php");
			break;
		case 'syn_exp_pchq':
			include_once("module/$mod/exprd_pchq.php");
			break;
		case 'syn_show_all_pdc':
			include_once("module/$mod/show_all_pdc.php");
			break;
		case 'syn_updated_pchq':
			include_once("module/$mod/update_cheque.php");
			break;
		case 'syn_due_pdc':
			include_once("module/$mod/due_pdc.php");
			break;
		default:
			echo "Page not found";
			break;
	}
?>