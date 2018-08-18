<?php
$phpfiles=glob("../../include/php/*.php");
foreach ($phpfiles as  $phpfile) {
	include_once($phpfile);
}
extract($_POST);


if($status=='cleared'){
    $wh="where 1 and "; 
    $id=explode(',',$ids);
    foreach ($id as $id_value) {
    	$wh.=" pdc.id=$id_value or";
    }
    $wh=substr($wh, 0,-2);
    $qry="update pdc set statuss='$status' $wh";

    mysqli_query($con,$qry);

    $pdc_detail=fetchAll("select * from pdc $wh");
    foreach ($pdc_detail as  $pdc_value) {
        $last_recipt_no=fetchOne("select recipt_no from fee order by recipt_no desc ");
        if($last_recipt_no['recipt_no']==''){
            $new_recipt_no=1;
        }else{
            $new_recipt_no=$last_recipt_no['recipt_no']+1;
        }
        $dtl=array('roll'=>$pdc_value['roll'],'amount'=>$pdc_value['amount'],'pay_by'=>'cheque','number'=>$pdc_value['chq_no'],'datee'=>$pdc_value['datee'],'recipt_no'=>$new_recipt_no,'submit_by'=>$_SESSION['logindtl']['id'],'by_pdc'=>'y');
        addUpdate('fee',$dtl);
    }
}elseif($status=='recived'){

    $wh="where 1 and "; 
    $id=explode(',',$ids);
    if(is_array($id)){
        foreach ($id as $id_value) {
            $wh.=" pdc.id=$id_value or";
        }
    }
    $wh=substr($wh, 0,-2);

    $qry="update pdc set statuss='$status' $wh";
    mysqli_query($con,$qry);

    $fee_id=fetchAll("select fee.id as id from fee join pdc on number=chq_no $wh");
    foreach ($fee_id as $fee_value) {
        mysqli_query($con,"delete from fee where id=$fee_value[id]");
    }
}elseif($status=='bounced'){

    $wh="where 1 and "; 
    $id=explode(',',$ids);
    if(is_array($id)){
        foreach ($id as $id_value) {
            $wh.=" pdc.id=$id_value or";
        }
    }else{
        $wh.=" id=$id ";
    }
    $wh=substr($wh, 0,-2);

    $qry="update pdc set statuss='$status' $wh";
    // echo $qry;
    mysqli_query($con,$qry);

    $fee_id=fetchAll("select fee.id as id from fee join pdc on number=chq_no $wh");
    foreach ($fee_id as $fee_value) {
        mysqli_query($con,"delete from fee where id=$fee_value[id]");
    }
}
?>
<table class="table table-bordered table-hover" id="show">
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
    <!-- <td width="50">Bounced Cheque</td>
    <td width="50">Cleared Cheque</td>
    <td width="50">Expired Cheque</td>
    <td width="50">Status</td>
    <td width="200" colspan="3">Action</td> -->
</tr>
<?php 
    $current_date=date('Y-m-d');
    $current_timestamp=time();
    $next_timestamp=$current_timestamp+(24*60*60*6);
    // echo $next_timestamp;
    $week_complete_date=date('Y-m-d',$next_timestamp);
    // echo $week_complete_date;
    $wh=" where 1  ";
    if($list=='recived'){
        $wh=" and datee>='$current_date' and datee<='$week_complete_date' ";
    }
    $qry="select pdc.id,pdc.amount,roll,pdc.chq_no,bank_name,pdc.datee,expiry_date,stu_profile.name,f_mobile from pdc join stu_profile on pdc.roll=stu_profile.roll_no $wh  and statuss='$list'";
    // echo $qry;
    $pdc_dtl=fetchAll($qry);
    // print_r($pdc_dtl);
    $sno=1;
    ?>
    <?php
    foreach ($pdc_dtl as  $pdc_value) {

        // echo $total_amount_to_be_paid;
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
</table>