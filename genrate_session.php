<?php 
$phpfiles=glob("include/php/*.php");
foreach ($phpfiles as $phpfile) {
	include_once($phpfile);
}
	$number=$_POST['chk'];
  $message = rawurlencode('Dear Student/Parent, thain you for inquiry. Your details are:- Token No:-1234567, Class for inquiry :- 12th. Thank you Team Synthesis');
  $ch=curl_init('http://dnd.saakshisoftware.in/api/mt/SendSMS?APIKEY='.user.'&senderid='.senderid.'&channel='.channel.'&DCS='.DCS.'&flashsms='.flashsms.'&number='.$number.'&text='.$message.'&route='.route.'');
  $data = curl_exec($ch);
?>
<script type="text/javascript">
	alert("Message successfully send");
	$('.chk').prop("checked",false);
	$('#selectAll').prop("checked",false);
</script>