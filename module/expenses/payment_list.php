<?php 
	if(isset($_GET['did'])){
		delete('payment',$_GET['did']);
		?>
		<script type="text/javascript">
			location.href=root_path+"index/expenses/see_pay/<?php echo $_GET['sid']; ?>";
		</script>
		<?php 
	}
?>
<table class="table table-bordered">
	<tr>
		<td>S.No.</td>
		<td>Purpose</td>
		<td>Amount</td>
		<td>Date</td>
		<td>Pay Done By</td>
		<td>Behalf Of</td>
		<td>Pay Through</td>
		<td>Action</td>
	</tr>

	<?php 
	$sno = 1;
	$pay_data = fetchAll("select payment.id,bill_no,purpose,amount,datee,behalf_of,byy,pay_at_time,chq_no,pay_done,office_staff.name from payment join expenses on bill_no = expenses.id join office_staff on office_staff.id = behalf_of where bill_no = $_GET[id]");

	// print_r($pay_data);
?>

		<tr>
			<th style="text-align: center;" colspan="8"><a href="<?php echo ROOT; ?>index/expenses/add_pay/<?php echo $_GET['id']; ?>">Add New</a></th>
		</tr>
<?php 
	foreach ($pay_data as $pay_value) {
		?>
		<tr>
			<td><?php echo $sno++; ?></td>
			<td><?php echo $pay_value['purpose']; ?></td>
			<td><?php echo $pay_value['amount']; ?></td>
			<td><?php echo $pay_value['datee']; ?></td>
			<td><?php
				$pay_name = loginFetchOne("select uname from login where id=$pay_value[pay_done]");
				echo $pay_name['uname'];
			?></td>
			<td><?php echo $pay_value['name']; ?></td>
			<td><?php echo $pay_value['byy']; ?></td>
			<td>
				<a href="<?php echo ROOT ?>index/expenses/edit_pay/<?php echo $pay_value['id']; ?>">Edit</a>&nbsp;&nbsp;|&nbsp;&nbsp;
				<a href="#" onclick="del('<?php echo $pay_value['id']; ?>','<?php echo $_GET['id']; ?>')">Delete</a>
			</td>
		</tr>
		<?php 
	}
	?>
</table>
<script type="text/javascript">
	function del(did,sid){
		if(confirm("Do you want to delete")){
			location.href=root_path+"index/expenses/see_pay/did="+did+"/"+sid;
		}
	}
</script>