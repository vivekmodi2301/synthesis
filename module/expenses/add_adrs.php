<?php 
	$phpfiles = glob("../../include/php/*.php");
	// print_r($phpfiles);
	foreach ($phpfiles as $phpfile) {
		include_once($phpfile);
	}
	extract($_POST);
	$com_adrs = fetchOne("select adrs,state,district,tehsil,city_town,pin_no from organization where id='$com'");
	// echo "select adrs,state,district,tehsil,city_town,pin_no from organization where name='$com'";
	// print_r($com_adrs);
?>
<script type="text/javascript">
	$('#adrs').html('<?php echo $com_adrs['adrs'] ?>');
	$('#state').val('<?php echo $com_adrs['state'] ?>');
	$('#district').val('<?php echo $com_adrs['district'] ?>');
	$('#tehsil').val('<?php echo $com_adrs['tehsil'] ?>');
	$('#city').val('<?php echo $com_adrs['city_town'] ?>');
	$('#pin').val('<?php echo $com_adrs['pin_no'] ?>');


	$('#adrs').attr('disabled','disabled');
	$('#state').attr('disabled','disabled');
	$('#district').attr('disabled','disabled');
	$('#tehsil').attr('disabled','disabled');
	$('#city').attr('disabled','disabled');
	$('#pin').attr('disabled','disabled');
</script>