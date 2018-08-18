<?php 

	$phpfiles=glob("../../include/php/*.php");
	foreach ($phpfiles as $phpfile) {
		include_once($phpfile);
	}
	extract($_POST);
	// print_r($_POST);
	if($type=='roll'){
		$data=fetchOne("select stu_profile.id,stu_profile.name,class.name as class,batch.name as batch ,roll_no ,token_no, scholarship, class_fee_dtl.total_fee,tution_fee,wheree,old_student,old_total_fee from class join stu_profile on stu_profile.class_id=class.id left join batch on batch_id=batch.id join class_fee_dtl on class_fee_dtl.class_id=class.id where stu_profile.roll_no=$input_value");
	}

	elseif($type=='token'){
		$data=fetchOne("select stu_profile.id,stu_profile.name,class.name as class,batch.name as batch ,roll_no ,token_no, scholarship, class_fee_dtl.total_fee,tution_fee,wheree,old_student,old_total_fee from class join stu_profile on stu_profile.class_id=class.id left join batch on batch_id=batch.id join class_fee_dtl on class_fee_dtl.class_id=class.id where stu_profile.token_no=$input_value");
	}
	
if($data && $data['wheree']=='leave'){
?>
	<script type="text/javascript">
		alert("Student Leaved");
	</script>
<?php 
}else if($data){
	if($data['old_student']=='y'){
		$data['total_fee'] = $data['old_total_fee'];
	}
	$total_fee_to_paid=$data['total_fee']-($data['tution_fee']*$data['scholarship']/100);
	$submited_fee=fetchOne("select sum(amount) as amount,count(amount) as tot_inst from fee where roll='$data[roll_no]' group by roll");
	//echo "select sum(amount) as amount,count(amount) as tot_inst from fee where roll='$data[roll_no]' group by roll";
	if($submited_fee){
		$remaning_fee=$total_fee_to_paid-$submited_fee['amount'];
	// echo $remaning_fee;
	// echo "select sum(amount) as amount from fee where roll='$data[roll_no]' group by roll";
	}else{
		$submited_fee=array('amount'=>0);
		$remaning_fee=$total_fee_to_paid;
	}
?>
	<script type="text/javascript">
		$('#name').val('<?php echo $data['name'];?>');
		$('#roll_no').val('<?php echo $data['roll_no'];?>');
		$('#token_no').val('<?php echo $data['token_no'];?>');
		$('#class_id').val('<?php echo $data['class'];?>');
		$('#batch_id').val('<?php echo $data['batch'];?>');
		$('#fee_gst').val('<?php echo $data['total_fee'];?>');
		$('#scholarship').val('<?php echo $data['scholarship'];?>');
		$('#fee_to_pay').val('<?php echo $total_fee_to_paid;?>');
		$('#recived_fee').val('<?php echo $submited_fee['amount'];?>');
		$('#remaning_fee').val('<?php echo $remaning_fee;?>');
		$('#total_chq').val('<?php echo $submited_fee['tot_inst'];?>');
		$('#chq_no').html('<?php echo $submited_fee['tot_inst']+1;?>');
		chq_no
	</script>
<?php 
}else{
	?>
	<script type="text/javascript">
	alert("Invalid roll no or token no");
	$('#name').val('');
		$('#roll_no').val('');
		$('#token_no').val('');
		$('#class_id').val('');
		$('#batch_id').val('');
		$('#fee_gst').val('');
		$('#scholarship').val('');
		$('#fee_to_pay').val('');
		$('#recived_fee').val('');
		$('#remaning_fee').val('');
	</script>
	<?php
}
?>