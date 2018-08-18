<option value=""></option>
<?php 
	$phpfiles=glob("../../include/php/*.php");
	foreach ($phpfiles as  $phpfile) {
		include_once($phpfile);
	}
	extract($_POST);
	$sub_reason_here=fetchOne("select scholar_subreason from scholarship where id=$reason_id");
	$sub_reason_here=explode(',',$sub_reason_here['scholar_subreason']);
	foreach ($sub_reason_here as  $subvalue) {
		?>
		<option <?php if($sub_reason && $sub_reason==$subvalue){echo "selected";} ?> value="<?php echo $subvalue ?>"><?php echo $subvalue; ?></option>
		<?php
	}
?>