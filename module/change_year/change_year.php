<?php 
	if(isset($_POST['year'])){
		$_SESSION['select_db']=$_POST['year'];
		?>
		<script>
			location.href=root_path+"index";
		</script>
		<?php
	}
?>
<form method="post">
	Select year
	<select name="year" class="form-control" >
		<option value=""></option>	
		<?php 
			$year_detail=loginFetchAll("select id,db,`year` from dbdata");
			foreach ($year_detail as  $year_value) {
			?>
				<option value="<?php echo $year_value['db'];?>"><?php echo $year_value['year'];?></option>
			<?php
			}
		?>
	</select>
	<input type="submit" value="Submit">
</form>