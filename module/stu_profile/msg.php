<?php 
	if(isset($_POST['from'])){
		$total_data=fetchOne("select count(inquiry_date) as tot from stu_profile where inquiry_date>='$_POST[from]' and inquiry_date<='$_POST[to]'");
		// $pdc_total_data=fetchOne("select count(submit_by) as tot from pdc where datee>='$_POST[from]' and datee<='$_POST[to]'");
		// $fee_total_data=fetchOne("select count(submit_by) as tot from fee where datee>='$_POST[from]' and datee<='$_POST[to]'");
		$total_class_data=fetchAll("select count(class_id) as tot,class.name as class from stu_profile join class on class_id=class.id where inquiry_date>='$_POST[from]' and inquiry_date<='$_POST[to]' group by class_id");
		$total_office_data=fetchAll("select count(genrate_token) as tot,genrate_token from stu_profile where inquiry_date>='$_POST[from]' and inquiry_date<='$_POST[to]' group by genrate_token");
		// $total_pdc_amount=fetchOne("select sum(amount) as amount from pdc where datee>='$_POST[from]' and datee<='$_POST[to]'");
		// $total_fee_amount=fetchOne("select sum(amount) as amount from fee where datee>='$_POST[from]' and datee<='$_POST[to]'");
		// $total_pdc_data=fetchAll("select count(amount) as tot,sum(amount) as amount,submit_by from pdc where datee>='$_POST[from]' and datee<='$_POST[to]' group by submit_by");
		// $total_fee_data=fetchAll("select count(amount) as tot,sum(amount) as amount,submit_by from fee where datee>='$_POST[from]' and datee<='$_POST[to]' group by submit_by");
		// print_r($total_office_data);
		$wh=" where 1 ";
		foreach ($total_office_data as $value) {
			$wh.=" and id!=$value[genrate_token]";
		}
		// $pdc_wh=" where 1 ";

		// foreach ($total_pdc_data as $total_pdc_value) {
		// 	$pdc_wh.=" and id!=$total_pdc_value[submit_by]";
		// }
		// $fee_wh=" where 1 ";

		// foreach ($total_fee_data as $total_fee_value) {
		// 	$fee_wh.=" and id!=$total_fee_value[submit_by]";
		// }
		$no_data=loginFetchAll("select uname as name from login $wh and dept='recption'");
		// $pdc_no_data=loginFetchAll("select uname as name from login $pdc_wh and dept='accountant'");

		// $fee_no_data=loginFetchAll("select uname as name from login $fee_wh and dept='accountant'");
		$_POST['from']=explode('-',$_POST['from']);
		$_POST['to']=explode('-',$_POST['to']);
		krsort($_POST['from']);
		krsort($_POST['to']);
		$_POST['from']=implode('-',$_POST['from']);
		$_POST['to']=implode('-',$_POST['to']);
		$msg="Total enquiry date from ($_POST[from]) to($_POST[to]) Total inquiry = $total_data[tot]";
		foreach ($total_class_data as $total_class_value) {
			$msg.=" ,$total_class_value[class] = $total_class_value[tot]";
		}
		foreach ($total_office_data as $total_office_value) {
			$name=loginFetchOne("select uname from login where id=$total_office_value[genrate_token]");
			// echo "select uname from login where id=$total_office_value[genrate_token]";
			$msg.=" ,$name[uname] = $total_office_value[tot] ";
		}
		foreach ($no_data as $no_value) {
			$msg.=" ,$no_value[name] = 0 ";
		}

		
		// $msg.="Total pdc recived date from ($_POST[from]) to($_POST[to]) Total amount=$total_pdc_amount[amount] Total pdc = $pdc_total_data[tot]";
		// foreach ($total_pdc_data as $total_pdc_value) {
		// 	$name=loginFetchOne("select uname from login where id=$total_pdc_value[submit_by]");
		// 	$msg.=" ,$name[uname] = $total_pdc_value[tot]($total_pdc_value[amount]) ";
		// }
		// foreach ($pdc_no_data as $pdc_no_value) {
		// 	$msg.=" ,$pdc_no_value[name] = 0 ";
		// }


		// $msg.="Total fee recived date from ($_POST[from]) to($_POST[to]) Total amount=$total_fee_amount[amount] Total fee = $fee_total_data[tot]";
		// foreach ($total_fee_data as $total_fee_value) {
		// 	$name=loginFetchOne("select uname from login where id=$total_fee_value[submit_by]");
		// 	$msg.=" ,$name[uname] = $total_fee_value[tot]($total_fee_value[amount]) ";
		// }
		// foreach ($fee_no_data as $fee_no_value) {
		// 	$msg.=" ,$fee_no_value[name] = 0 ";
		// }
		$mobile=fetchOne("select mobile from director");
		$message=$msg;
		$number=$mobile['mobile'];
		$message=rawurlencode($message);
		$ch=curl_init('http://dnd.saakshisoftware.in/api/mt/SendSMS?APIKEY='.user.'&senderid='.senderid.'&channel='.channel.'&DCS='.DCS.'&flashsms='.flashsms.'&number='.$number.'&text='.$message.'&route='.route.'');
		$data = curl_exec($ch);
		?>
		<script type="text/javascript">
			location.href=root_path+"index/"
		</script>
		<?php
	}
?>
<form method="post">
	<table class="table table-borderd">
		<tr>
			<td><input required type="date" class="form-control" name="from"></td>
			<td><input required type="date" class="form-control" name="to"></td>
		</tr>
		<tr>
			<td colspan="2"><input type="submit" value="SEND" class="btn btn-danger" style="width: 100%;" ></td>
		</tr>
	</table>
</form>