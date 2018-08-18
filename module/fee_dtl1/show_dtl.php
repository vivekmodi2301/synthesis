<?php 
$phpfiles=glob("../../include/php/*.php");
foreach ($phpfiles as $phpfile) {
	include_once($phpfile);
}
extract($_POST);
$student_data=fetchOne("select token_no,stu_profile.class_id,stu_profile.batch_id,class.name as cname,scholarship,batch.name as bname,stu_profile.name from stu_profile join class on class_id=class.id join batch on batch_id=batch.id where roll_no='$roll' ");
$fee_dtl=fetchOne("select * from class_fee_dtl where class_id='$student_data[class_id]' and batch_id='$student_data[batch_id]'");
$scholarship=$fee_dtl['tution_fee']*5/100;
$tution_fee_with_scholarship=$fee_dtl['tution_fee']-($fee_dtl['tution_fee']*5/100);
$fees_after_scholarship=$fee_dtl['total_fee']-$scholarship;
?>
	<script type="text/javascript">
		$('#token_no').val('<?php echo $student_data['token_no']; ?>');
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
		$('#payble_tution_fee').val('<?php 	echo $tution_fee_with_scholarship; ?>')
		$('#fee_after_disc').val('<?php echo $fees_after_scholarship; ?>')
	</script>
<?php 	
	$old_fee_dtl=fetchAll("select * from fee where roll='$roll'");
	$total_submit_fee=fetchOne("select count(amount) as amount from fee group by roll");
	print_r($total_submit_fee);
	foreach ($old_fee_dtl as  $old_fee_dtl_value) {
		?>
			<div class="form-group">
                <label class="col-lg-4 control-label">Received Amount (1<sup>st</sup> Installment)</label>
                <div class="col-lg-8">
                	<input type="text" class="form-control" id="received_fee_1" name="received_fee_1" value="" style="text-transform:capitalize;">
                    <input type="radio"> By Cheque | <input type="radio"> Cash | <input type="radio"> By D.D. | <a href="" title="Print Receipt"><img src="images/icon_print.png" height="30" width="30" /></a> | <input type="text" value="Cheque/ D.D. No." />
                </div>
            </div>
		<?php
	}
	if($total_submit_fee<$fee_dtl['total_fee']){?>
			<div class="form-group">
                <label class="col-lg-4 control-label">Received Amount (1<sup>st</sup> Installment)</label>
                <div class="col-lg-8">
                	<input type="text" class="form-control" id="received_fee_1" name="amount" value="" style="text-transform:capitalize;">
                    <input type="radio" name="pay_by" value="cheque"> By Cheque | <input type="radio" name="pay_by" value="cash"> Cash | <input type="radio" name="pay_by" value="dd"> By D.D. | <a href="" title="Print Receipt"><img src="<?php 	echo ROOT; ?>include/images/icon_print.png" height="30" width="30" /></a> | <input type="text" value="Cheque/ D.D. No." />
                </div>
            </div>
    <?php
	}
?>