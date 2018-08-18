<?php 
	if(isset($_POST['from'])){
		$total_data=fetchOne("select count(registration_date) as tot from stu_profile where registration_date>='$_POST[from]' and registration_date<='$_POST[to]'");
		$total_class_data=fetchAll("select count(class_id) as tot,class.name as class from stu_profile join class on class_id=class.id where registration_date>='$_POST[from]' and registration_date<='$_POST[to]' group by class_id");
		$total_office_data=fetchAll("select count(genrate_token) as tot,registration_by as genrate_token from stu_profile where registration_date>='$_POST[from]' and registration_date<='$_POST[to]' group by registration_by");
		// print_r($total_office_data);//exit;
		$wh=" where 1 ";
		foreach ($total_office_data as $value) {
			$wh.=" and id!=$value[genrate_token]";
		}
		$no_data=loginFetchAll("select uname as name from login $wh and dept='accountant'");
		$_POST['from']=explode('-',$_POST['from']);
		$_POST['to']=explode('-',$_POST['to']);
		krsort($_POST['from']);
		krsort($_POST['to']);
		$_POST['from']=implode('-',$_POST['from']);
		$_POST['to']=implode('-',$_POST['to']);
		$msg="Total Registration date from ($_POST[from]) to($_POST[to]) Total Registration = $total_data[tot]";
		foreach ($total_class_data as $total_class_value) {
			$msg.=" ,$total_class_value[class] = $total_class_value[tot]";
		}
		foreach ($total_office_data as $total_office_value) {
			$name=loginFetchOne("select uname from login where id=$total_office_value[genrate_token]");
			// echo "select uname from login where id=$total_office_value[genrate_token]";
			// print_r($name);exit;
			$msg.=" ,$name[uname] = $total_office_value[tot] ";
		}
		foreach ($no_data as $no_value) {
			$msg.=" ,$no_value[name] = 0 ";
		}


		$total_data=fetchOne("select count(addmission_date) as tot from stu_profile where addmission_date>='$_POST[from]' and addmission_date<='$_POST[to]'");
		$total_class_data=fetchAll("select count(class_id) as tot,class.name as class from stu_profile join class on class_id=class.id where addmission_date>='$_POST[from]' and addmission_date<='$_POST[to]' group by class_id");
		$total_office_data=fetchAll("select count(admission) as tot,admission as genrate_token from stu_profile where addmission_date>='$_POST[from]' and addmission_date<='$_POST[to]' group by admission");
		// print_r($total_office_data);//exit;
		$wh=" where 1 ";
		foreach ($total_office_data as $value) {
			$wh.=" and id!=$value[genrate_token]";
		}
		$no_data=loginFetchAll("select uname as name from login $wh and dept='accountant'");
		$_POST['from']=explode('-',$_POST['from']);
		$_POST['to']=explode('-',$_POST['to']);
		krsort($_POST['from']);
		krsort($_POST['to']);
		$_POST['from']=implode('-',$_POST['from']);
		$_POST['to']=implode('-',$_POST['to']);
		$msg.="Total Admission date from ($_POST[from]) to($_POST[to]) Total admission = $total_data[tot]";
		foreach ($total_class_data as $total_class_value) {
			$msg.=" ,$total_class_value[class] = $total_class_value[tot]";
		}
		foreach ($total_office_data as $total_office_value) {
			$name=loginFetchOne("select uname from login where id=$total_office_value[genrate_token]");
			// echo "select uname from login where id=$total_office_value[genrate_token]";
			// print_r($name);exit;
			$msg.=" ,$name[uname] = $total_office_value[tot] ";
		}
		foreach ($no_data as $no_value) {
			$msg.=" ,$no_value[name] = 0 ";
		}
		
		$mobile=fetchOne("select mobile from director");
		$message=$msg;
		$number=$mobile['mobile'];
		// echo $message;exit;
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