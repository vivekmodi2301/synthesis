<?php
	$phpfiles=glob("../../include/php/*.php");
	foreach ($phpfiles as  $phpfile) {
		include_once($phpfile);
	}
	//boreder not comming properly
?>
<table class="table table-borderd">

<tr class="active1 table_style" style="font-weight:600;">
    <td width="50">Sr. No.</td>
    <td width="50">Roll No.</td>
    <td width="150">Student Name</td>
    <td width="50">Amount</td>
    <td width="50">Cheque No.</td>
    <td width="50">Date</td>
    <td width="50">Expiry Date</td>
    <td width="50">Bank Name</td>
    <td width="50">Action</td>
</tr>
<?php
extract($_POST);
//to select all data
$wh=" ";
if($stu_name!=''){
	$wh.=" and stu_profile.name like '%$stu_name%'";
} 
if($stu_chq_no!=''){
	$wh.=" and pdc.chq_no like '$stu_chq_no%'";
} 
if( $stu_class!=''){
	$wh.=" and class_id=$stu_class";
} 
elseif( $stu_class==''){
    $wh.=" and class_id!=''";
} 
if( $stu_batch!=''){
	$wh.=" and batch_id=$stu_batch";
} 
if($roll!=''){
    $wh.=" and (roll_no like '$roll%'";
	$wh.=" or token_no like '$roll%')";
} 
$current_date=date('Y-m-d');
$current_timestamp=time();
$next_timestamp=$current_timestamp+(24*60*60*6);
// echo $next_timestamp;
$week_complete_date=date('Y-m-d',$next_timestamp);
    $pdc_dtl=fetchAll("select pdc.id,pdc.amount,roll,pdc.chq_no,bank_name,pdc.datee,expiry_date,stu_profile.name,f_mobile from pdc join stu_profile on pdc.roll=stu_profile.roll_no where (expiry_date<='$current_date' and (statuss='recived' or statuss='expired')) $wh");
   // echo "<tr><td>select pdc.id,pdc.amount,roll,pdc.chq_no,bank_name,pdc.datee,expiry_date,stu_profile.name,f_mobile from pdc join stu_profile on pdc.roll=stu_profile.roll_no where expiry_date<='$current_date' and statuss='recived' $wh</td></tr>";

    $sno=1;
    foreach ($pdc_dtl as  $pdc_value) {
?>
<tr class="primary1 table_style2">
    <td><?php echo $sno++; ?></td>
    <td><?php echo $pdc_value['roll'] ?></td>
    <td><?php echo $pdc_value['name'] ?></td>
    <td><?php echo $pdc_value['amount'] ?></td>
    <td><?php echo $pdc_value['chq_no'] ?></td>
    <td><?php echo $pdc_value['datee']; ?></td>
    <td><?php echo $pdc_value['expiry_date']; ?></td>
    <td><?php echo $pdc_value['bank_name']; ?></td>
    <td><input class="chk" type="checkbox" value="<?php echo $pdc_value['f_mobile'] ?>" id="<?php echo $pdc_value['id']; ?>">
    </td>
</tr>
<?php } ?>
<script type="text/javascript">
    $('#tot_stu').html('<?php echo $sno-1; ?>')
</script>