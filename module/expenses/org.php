<table class="table table-bordered">
	<tr>
		<td>S.No.</td>
		<td>Name</td>
		<td>Action</td>
		<td>See Detail</td>
	</tr>
	<?php 
	$sno = 1;
	$org_data = fetchAll("select id,name from organization");
	foreach ($org_data as  $org_value) {
	?>
	<tr>
		<td><?php echo $sno++; ?></td>
		<td><?php echo $org_value['name']; ?></td>
		<td><a href="<?php echo ROOT; ?>index/expenses/org_edit/<?php echo $org_value['id']; ?>">Edit</a></td>
		<td><a href="<?php echo ROOT; ?>index/expenses/syn_s_expenses/<?php echo $org_value['id']; ?>">See Detail</a></td>
	</tr>
	<?php } ?>
</table>