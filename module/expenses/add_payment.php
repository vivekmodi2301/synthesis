<?php 
	if(isset($_GET['id'])){
		$id=$_GET['id'];
		$pay_data = fetchOne("select * from expenses join organization on org_name = organization.id where expenses.id=$id");
		// print_r($pay_data);
	}
	if(isset($_POST['amount'])){
		$_POST['bill_no'] = $id;
		$_POST['pay_done'] = $_SESSION['logindtl']['id'];
		addUpdate('payment',$_POST);
		?>
		<script type="text/javascript">
			location.href=root_path+"index/expenses/see_pay/<?php echo $pay_data['bill_no']; ?>";
		</script>
		<?php 
	}
?>
<form method="post">
	<table class="table table-bordered">
		<tr>
			<th colspan="2">Payment Form</th>
		</tr>
		<tr>
			<td>Organization Name</td>
			<td><?php
			 echo $pay_data['name']; ?></td>
		</tr>
		<tr>
			<td>Purpose</td>
			<td><input type="text"  class="form-control" value="<?php echo $pay_data['purpose']; ?>"></td>
		</tr>
		<tr>
			<td>Total Amount</td>
			<td><input type="text" disabled class="form-control" value="<?php echo $pay_data['total_amount']; ?>" id="tot"></td>
		</tr>
		<tr>
			<td>Paid</td>
			<td>
				<?php 
				$total_pay = fetchOne("select sum(amount) as tot from payment where bill_no=$pay_data[org_name]");
				?>
				<input type="text" disabled  class="form-control" value="<?php echo $total_pay['tot']; ?>" id="pay"></td>
		</tr>
		<tr>
			<td>Amount</td>
			<td><input type="text" name="amount"  class="form-control" onchange="chk_amount(this.value)" id="now" value="<?php echo $pay_data['amount']; ?>"></td>
		</tr>
		<tr>
			<td>Date</td>
			<td><input type="date" name="datee" value="<?php echo date('Y-m-d'); ?>" class="form-control"></td>
		</tr>
		<tr>
			<td>Payment By</td>
			<td>
				<input type="radio" onchange="show(this.value)" <?php if($pay_data['byy']=='cash'){ echo "checked";} ?> name="byy" value="cash">Cash
				<input type="radio" onchange="show(this.value)" <?php if($pay_data['byy']=='cheque'){ echo "checked";} ?> name="byy" value="cheque">Cheque
				<input type="radio" onchange="show(this.value)" <?php if($pay_data['byy']=='dd'){ echo "checked";} ?> name="byy" value="dd">DD
				<input type="number" id="showno" value='<?php if($id){echo $pay_data['chq_no'];} ?>' style="display: none;" name="chq_no" disabled>
			</td>
		</tr>
		<tr>
			<td>Paid To</td>
			<td><input type="text" name="paid_to" value="<?php echo $pay_data['paid_to']; ?>" class="form-control"></td>
		</tr>
		<tr>
			<td>Behalf Of</td>
			<td>
				<select class="form-control" id="gender" name="behalf_of">
            	<option></option>
                <?php 
                $office_data = fetchAll("select id,name from office_staff where department='director'");
                foreach ($office_data as $office_data) {
                    ?>
                    <option <?php if($pay_data['behalf_of']==$office_data['id']){echo "selected";} ?> value="<?php echo $office_data['id']; ?>"><?php echo $office_data['name']; ?></option>
                    <?php 
                }
                ?>
            </select>
			</td>
		</tr>
		<tr>
			<td colspan="2"><input type="submit" value="Submit" class="btn btn-primary"></td>
		</tr>
	</table>
</form>
<script type="text/javascript">
	
    function show(pay_by){
        if(pay_by == 'cheque' || pay_by == 'dd'){
            $('#showno').html("<input value='<?php if($id){echo $pay_data['chq_no'];} ?>' type='number' name='chq_no'>");
            $('#showno').removeAttr('disabled');
        }else{
            $('#showno').html('');
        }
    } 
</script>
<script type="text/javascript">
	function chk_amount(now_pay){
		// alert(now_pay);
		var tot = parseInt($('#tot').val());
		var pay = parseInt($('#pay').val());
		// alert(pay);
		var remaning = parseInt(tot-pay-now_pay);
		if(remaning < 0){
			alert("Please enter valid amount");
			$('#now').val('');
		}
	}
</script>
<?php if($id){
	?>
	<script type="text/javascript">
		show('<?php echo $pay_data['byy']; ?>')
	</script>
	<?php 
} ?>