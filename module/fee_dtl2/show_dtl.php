<?php
error_reporting(0); 
$phpfiles=glob("../../include/php/*.php");
foreach ($phpfiles as $phpfile) {
	include_once($phpfile);
}
extract($_POST);
$student_data=fetchOne("select token_no,stu_profile.class_id,class.name as cname,batch.name as batch, scholarship,stu_profile.name from stu_profile join class on class_id=class.id join batch on batch_id=batch.id where roll_no='$roll' ");
// echo "select token_no,stu_profile.class_id,class.name as cname,batch.name as batch, scholarship,stu_profile.name from stu_profile join class on class_id=class.id join batch on batch_id=batch.id where roll_no='$roll' ";
$qry="select roll,sum(amount) as amount from pdc where statuss='recived' group by roll";
$pdcAmount=fetchOne($qry);
// echo $qry;
if($student_data!=null)
{
	$fee_dtl=fetchOne("select * from class_fee_dtl where class_id='$student_data[class_id]' ");
	$scholarship=$fee_dtl['tution_fee']*$student_data['scholarship']/100;
	$tution_fee_with_scholarship=$fee_dtl['tution_fee']-($fee_dtl['tution_fee']*$student_data['scholarship']/100);
	$fees_after_scholarship=$fee_dtl['total_fee']-$scholarship;
	?>
		<script type="text/javascript">
			$('#token_no').val('<?php echo $student_data['token_no']; ?>');
			$('#class_name').val('<?php echo $student_data['cname']; ?>');
			$('#batch_name').val('<?php echo $student_data['batch']; ?>');
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
			$('#pdc').val('<?php echo $pdcAmount['amount']; ?>')
			$('#submit').removeAttr('disabled');
		</script>
	<?php 	
		$old_fee_dtl=fetchAll("select * from fee where roll='$roll'");
		$total_submit_fee=fetchOne("select sum(amount) as amount from fee group by roll");
		//print_r($total_submit_fee);
		$total_installment=1;
		foreach ($old_fee_dtl as  $old_fee_dtl) {
			$ends = array('th','st','nd','rd','th','th','th','th','th','th');
			if (($total_installment %100) >= 11 && ($total_installment%100) <= 13)
			   $abbreviation = 'th';
			else
			   $abbreviation = $ends[$total_installment % 10];
			?>
				<div class="form-group">
	                <label class="col-lg-4 control-label">Received Amount (<?php echo $total_installment; ?><sup><?php echo $abbreviation; ?></sup> Installment)</label>
	                <div class="col-lg-8">
	                	<input type="text" class="form-control" id="received_fee_1" value="<?php echo $old_fee_dtl['amount']; ?> " disabled="disabled">
	                    <?php echo $old_fee_dtl['pay_by']; echo $old_fee_dtl['number']; ?>
	                </div>
	            </div>
			<?php
			$total_installment=$total_installment+1;
		}
		if($total_submit_fee=='')
			$total_submit_fee=0;
		// echo $total_submit_fee['amount'];
		$total_fee_due=$fees_after_scholarship-$total_submit_fee['amount']-$pdcAmount['amount'];
			?>
			<script>
				$('#fee_due').val('<?php echo $total_fee_due; ?>')
			</script>
			<?php 
		if($total_submit_fee['amount']<$fee_dtl['total_fee']){
			$ends = array('th','st','nd','rd','th','th','th','th','th','th');
			if (($total_installment %100) >= 11 && ($total_installment%100) <= 13)
			   $abbreviation = 'th';
			else
			   $abbreviation = $ends[$total_installment % 10];
			?>
				<div class="form-group">
	                <label class="col-lg-4 control-label">Received Amount (<?php echo $total_installment; ?><sup><?php echo $abbreviation; ?></sup> Installment)</label>
	                <div class="col-lg-8">
	                	<input type="number" min="0" max="<?php echo $total_fee_due; ?>" class="form-control amount" id="received_fee_1" name="amount" value="" onchange="balance_amount(<?php echo $fees_after_scholarship; ?>,<?php echo $total_submit_fee['amount']; ?>,this.value)" required>
	                    <input onchange="show_hide_chq_dd_no_box(this.value)" type="radio" name="pay_by" id="pay_by" value="cheque" required> By Cheque | <input type="radio" onchange="show_hide_chq_dd_no_box(this.value)" name="pay_by" id="pay_by" value="cash" required> Cash | <input onchange="show_hide_chq_dd_no_box(this.value)" type="radio" name="pay_by" id="pay_by" value="dd" required> By D.D. | <a href="" title="Print Receipt"><img src="<?php 	echo ROOT; ?>include/images/icon_print.png" height="30" width="30" /></a> | <span id="chq_dd_no"></span>
	                </div>
	            </div>
	    <?php
		}
	}
	else{
		?>
		<script type="text/javascript">
			alert("Roll no not exist");
			$('#token_no').val('');
			$('#batch_name').val('');
			$('#class_name').val('');
			$('#reg_fee').val('');
			$('#tution_fee').val('');
			$('#test_series_fee').val('');
			$('#study_material_fee').val('');
			$('#gst_per').val('');
			$('#gst_value').val('');
			$('#total_fee').val('');
			$('#fee_disc').val('');
			$('#payble_tution_fee').val('');
			$('#fee_after_disc').val('');
			$('#pdc').val('');
			$('#submit').removeAttr('disabled');
		</script>
		
		<?php
	}
	?>