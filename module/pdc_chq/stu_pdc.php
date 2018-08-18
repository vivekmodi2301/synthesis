<?php
    $phpfiles=glob("../../include/php/*.php");
    foreach ($phpfiles as  $phpfile) {
        include_once($phpfile);
    }
    //boreder not comming properly
    ?>  
            	<tr class="active1 table_style" style="font-weight:600;">
                    <td width="50">Sr. No.</td>
                    <td width="50">Roll No.</td>
                    <td width="150">Student Name</td>
                    <td width="100">Father Name</td>
                    <td width="50">Total Fees</td>
                    <td width="50">Given PDC</td>
                    <td width="50">Remaning PDC</td>
                    <!-- <td width="50">Bounced Cheque</td>
                    <td width="50">Cleared Cheque</td>
                    <td width="50">Expired Cheque</td>
                    <td width="50">Status</td>
                    <td width="200" colspan="3">Action</td> -->
                </tr>
                <?php
                extract($_POST);
                //to select all data
                $wh=" where 1";
                if($stu_name!=''){
                    $wh.=" and stu_profile.name like '%$stu_name%'";
                } 
                if($stu_f_name!=''){
                    $wh.=" and f_name like '%$stu_f_name%'";
                } 
                if( $stu_class!=''){
                    $wh.=" and class.id=$stu_class";
                } 
                if( $stu_batch!=''){
                    $wh.=" and batch.id=$stu_batch";
                } 
                if($roll!=''){
                    $wh.=" and roll_no like '%$roll%'";
                } 
                    $qry="select roll,sum(pdc.amount) as amount,count(amount) as given,stu_profile.name,f_name,scholarship,class_id,batch_id from stu_profile join pdc on pdc.roll=stu_profile.roll_no group by roll  ";
                    $pdc_dtl=fetchAll($qry);
                    // print_r($pdc_dtl);
                    $sno=1;
                    foreach ($pdc_dtl as  $pdc_value) {

                        $total_fee=fetchOne("select total_fee,tution_fee from class_fee_dtl where class_id=$pdc_value[class_id] and batch_id=$pdc_value[batch_id]");

                        $total_amount_to_be_paid=$total_fee['total_fee']-($total_fee['tution_fee']*$pdc_value['scholarship']/100);
                ?>
                <tr class="primary1 table_style2">
                    <td><?php echo $sno++; ?></td>
                    <td><?php echo $pdc_value['roll'] ?></td>
                    <td><?php echo $pdc_value['name'] ?></td>
                    <td><?php echo $pdc_value['f_name'] ?></td>
                    <td><?php echo $total_amount_to_be_paid ?></td>
                    <td><?php echo $pdc_value['amount']; ?></td>
                    <td>
                        <?php 
                        $remaning=$total_amount_to_be_paid-$pdc_value['amount'];
                        echo $remaning;
                        ?>
                    </td>
                    <!-- <td>2</td>
                    <td>3</td>
                    <td>3</td>
                    <td>3</td>
                    <td>Cleared</td>
                    <td><a href="index.php?mod=pdc_chq&do=edit_pchq" title="Edit Fee"><img src="images/profile_edit.png" height="20" width="20" /></a> | <a href="#" title="Delete Fee"><img src="images/trash.png" height="20" width="20" /></a> | <input type="checkbox" /></td> -->
                </tr>
                <?php } ?>