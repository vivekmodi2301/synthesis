<?php
//exit;
// echo "hi";exit;
// print_r($_GET);
$date=date('d_M_Y',time());
$fileName = "include/stu_fee_exe/".$date.'_'."feelist.xls";
// $_POST['filename']=$date.'_'.time()."__studentlist.xls";
	//$boys_fund=mysqli_query($con,"SELECT id, fund from boysfund");
$excel = new ExcelWriter($fileName);

	if($excel==false)
	{
		//echo "hi";exit;
		echo $excel->error;
		die;
	}

$myArr=array(
"<b>S. No.</b>",
"<b>Roll No</b>",
"<b>Student Name</b>",
"<b>Father Name</b>",
"<b>Class</b>",
"<b>Batch</b>",
"<b>Total Fee</b>",
"<b>Scholarship</b>",
"<b>Fee to be Paid</b>",
"<b>Fee Deposit</b>",
"<b>Fee Due</b>",
"<b>Given Installments</b>",
);
$excel->writeLine($myArr);
$myArr=array();
if(isset($_GET['wh'])){
	$qry=$_GET['wh'];
}else{
	$qry="select roll_no,stu_profile.name,class.name as class,batch.name as batch,f_name,class_fee_dtl.total_fee,class_fee_dtl.tution_fee,scholarship,stu_profile.scholarship,tution_fee,old_student,old_total_fee from class join stu_profile on stu_profile.class_id=class.id join batch on stu_profile.batch_id=batch.id join class_fee_dtl on class_fee_dtl.class_id=class.id where wheree!='leave' and wheree!='inquiry'" ;
}
// echo $qry."hi";
$data=fetchAll($qry);
// print_r($data);exit;
	$i=1;
	foreach($data as $data){
    $myArr=array();
		extract($data);
		$myArr[]="$i";
		$myArr[]="$roll_no";
		$myArr[]="$name";
		$myArr[]="$f_name";
		$myArr[]="$class";
		$myArr[]="$batch";
		if($old_student=='n'){
			$myArr[]=$total_fee;
		}else{
			$myArr[]=$old_total_fee;
		}
        $old_fee_qry="select sum(amount) as amount from fee where roll='$roll_no' group by roll";
        // print_r($old_fee_qry);exit;
        $installment="select count(amount)-1 as amount from fee where roll='$roll_no' group by roll";
        $old_fee_submit=fetchOne($old_fee_qry);
        if(!$old_fee_submit){
            $old_fee_submit=array('amount'=>0);
        }
        // print_r($old_fee_submit);
        $total_installment=fetchOne($installment);
        if(!$total_installment){
            $total_installment=array('amount'=>0);
        }
        ?>
        <?php 
        if($old_student=='n'){
            $fee_to_be_paid=$total_fee-($tution_fee*$scholarship/100);
            $remaining_fee=$fee_to_be_paid-$old_fee_submit['amount'];
        }else{
        	// echo "hi";exit;
            $fee_to_be_paid=$old_total_fee-($tution_fee*$scholarship/100);
            $remaining_fee=$fee_to_be_paid-$old_fee_submit['amount'];
        }
		$myArr[]="$scholarship";
		$myArr[]="$fee_to_be_paid";
		if($old_fee_submit!=0){ 
			$myArr[]=$old_fee_submit['amount']; 
		}else{ $myArr[]="0";}
		$myArr[]="$remaining_fee";
		$myArr[]=$total_installment['amount'];
		@$genrate_by=loginFetchOne("select uname from login where id=$genrate_token");

		// echo  "select uname from login where id=$genrate_token";
		if(isset($genrate_token['uname'])){
			$myArr[] = $genrate_by['uname']; 
		}else{
			$myArr[] = "Master Admin";
		}
		$inquiry_date = explode('-',$inquiry_date);
		krsort($inquiry_date);
		$inquiry_date = implode('-',$inquiry_date);
		$myArr[]="$inquiry_date";
		// echo "$inquiry_date";
$excel->writeLine($myArr);
$i++;
	}

		$excel->close();
// addUpdate('profileexcel',$_POST,1);
$exe=glob("include/stu_fee_exe/*.xls");
//print_r($exe);
$count=count($exe);
$count-=1;
//echo $count;exit;
for($i=0;$i<$count;$i++){
	
	unlink($exe[$i]);
	
}//exit;
$curr_date = date('Y-m-d h:i:s');
$arr = array('name'=>$fileName,'datee'=>$curr_date);
addUpdate('all_stu_fee',$arr,1);
?>
<script type="text/javascript">
	location.href=root_path+"index/";
</script>