<?php 
$phpfiles=glob("../../include/php/*.php");
foreach ($phpfiles as $phpfile) {
	include_once($phpfile);
}
extract($_POST);
$data=fetchRow("select roll_no from stu_profile where roll_no='$roll'");
if($data){
	echo "Roll no alerady exist";
	?>
	<script type="text/javascript">
		$('#roll').val('');
	</script>
	<?php
}
?>