<?php 
session_start(); ?>
<option value="">Select Batch</option>
<?php 
$phpfiles=glob("../../include/php/*.php");
foreach ($phpfiles as $phpfile) {
	include_once($phpfile);
}
extract($_POST);
$batch_data=fetchAll("select id,name from batch where class_id=$class_id");
foreach ($batch_data as $batch_value) {
	?>
		<option <?php if(isset($batch_id)&& $batch_id==$batch_value['id']){echo "selected";} ?> value="<?php echo $batch_value['id'];?>"><?php echo $batch_value['name'];?></option>
	<?php
}
?>