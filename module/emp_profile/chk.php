<?php 
	$phpfiles=glob("../../include/php/*.php");
	foreach ($phpfiles as  $phpfile) {
		include_once($phpfile);
	}
	extract($_POST);
	$roll = fetchRow("select id from employee_profile where emp_id=$eid");
	$troll = fetchRow("select id from teacher_profile where faculty_id=$eid");
	$vroll = fetchRow("select id from teacher_profile where driver_id=$eid");
	if($roll){
		?>
		<script type="text/javascript">
			alert("Alerady exist");
			$('#roll').val('');
		</script>
		<?php 
	}elseif($troll){
		?>
		<script type="text/javascript">
			alert("Alerady exist");
			$('#roll').val('');
		</script>
		<?php 
	}elseif($vroll){
		?>
		<script type="text/javascript">
			alert("Alerady exist");
			$('#roll').val('');
		</script>
		<?php 
	}
	
?>
