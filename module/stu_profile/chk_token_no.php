<?php 
$phpfiles=glob("../../include/php/*.php");
foreach ($phpfiles as $phpfile) {
	include_once($phpfile);
}
extract($_POST);
$data=fetchRow("select token_no from stu_profile where token_no='$token_no'");
if($data){
	echo "Token no alerady exist";
	?>
	<script type="text/javascript">
		$('#genrate_token_no').val('');
	</script>
	<?php
}
?>