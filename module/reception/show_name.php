<option></option>
<?php
session_start();
	$phpfiles=glob("../../include/php/*.php");
	foreach ($phpfiles as  $phpfile) {
		include_once($phpfile);
	}
	extract($_POST);
		$office_staff_name=fetchAll("Select id,name from office_staff where department='$option'");
		foreach ($office_staff_name as  $office_staff_name) {
		?>
			<option value="<?php echo $office_staff_name['id'];?>"><?php echo $office_staff_name['name'];?></option>
		<?php
		}
?>	