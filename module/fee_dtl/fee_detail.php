<?php
	$phpfiles=glob("../../include/php/*.php");
	foreach ($phpfiles as  $phpfile) {
		// echo $phpfile;
		include_once($phpfile);
	}
	$class_search_fee_detail = "";
	extract($_POST);
	$wh=" where 1 and wheree!='leave' and wheree!='inquiry' ";
    if($stu_name!=''){
    	$wh.=" and stu_profile.name like '%$stu_name%'";
    } 
    if($stu_f_name!=''){
    	$wh.=" and f_name like '%$stu_f_name%'";
    } 
    if( $stu_class!=''){
    	$wh.=" and class.id=$stu_class";
    	$class_search_fee_detail = " where class.id=$stu_class ";
    } 
    elseif( $stu_class==''){
        $wh.=" and class.id!=''";
    } 
    if( $stu_batch!=''){
    	$wh.=" and batch.id=$stu_batch";
    } 
    if($roll!=''){
        $wh.=" and (roll_no like '$roll%'";
    	$wh.=" or token_no like '$roll%')";
    } 
    if($s_from!='' && $s_to==''){
        $wh.=" and scholarship= $s_from";
    }
    elseif($s_from=='' && $s_to!=''){
        $wh.=" and scholarship= $s_to";
    }
    elseif($s_from!='' && $s_to!=''){
        $wh.=" and scholarship>= $s_from and scholarship<=$s_to ";
    }
    if($no_of_inst!=''){
        if($no_of_inst == 'registration'){
            $having=" HAVING COUNT(amount)=1";
        }elseif($no_of_inst == 0){
            $having=" HAVING COUNT(amount)=$no_of_inst";
        }elseif($no_of_inst>0){
            $having=" HAVING COUNT(amount)-1=$no_of_inst";
        }
    }else{
        $having=" HAVING COUNT(amount)>=0";  
    }
    if($data){
            $pageData = $data;
            $_SESSION['data'] = $pageData;
    }
    $pageData = 10;
    $class_dtl = fetchAll("select class.id as id,total_fee,old_total_fee,tution_fee from class_fee_dtl join class on class_id=class.id $class_search_fee_detail");
    // print_r($class_dtl);
    $final_total_fee = 0;
    foreach ($class_dtl as  $class_value) {
		$stu_detail = fetchAll("select id,old_student,scholarship from stu_profile where class_id=$class_value[id] and wheree!='leave' and wheree!='inquiry'");
		// echo "select id,old_student from stu_profile where class_id=$class_value[id] and wheree!='leave' and wheree!='inquiry'";
		foreach ($stu_detail as $stu_value) {
			if($stu_value['old_student']=='y'){
				if($stu_value['scholarship']>0){
					// echo $stu_value['scholarship']."hi<br>";
					$scholarship_amt = ($class_value['tution_fee']*$stu_value['scholarship'])/100;
					$final_total_fee= $final_total_fee+($class_value['old_total_fee']-$scholarship_amt); 
				}else{
					$final_total_fee += $class_value['old_total_fee']; 
				}

			}else{
				if($stu_value['scholarship']>0){
					// echo $stu_value['scholarship']."hi<br>";
					

					$scholarship_amt = ($class_value['tution_fee']*$stu_value['scholarship'])/100;
					$final_total_fee= $final_total_fee+($class_value['total_fee']-$scholarship_amt); 
				}else{
					$final_total_fee += $class_value['total_fee']; 
				}
			}

		// echo $final_total_fee."<br>";
		}
    }
    $total_recived_fee = fetchOne("select sum(amount) as fee,count(roll)  from fee");
    // print_r($total_recived_fee);
	//boreder not comming properly
?>
Total Fee Received : <span id="total" style="color:#990000;"><?php echo $total_recived_fee['fee']; ?></span> &nbsp; | &nbsp; Out of : <span id="outof" style="color:#990000;"><?php echo $final_total_fee ?></span> &nbsp; | &nbsp; Remaining Fee : <span id="remaning" style="color:#990000;"><?php echo $final_total_fee-$total_recived_fee['fee']; ?></span>  INR