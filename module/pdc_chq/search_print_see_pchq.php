<?php
    error_reporting(0);
    $phpfiles=glob("../../include/php/*.php");
    foreach ($phpfiles as  $phpfile) {
        include_once($phpfile);
    }
    if(isset($_GET['wh'])){
        // $wh = "where wheree='addmission'";
        $wh .= $_GET['wh'];
        if(isset($_GET['having'])){
            $having = $_GET['having'];
        }
    }else{
        $wh ="where wheree='addmission'";
    }
    //boreder not comming properly
?>

<link rel="stylesheet" type="text/css" href="<?php echo ROOT; ?>include/css/bootstrap.min.css">

<table class="table table-bordered table-hover" id="show">
    <tr class="active1 table_style" style="font-weight:600;">
        <td width="50">Sr. No.</td>
        <td width="50">Roll No.</td>
        <td width="150">Student Name</td>
        <td width="100">Father Name</td>
        <td width="50">Total Fees</td>
        <td width="50">Submited Fee</td>
        <td width="50">Given PDC Amt.</td>
        <td width="50">Remaning Fee</td>
        <td width="50">Recived Chq</td>
        <td width="50">Bounced Chq</td>
        <td width="50">Expired Chq</td>
        <td width="50">Updated Chq</td>
        <td width="50">Cleared Chq</td>
        <!-- <td width="50">Bounced Cheque</td>
        <td width="50">Cleared Cheque</td>
        <td width="50">Expired Cheque</td>
        <td width="50">Status</td>
        <td width="200" colspan="3">Action</td> -->
    </tr>
    <?php 
        // print_r($totRslt);
        // $qry="select roll_no as roll,sum(pdc.amount) as amount,count(amount) as given,stu_profile.name,f_name,scholarship,class_id,batch_id,statuss from stu_profile left join pdc on pdc.roll=stu_profile.roll_no where wheree='addmission' group by roll   ";
    $qry="select roll_no as roll,f_name,name,sum(amount),count(amount),scholarship,class_id,batch_id,statuss,old_student from stu_profile left join pdc on roll=roll_no $wh GROUP by roll_no $having";
    // echo $qry;
        $pdc_dtl=fetchAll($qry);
        // print_r($pdc_dtl);
        $sno=1;
        // print_r($pdc_dtl);
        foreach ($pdc_dtl as  $pdc_value) {

            $total_fee=fetchOne("select total_fee,tution_fee,old_total_fee from class_fee_dtl where class_id=$pdc_value[class_id] ");
                if($pdc_value['old_student']=='y'){
                    $total_fee['total_fee'] = $total_fee['old_total_fee'];
                }
            if($pdc_value['scholarship']!=0){
                $total_amount_to_be_paid=$total_fee['total_fee']-($total_fee['tution_fee']*$pdc_value['scholarship']/100);
                // echo $total_fee['total_fee']."hi";
            }else{
                $total_amount_to_be_paid=$total_fee['total_fee'];
            }
            $fee_submit=fetchOne("select sum(amount) as amount from fee where roll=$pdc_value[roll] group by roll");
            if($fee_submit['amount']==0){
                $fee_submit=0;
            }
            $recived=fetchOne("select count(amount) as statuss from pdc where roll='$pdc_value[roll]' group by roll");
            $remaning_pdc=fetchOne("select sum(amount) as amount,count(statuss) as statuss from pdc where roll='$pdc_value[roll]' and statuss='recived' group by roll");
            $bounced=fetchOne("select count(statuss) as statuss from pdc where roll='$pdc_value[roll]' and statuss='bounced' group by roll");
            $expired=fetchOne("select count(statuss) as statuss from pdc where roll='$pdc_value[roll]' and statuss='expired' group by roll");
            $update=fetchOne("select count(statuss) as statuss from pdc where roll='$pdc_value[roll]' and update_date!='' group by roll");
            $cleared=fetchOne("select count(statuss) as statuss from pdc where roll='$pdc_value[roll]' and statuss='cleared' group by roll");
    ?>
    <tr class="primary1 table_style2">
        <td><?php echo $sno++; ?></td>
        <td><?php echo $pdc_value['roll'] ?></td>
        <td align="left"><?php echo $pdc_value['name'] ?></td>
        <td align="left"><?php echo $pdc_value['f_name'] ?></td>
        <td><?php echo $total_amount_to_be_paid ?></td>
        <td><?php echo $fee_submit['amount']; ?></td>
        <td><?php
            if($remaning_pdc)
                echo $remaning_pdc['amount'];
            else
                echo "0"; ?></td>
        <td>
            <?php 
            $remaning=$total_amount_to_be_paid-$fee_submit['amount']-$remaning_pdc['amount'];
            if($remaning)
                echo $remaning;
            else
                echo "0";

            ?>
        </td>
        <td><?php if($recived['statuss']) echo $recived['statuss']; else echo "0"; ?></td>
        <td><?php if($bounced['statuss']) echo $bounced['statuss']; else echo "0"; ?></td>
        <td><?php if($expired['statuss']) echo $expired['statuss']; else echo "0"; ?></td>
        <td><?php if($update['statuss']) echo $update['statuss']; else echo "0"; ?></td>
        <td><?php if($cleared['statuss']) echo $cleared['statuss']; else echo "0"; ?></td>
    </tr>
    <?php } ?>

    <tr>
            <td colspan="20">
                <?php  PaginationDisplay($totRslt['tot'],$url.'page=','','10','View More Photos');?>
            </td>
    </tr>
</table>