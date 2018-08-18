<?php
    $phpfiles=glob("../../include/php/*.php");
    foreach ($phpfiles as  $phpfile) {
        include_once($phpfile);
    }
    extract($_POST);
    //to select all data
    if(!isset($_POST['where'])){

        $wh=" where 1";
        if($stu_name!=''){
            $wh.=" and stu_profile.name like '%$stu_name%'";
        } 
        if($stu_f_name!=''){
            $wh.=" and f_name like '%$stu_f_name%'";
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
            $wh.=" and roll_no like '$roll%'";
        }
        $having="";
        $pdc_wh="";
        $no_having = 0;
        if($no_of_chq!=''){
            if(!$having){
                $pdc_wh.= " and statuss='recived' ";
                $having.=" having count(amount)=$no_of_chq ";
                $_SESSION['having']=$having;
            }else{
                $pdc_wh.= " or statuss='recived' ";
                $having=" and count(amount)=$no_of_chq ";
                $_SESSION['having']=$having;
            }
            $no_having = 1;

        }
        if($no_of_cchq!=''){
            if(!$having){
                $pdc_wh.= " and statuss='cleared' ";
                $having.=" having count(roll_no)=$no_of_cchq ";
                $_SESSION['having']=$having;
            }else{
                $pdc_wh.= " or statuss='cleared' ";
                $having.=" and count(roll_no)=$no_of_cchq ";
                $_SESSION['having']=$having;
            }
            $no_having = 1;
        }
    }else{
        $wh=$_POST['where'];
        if(isset($_SESSION['having'])){
            $having=$_SESSION['having'];
        }
    }
    // print_r($_POST);
?>
<table class="table table-borderd">
<tr>
    <td><?php print_r($_POST); ?></td>
</tr>
<tr>
    <td colspan="14"><a href="<?php echo ROOT ?>module/pdc_chq/search_print_see_pchq.php?wh=<?php echo $wh; ?>" class="btn btn-primary">Print</a></td>
</tr>
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
        <td width="50">See Details</td>
        <!-- <td width="50">Bounced Cheque</td>
        <td width="50">Cleared Cheque</td>
        <td width="50">Expired Cheque</td>
        <td width="50">Status</td>
        <td width="200" colspan="3">Action</td> -->
    </tr>
    <?php
        $url=ROOT."index/pdc_chq/syn_s_chq/";
        $limit=1;
        $frmdataget=$_REQUEST;
        // print_r($_POST);
        @PaginationWork(10); 
        $totRslt['tot']=mysqli_num_rows(mysqli_query($con,"select count(*) as tot from stu_profile left join pdc on pdc.roll=stu_profile.roll_no $wh $pdc_wh and wheree='addmission'  group by roll_no $having"));
        ?>
        <script type="text/javascript">
            $('#tot_stu').html('<?php echo $totRslt['tot']; ?>')
        </script>
        <?php  
    $qry="select roll_no as roll,sum(pdc.amount) as amount,count(amount) as given,count(roll_no) as croll,stu_profile.name,f_name,scholarship,class_id,batch_id,statuss,old_student from stu_profile left join pdc on pdc.roll=stu_profile.roll_no $wh $pdc_wh and wheree='addmission'  group by roll_no $having limit ".$frmdata['from'].", ".$frmdata['to'];
    echo "select roll_no as roll,sum(pdc.amount) as amount,count(amount) as given,stu_profile.name,f_name,scholarship,class_id,batch_id,statuss from stu_profile left join pdc on pdc.roll=stu_profile.roll_no $wh $pdc_wh and wheree='addmission'  group by roll_no $having limit ".$frmdata['from'].", ".$frmdata['to'];
        $pdc_dtl=fetchAll($qry);                  
        $sno=1;
        foreach ($pdc_dtl as  $pdc_value) {
            // print_r($pdc_value);
            $total_fee=fetchOne("select total_fee,tution_fee,old_total_fee from class_fee_dtl where class_id=$pdc_value[class_id] ");
            if($pdc_value['old_student']=='y'){
                $total_fee['total_fee'] = $total_fee['old_total_fee'] ;
            }
            if($pdc_value['scholarship']!=0){

                $total_amount_to_be_paid=$total_fee['total_fee']-($total_fee['tution_fee']*$pdc_value['scholarship']/100);
                // echo $total_fee['total_fee']."hi";
            }else{
                $total_amount_to_be_paid=$total_fee['total_fee'];
            }
            $fee_submit=fetchOne("select sum(amount) as amount from fee where roll=$pdc_value[roll] group by roll");
            
            $recived=fetchOne("select count(amount) as statuss from pdc where roll='$pdc_value[roll]' group by roll");
            $remaning_pdc=fetchOne("select sum(amount) as amount,count(statuss) as statuss from pdc where roll='$pdc_value[roll]' and statuss='recived' group by roll");
            $bounced=fetchOne("select count(statuss) as statuss from pdc where roll='$pdc_value[roll]' and statuss='bounced' group by roll ");
            
            // echo "<tr><td>select count(statuss) as statuss from pdc where roll='$pdc_value[roll]' and statuss='bounced' group by roll $b_having</td></tr>";
            if($no_of_bchq && $bounced['statuss']!=$no_of_bchq){
                // echo "hi";exit;
                continue;
            }elseif($no_of_bchq==0 && $no_of_bchq!='' && $bounced['statuss']!=''){
                // echo "hii";exit;
                continue;
            }
            $current_day=date('Y-m-d');
            $expired=fetchOne("select count(statuss) as statuss from pdc where roll='$pdc_value[roll]' and datee<$current_day and wheree='recived' group by roll");

            if($no_of_echq && $expired['statuss']!=$no_of_echq){
                // echo "hi";exit;
                continue;
            }elseif($no_of_echq==0 && $no_of_echq!='' && $expired['statuss']!=''){
                // echo "hii";exit;
                continue;
            }

            $update=fetchOne("select count(statuss) as statuss from pdc where roll='$pdc_value[roll]' and update_date!='' group by roll");

            if($no_of_uchq && $update['statuss']!=$no_of_uchq){
                // echo "hi";exit;
                continue;
            }elseif($no_of_uchq==0 && $no_of_uchq!='' && $update['statuss']!=''){
                // echo "hii";exit;
                continue;
            }


            $cleared=fetchOne("select count(statuss) as statuss from pdc where roll='$pdc_value[roll]' and statuss='cleared' group by roll");

            // if($no_of_cchq && $cleared['statuss']!=$no_of_cchq){
            //     // echo "hi";exit;
            //     continue;
            // }elseif($no_of_cchq==0 && $no_of_cchq!='' && $cleared['statuss']!=''){
            //     // echo "hii";exit;
            //     continue;
            // }

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
            @$remaning=$total_amount_to_be_paid-$fee_submit['amount']-$remaning_pdc['amount'];
            if($remaning)
                echo $remaning;
            else
                echo "0";

            ?>
        </td>
        <td><?php if(isset($recived['statuss']) && $recived['statuss']) echo $recived['statuss']; else echo "0"; ?></td>
        <td><?php if(isset($bounced['statuss']) && $bounced['statuss']) echo $bounced['statuss']; else echo "0"; ?></td>
        <td><?php if(isset($expired['statuss']) && $expired['statuss']) echo $expired['statuss']; else echo "0"; ?></td>
        <td><?php if(isset($update['statuss']) && $update['statuss']) echo $update['statuss']; else echo "0"; ?></td>
        <td><?php if(isset($cleared['statuss']) && $cleared['statuss']) echo $cleared['statuss']; else echo "0"; ?></td>
        <td><a href="<?php echo ROOT;?>index/pdc_chq/syn_pdc_dtl/<?php echo $pdc_value['roll']; ?>" title="See Details"><img src="<?php echo ROOT; ?>include/images/icon_eye.png" height="30" width="30" /></a></td>
    </tr>
<?php } ?>

<tr>
  <td colspan="20">
    <?php searchPaginationDisplay($totRslt['tot'],$url.'&pageNumber=','',$pageData,$wh);?>
  </td>
</tr>