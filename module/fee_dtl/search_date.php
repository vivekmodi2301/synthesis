
<?php
    $phpfiles=glob("../../include/php/*.php");
    foreach ($phpfiles as  $phpfile) {
        include_once($phpfile);
    }
    //boreder not comming properly
?>
<?php
extract($_POST);
?>

<table id="show" class="table table-bordered">
<tr class="active1 table_style" style="font-weight:600;">
    <td width="50">Sr. No.</td>
    <td width="150">Roll No.</td>
    <td width="150">Student Name</td>
    <td width="100">Amount</td>
    <td width="50">Pay By</td>
    <td width="50">Number</td>
    <td width="200">Date</td>
    <!-- <td width="50">Bounced Cheque</td>
    <td width="50">Cleared Cheque</td>
    <td width="50">Expired Cheque</td>
    <td width="50">Status</td>-->
    
</tr>
<?php 
$wh="";
if($from!='' && $to==''){
    $wh.=" and datee='$from'";
}
elseif($from=='' && $to!=''){
    $wh.=" and datee='$to'";
}elseif($from!='' && $to!=''){
    $wh.=" and (datee>='$from' and datee<='$to')";
}

    $qry="select fee.id as id,fee.roll as roll,stu_profile.name as name,amount,pay_by,number,datee from fee join stu_profile on stu_profile.roll_no=fee.roll where 1 $wh";
    // echo $qry;
    $fee_dtl=fetchAll($qry);
    // echo $qry;
    // print_r($pdc_dtl);
    $sno=1;
    foreach ($fee_dtl as  $fee_value) {?>
<tr class="primary1 table_style2">
    <td><?php echo $sno++; ?></td>
    <td><?php echo $fee_value['roll'] ?></td>
    <td><?php echo $fee_value['name'] ?></td>
    <td><?php echo $fee_value['amount'] ?></td>
    <td><?php echo $fee_value['pay_by'] ?></td>
    <td><?php echo $fee_value['number']; ?></td>
    <td><?php echo $fee_value['datee']; ?></td>
    <!-- <td>2</td>
    <td>3</td>
    <td>3</td>
    <td>3</td>
    <td>Cleared</td>--> 
     
</tr>
    <?php
        }
    ?>
    
</table>