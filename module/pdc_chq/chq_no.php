<?php
	$phpfiles=glob("../../include/php/*.php");
	foreach ($phpfiles as  $phpfile) {
		include_once($phpfile);
	}
	extract($_POST);
	$chq_exist_fee=fetchRow("select 1 from fee where number=$chq_no");
	$chq_exist_pdc=fetchRow("select 1 from pdc where chq_no=$chq_no");
	if($chq_exist_fee || $chq_exist_pdc)
	{
		?>

		<script type="text/javascript">
			alert("Cheque alerady exist");
			$('#chq<?php echo $icn;?>').val('');
		</script>
		<?php
	}
?>