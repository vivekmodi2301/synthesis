<?php 
$phpfiles=glob("../../include/php/*.php");
foreach ($phpfiles as $phpfile) {
	include_once($phpfile);
}
extract($_POST);
if($type=='roll'){
$student_data=fetchOne("select roll_no,stu_profile.name as stu, token_no,stu_profile.class_id,stu_profile.batch_id,class.name as cname,scholarship,batch.name as bname,stu_profile.name,wheree,old_student from stu_profile join class on class_id=class.id left join batch on batch_id=batch.id where roll_no='$roll' ");
?>
	<script type="text/javascript">
		$('#token_no').attr('readonly','readonly')
	</script>
<?php 
}else{
	$student_data=fetchOne("select roll_no,stu_profile.name as stu,  token_no,stu_profile.class_id,stu_profile.batch_id,class.name as cname,scholarship,batch.name as bname,stu_profile.name,wheree,old_student from stu_profile join class on class_id=class.id left join batch on batch_id=batch.id where token_no='$roll' ");
	// echo "select roll_no,stu_profile.name as stu,  token_no,stu_profile.class_id,stu_profile.batch_id,class.name as cname,scholarship,batch.name as bname,stu_profile.name from stu_profile join class on class_id=class.id join batch on batch_id=batch.id where token_no='$roll'";
	// print_r($student_data);
	?>
	<script type="text/javascript">
		$('#roll').attr('readonly','readonly')
	</script>
<?php 
}
if($student_data!=null && $student_data['wheree']!='leave')

	$fee_dtl=fetchOne("select * from class_fee_dtl where class_id='$student_data[class_id]' ");

	if(!$student_data['scholarship']){
		$student_data['scholarship']=0;
	}
	$scholarship=$fee_dtl['tution_fee']*$student_data['scholarship']/100;
	
	$tution_fee_with_scholarship=$fee_dtl['tution_fee']-($fee_dtl['tution_fee']*$student_data['scholarship']/100);
	if($student_data['old_student']=='n'){
		$fees_after_scholarship=$fee_dtl['total_fee']-$scholarship;
	}else{
		$fees_after_scholarship=$fee_dtl['old_total_fee']-$scholarship;
		$fee_dtl['gst_value'] = $fee_dtl['old_gst_value'];
		$fee_dtl['total_fee'] = $fee_dtl['old_total_fee'];
	}
	$fee_without_gst=$fee_dtl['total_fee']-$fee_dtl['gst_value'];
	?>
		<script type="text/javascript">
			$('#roll').val('<?php echo $student_data['roll_no']; ?>');
			$('#token_no').val('<?php echo $student_data['token_no']; ?>');
			$('#student_name').val('<?php echo $student_data['stu']; ?>');
			$('#class_name').val('<?php echo $student_data['cname']; ?>');
			$('#batch_name').val('<?php echo $student_data['bname']; ?>');
			$('#reg_fee').val('<?php echo $fee_dtl['reg_fee']; ?>');
			$('#tution_fee').val('<?php echo $fee_dtl['tution_fee']; ?>');
			$('#test_series_fee').val('<?php echo $fee_dtl['test_series_fees']; ?>');
			$('#study_material_fee').val('<?php echo $fee_dtl['study_matirial_fee']; ?>');
			$('#gst_per').val('<?php echo $fee_dtl['gst_per']; ?>');
			$('#gst_value').val('<?php echo $fee_dtl['gst_value']; ?>');
			$('#total_fee').val('<?php echo $fee_dtl['total_fee']; ?>');
			$('#fee_disc').val('<?php echo $student_data['scholarship']; ?>');
			$('#payble_tution_fee').val('<?php 	echo $tution_fee_with_scholarship; ?>');
			$('#fee_after_disc').val('<?php echo $fees_after_scholarship; ?>');
			$('#fee_without_gst').val('<?php echo $fee_without_gst ?>');
			$('#submit').removeAttr('disabled');
		</script>
	<?php 	
		$old_fee_dtl=fetchAll("select * from fee where roll='$student_data[roll_no]' ");
		$total_submit_fee=fetchOne("select sum(amount) as amount from fee where roll='$student_data[roll_no]' group by roll");
		// print_r($total_submit_fee);
		$total_installment=0;
		foreach ($old_fee_dtl as  $old_fee_dtl) {
			$ends = array('th','st','nd','rd','th','th','th','th','th','th');
			if (($total_installment %100) >= 11 && ($total_installment%100) <= 13)
			   $abbreviation = 'th';
			else
			   $abbreviation = $ends[$total_installment % 10];
			?>
				<div class="form-group">
	                <label class="col-lg-4 control-label">Received Amount (<?php if($total_installment==0){echo "Registration";}else{ if($total_installment==0){echo "1<sup><?php echo $abbreviation; ?></sup>";}else{echo $total_installment; }?><sup><?php echo $abbreviation; ?></sup> Installment <?php 	} ?>)</label>
	                <div class="col-lg-8">
	                	<input type="text" class="form-control" id="received_fee_1" value="<?php echo $old_fee_dtl['amount']; ?> " disabled="disabled">
	                    <?php echo "Pay By:-".$old_fee_dtl['pay_by']; 
	                    	echo " &nbsp;&nbsp;Cheque No.(if any):-".$old_fee_dtl['number'];
	                    	echo "&nbsp;&nbsp;Bank Name:-".$old_fee_dtl['bank_name'];
	                    	echo "&nbsp;&nbsp;Date:-".$old_fee_dtl['datee'];
	                     ?>
	                </div>
	            </div>
			<?php
			$total_installment=$total_installment+1;
		}
		if($total_submit_fee=='')
			$total_submit_fee['amount']=0;
		// echo $total_submit_fee['amount'];
	 		$total_fee_due=$fees_after_scholarship-$total_submit_fee['amount'];
			?>
			<script>
				$('#fee_due').val('<?php echo $total_fee_due; ?>')
			</script>
			<?php 
			if(isset($fee_dtl['total_fee']) && $total_submit_fee['amount']<$fee_dtl['total_fee']){
			$ends = array('th','st','nd','rd','th','th','th','th','th','th');
			if (($total_installment %100) >= 11 && ($total_installment%100) <= 13)
			   $abbreviation = 'th';
			else
			   $abbreviation = $ends[$total_installment % 10];
			?>
				<div class="form-group">
	                <label class="col-lg-4 control-label">Received Amount (<?php  echo $total_installment; ?><sup><?php echo $abbreviation; ?></sup> Installment)</label>
	                <div class="col-lg-8">
	                	<input type="number" min="0" max="<?php echo $total_fee_due; ?>" class="form-control amount" id="received_fee_<?php echo $total_installment; ?>" name="amount" value="" onchange="balance_amount(<?php echo $fees_after_scholarship; ?>,<?php echo $total_submit_fee['amount']; ?>,this.value,<?php echo $total_installment; ?>)" required>
	                    <input onchange="show_hide_chq_dd_no_box(this.value)" type="radio" name="pay_by" id="pay_by" value="cheque" required> By Cheque | <input type="radio" onchange="show_hide_chq_dd_no_box(this.value)" name="pay_by" id="pay_by" value="cash" required> Cash | <input onchange="show_hide_chq_dd_no_box(this.value)" type="radio" name="pay_by" id="pay_by" value="dd" required> By  NTFS/RTGS | <span id="chq_dd_no"></span>
	                </div>
	            </div>
	    <?php
}else if($student_data['wheree']=='leave'){
	?>
	<script type="text/javascript">
		alert("Student Leaved")
	</script>
	<?php 
}else{
	?>
	<script type="text/javascript">
		alert("Invalid roll no or token no");
	</script>
	<?php
}
	
	?>