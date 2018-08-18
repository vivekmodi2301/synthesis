<?php 
	$data=fetchOne("select mobile from director where id=1");
	if(isset($_POST['mobile'])){
		addUpdate('director',$_POST,1);
		?>
		<script type="text/javascript">
			location.href=root_path+"index/stu_profile/syn_see_stu_profile";
		</script>
		<?php
	}
?>
<form method="post">
	<table class="table table-bordered">
		<tr>
			<td>Mobile No.</td>
			<td><input required value="<?php echo $data['mobile']; ?>" type="text" name="mobile" class="form-control"></td>
		</tr>
		<tr>
			<td colspan="2"><input type="submit" value="Submit" class="btn btn-danger"></td>
		</tr>
	</table>
</form>