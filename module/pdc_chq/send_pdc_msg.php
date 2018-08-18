
<?php

$phpfiles=glob("../../include/php/*.php");
foreach ($phpfiles as  $phpfile) {
	include_once($phpfile);
}
print_r($_POST);
$ids=explode(',',$_POST['number']);
$wh=" where 1 and ";
if(is_array($ids)){
	foreach ($ids as  $id) {
		$wh.=" pdc.id=$id or";
	}
	$wh=substr($wh, 0,-2);
}else{
	$wh.=" and id =$id ";
}
$mobiles=fetchAll("select pdc.id,roll,f_mobile,amount,chq_no,bank_name,datee,expiry_date,chequey from pdc join stu_profile on roll=roll_no $wh");
// echo "select pdc.id,roll,f_mobile,amount,chq_no,bank_name,datee,expiry_date,chequey from pdc join stu_profile on roll=roll_no $wh";

foreach ($mobiles as $mobile) {
	extract($mobile);
	// print_r($_POST);
	// print_r($mobile);
	if($_POST['statuss']=='upcoming'){
		$message="Dear Parent, your cheque (Cheque No. $chq_no) against rs. $amount  Date : $datee, Kindly manage your account.";
		 $message = rawurlencode($message);
		$ch=curl_init('http://dnd.saakshisoftware.in/api/mt/SendSMS?APIKEY='.user.'&senderid='.senderid.'&channel='.channel.'&DCS='.DCS.'&flashsms='.flashsms.'&number='.$mobile['f_mobile'].'&text='.$message.'&route='.route.'');
		$data = curl_exec($ch);
	}
	if($_POST['send_msg']=='y'){
		if($_POST['statuss']=='cleared'){
			
			$date=date('Y-m-d');
			$message="Dear Parent, your cheque (Cheque No. $chq_no) against rs. $amount payble to synthesis has been cleared at  Date : $date, Thank you Synthesis.";
			 $message = rawurlencode($message);
			$ch=curl_init('http://dnd.saakshisoftware.in/api/mt/SendSMS?APIKEY='.user.'&senderid='.senderid.'&channel='.channel.'&DCS='.DCS.'&flashsms='.flashsms.'&number='.$mobile['f_mobile'].'&text='.$message.'&route='.route.'');
			$data = curl_exec($ch);
			?>
			<script type="text/javascript">
				alert('<?php echo $data; ?>');
			</script>
			<?php 
		}
		elseif($_POST['statuss']=='bounced'){
			$date=date('Y-m-d');
			$message="Dear Parent, your cheque (Cheque No. $chq_no) against rs. $amount payble to synthesis had bounced at  Date : $date,  Synthesis.";
			 $message = rawurlencode($message);
			$ch=curl_init('http://dnd.saakshisoftware.in/api/mt/SendSMS?APIKEY='.user.'&senderid='.senderid.'&channel='.channel.'&DCS='.DCS.'&flashsms='.flashsms.'&number='.$mobile['f_mobile'].'&text='.$message.'&route='.route.'');
			$data = curl_exec($ch);
			echo "bounced kun a raha hai";

		}
		elseif($_POST['statuss']=='expired'){
			$date=date('Y-m-d');
			$message="Dear Parent, your cheque (Cheque No. $chq_no) against rs. $amount payble to synthesis had exprired at  Date : $date,  Synthesis.";
			 $message = rawurlencode($message);
			$ch=curl_init('http://dnd.saakshisoftware.in/api/mt/SendSMS?APIKEY='.user.'&senderid='.senderid.'&channel='.channel.'&DCS='.DCS.'&flashsms='.flashsms.'&number='.$mobile['f_mobile'].'&text='.$message.'&route='.route.'');
			$data = curl_exec($ch);
			echo "expired kun a raha hai";

		}
	}
}
?>