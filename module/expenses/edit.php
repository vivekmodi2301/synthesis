<?php 
	if($_GET['id']){
		$id=$_GET['id'];
		$org_data = fetchOne("select * from organization where id=$id");
	}
	if(isset($_POST['name'])){
		addUpdate('organization',$_POST,$id);
		?>
		<script type="text/javascript">
			location.href=root_path+"index/expenses/syn_org_list";
		</script>
		<?php 
	}
?>
<form method="post">
	<table class="table table-bordered">
		<tr>
			<td colspan="2">Organization Form</td>
		</tr>
		<tr>
			<td>Name</td>
			<td><input type="text" class="form-control" value="<?php echo $org_data['name']; ?>" name="name"></td>
		</tr>
		<tr>
			<td>Address</td>
			<td><textarea class="form-control" name="adrs"><?php echo $org_data['adrs']; ?></textarea></td>
		</tr>
		<tr>
			<td>State</td>
			<td><input type="text" class="form-control" value="<?php echo $org_data['state']; ?>" name="state"></td>
		</tr>
		<tr>
			<td>District</td>
			<td><input type="text" class="form-control" value="<?php echo $org_data['district']; ?>" name="district"></td>
		</tr>
		<tr>
			<td>Tehsil</td>
			<td><input type="text" class="form-control" value="<?php echo $org_data['tehsil']; ?>" name="tehsil"></td>
		</tr>
		<tr>
			<td>City / Town</td>
			<td><input type="text" class="form-control" value="<?php echo $org_data['city_town']; ?>" name="city_town"></td>
		</tr>
		<tr>
			<td>Pin No.</td>
			<td><input type="text" class="form-control" value="<?php echo $org_data['pin_no']; ?>" name="pin_no"></td>
		</tr>
		<tr>
			<td>Mobile(1)</td>
			<td><input type="text" class="form-control" value="<?php echo $org_data['s_mobile']; ?>" name="s_mobile"></td>
		</tr>
		<tr>
			<td>Mobile(2)</td>
			<td><input type="text" class="form-control" value="<?php echo $org_data['f_mobile']; ?>" name="f_mobile"></td>
		</tr>
		<tr>
			<td>Mobile(3)</td>
			<td><input type="text" class="form-control" value="<?php echo $org_data['m_mobile']; ?>" name="m_mobile"></td>
		</tr>
		<tr>
			<td>Landline</td>
			<td><input type="text" class="form-control" value="<?php echo $org_data['landline']; ?>" name="landline"></td>
		</tr>
		<tr>
			<td colspan="2"><input type="submit" value="Submit" class="btn btn-primary"></td>
		</tr>
	</table>
</form>