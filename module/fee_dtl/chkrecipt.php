<?php
	$phpfiles=glob("../../include/php/*.php");
	foreach ($phpfiles as  $phpfile) {
		include_once($phpfile);
	}
	extract($_POST);
	$fetchRecipt=fetchRow("select id from fee where recipt_no=$recipt_no and id!=$fee_id");
	if($fetchRecipt){
		?>
		<script type="text/javascript">
			$('#recipt_no').val('');
			$('#erecipt').html("recipt_no alerady taken");

		</script>
		<?php 
	}
?>