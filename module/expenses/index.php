<?php 
	if(isset($do)){
		$page=$do;
	}else{
		$page="";
	}
	switch ($page) {
		case 'syn_a_expenses':
		case 'syn_e_expenses':
			include_once("module/$mod/add_expense.php");
			break;
		case 'syn_s_expenses':
			include_once("module/$mod/see_expenses.php");
			break;
		case 'syn_org_list':
			include_once("module/$mod/org.php");
			break;
		case 'org_edit':
			include_once("module/$mod/edit.php");
			break;
		case 'edit_exp':
			include_once("module/$mod/edit_expense.php");
			break;
		case 'see_pay':
			include_once("module/$mod/payment_list.php");
			break;
		case 'edit_pay':
			include_once("module/$mod/payment_edit.php");
			break;
		case 'add_pay':
			include_once("module/$mod/add_payment.php");
			break;
		default:
			echo "Page not found";
			break;
	}
?>