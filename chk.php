<?php
$phpfiles=glob("include/php/*.php");
foreach ($phpfiles as $phpfile) {
	include_once($phpfile);
}
extract($_POST);
$data = loginFetchOne("select db,year from dbdata where db='$db' or year='$year'");
if($data && $data['db']==$db){
	?>
	<script type="text/javascript">
		$('#edb').html("Database name alerady exist");
		$('#db').val("");
	</script>
	<?php 
}
if($data && $data['year']==$year){
	?>
	<script type="text/javascript">
		$('#eyear').html("Database for this year is alerady exist");
		$('#year').val("");

	</script>
	<?php
}
?>
