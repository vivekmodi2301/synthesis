<?php 
    if(isset($_GET['id'])){
        delete('provided_pg',$_GET['id']);
        ?>
            <script type="text/javascript">
                location.href=root_path+"index/provided_pg/syn_s_pg/";
            </script>
        <?php
    }
?>
<table class="table table-bordered">
	<tr>
		<th colspan="10">PG List</th>
	</tr>
	<tr>
		<td>S.No.</td>
		<td>Name</td>
		<td>Address</td>
		<td>State</td>
		<td>District</td>
		<td>Tehsil</td>
		<td>City</td>
		<td>Pin No.</td>
		<td>Mobile No.</td>
		<td>Action</td>
	</tr>
	<?php 
	$sno=1;
	$pg_detail=fetchAll("Select id,name,address,state,district,tehsil,city,pin,mobile from provided_pg");
	foreach ($pg_detail as $pg_detail) {
		?>
		<tr>
			<td><?php echo $sno++; ?></td>
			<td><?php echo $pg_detail['name']; ?></td>
			<td><?php echo $pg_detail['address']; ?></td>
			<td><?php echo $pg_detail['state']; ?></td>
			<td><?php echo $pg_detail['district']; ?></td>
			<td><?php echo $pg_detail['tehsil']; ?></td>
			<td><?php echo $pg_detail['city']; ?></td>
			<td><?php echo $pg_detail['pin']; ?></td>
			<td><?php echo $pg_detail['mobile']; ?></td>
			<td><a href="<?php echo ROOT; ?>index/provided_pg/syn_e_pg/<?php echo $pg_detail['id']; ?>"><img src="<?php echo ROOT; ?>include/images/profile_edit.png" height="20" width="20" /></a> | <a href="#" onclick="del(<?php echo $pg_detail['id'];?>)"><img src="<?php echo ROOT; ?>include/images/trash.png" height="20" width="20" /></a></td>
		</tr>
		<?php
	}
	?>
</table>
<script type="text/javascript">
	
  function del(did){
    if(confirm("Do you really want to delete")){
        location.href=root_path+"index/provided_pg/syn_s_pg/"+did;
    }
  }
</script>