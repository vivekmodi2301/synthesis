<?php 
	if(isset($do)){
		$page=$do;
	}else{
		$page="";
	}
	switch ($page) {
		case 'syn_a_lib':
			include_once("module/$mod/add.php");
			break;
	}
?>