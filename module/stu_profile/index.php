
<?php 

	if(isset($do)){
		$page=$do;
	}else{
		$page="";
	}
	switch ($page) {
		case 'syn_a_studnt':
			include_once("module/$mod/add_studnt.php");
			break;
		case 'syn_action':
			include_once("module/$mod/action.php");
			break;
		case 'syn_webcamClass':
			include_once("module/$mod/webcamClass.php");
			break;

		case 'syn_e_studnt':
			include_once("module/$mod/edit_stu_profile.php");
			break;
		case 'syn_see_stu_profile':
			include_once("module/$mod/see_stu_profile.php");
			break;
		case 'syn_del_stu':
			include_once("module/$mod/del_stu.php");
			break;
		case 'syn_al_fee':
			include_once("module/$mod/alott_feee.php");
			break;
		case 'syn_al_fee_list':
			include_once("module/$mod/alott_fee_detail.php");
			break;
		case 'syn_stud_csv':
			include_once("module/$mod/stud_csv.php");
			break;
		case 'syn_demo_class_list':
			include_once("module/$mod/demo_class.php");
			break;
		case 'exp_demo_class_list':
			include_once("module/$mod/exp_demo.php");
			break;
		case 'syn_msg':
			include_once("module/$mod/msg.php");
			break;
		case 'syn_num':
			include_once("module/$mod/num.php");
			break;
		case 'syn_a_s':
			include_once("module/$mod/add_stu.php");
			break;
		case 'other_dtl':
		// echo "hi aja";
			include_once("module/$mod/other_detail.php");
			// echo "aja";
			break;
		case 'syn_pdc_msg':
		// echo "hi aja";
			include_once("module/$mod/pdc_msg.php");
			// echo "aja";
			break;
		case 'syn_reg_msg':
		// echo "hi aja";
			include_once("module/$mod/reg_msg.php");
			// echo "aja";
			break;
		case 'syn_other_dtl':
		// echo "hi aja";
			include_once("module/$mod/other_detail.php");
			// echo "aja";
			break;
		case 'syn_list_other_dtl':
		// echo "hi aja";
			include_once("module/$mod/list_other_dtl.php");
			// echo "aja";
			break;
		case 'del_all':
		// echo "hi aja";
			include_once("module/$mod/delete_permanent.php");
			// echo "aja";
			break;
		case 'upload_csv':
			include_once("module/$mod/upload_studentProfile.php");
			break;
			case 'csv_export':
			include_once("module/$mod/explode.php");
			break;
		default:
			echo "Page not found";
			break;
	}
?>