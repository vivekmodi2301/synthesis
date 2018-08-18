<?php
	if(isset($do)){
		$page=$do;
	}else{
		$page="";
	}
	switch ($page) {
		case 'recep_add':
		case 'recep_edit':
			include_once("module/reception/add_reception_stu.php");
			break;
		case 'recep_list':
			include_once("module/reception/see_reception_stu.php");
			break;
		case 'demo_add':
		case 'demo_edit':
			include_once("module/reception/add_demo.php");
			break;
		case 'upload_csv':
			include_once("module/reception/upload.php");
			break;
		case 'csv_export':
			include_once("module/reception/explode.php");
			break;
      default: echo "page not found";
      break;
    }
    ?>
