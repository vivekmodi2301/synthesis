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
                    <td width="50">Amount</td>
                    <td width="50">Cheque No.</td>
                    <td width="50">Bank Name</td>
                    <td width="150">Cheque Date</td>
                    <td width="150">Expiry Cheque Date</td>
                    <td width="150">Status</td>
                    <td width="200">Action</td>
                    <!-- <td width="50">Bounced Cheque</td>
                    <td width="50">Cleared Cheque</td>
                    <td width="50">Expired Cheque</td>
                    <td width="50">Status</td>-->
                </tr>
                <tr>
                    <td colspan="10"><a href="<?php echo ROOT; ?>index/pdc_chq/syn_a_chq" title="Add PDC" class="profile_chng_color">Add new Pdc</a></td>
                </tr>
                <?php
                    extract($_POST);
                    //to select all data
                    $wh=" ";

                    if($i_from!='' && $i_to==''){
                        $wh.=" and datee='$i_from'";
                    }
                    elseif($i_from=='' && $i_to!=''){
                        $wh.=" and datee='$i_to'";
                    }elseif($i_from!='' && $i_to!=''){
                        $wh.=" and (datee>='$i_from' and datee<='$i_to')";
                    }
 
                    $qry="select pdc.id,roll,name,amount,chq_no,bank_name,datee,expiry_date,statuss from pdc join stu_profile on roll=roll_no where 1 and refund='n' $wh order by roll  ";
                    // echo $qry;
                    $pdc_dtl=fetchAll($qry);
                    // print_r($pdc_dtl);
                    $sno=1;
                    foreach ($pdc_dtl as  $pdc_value) {?>
                <tr class="primary1 table_style2">
                    <td><?php echo $sno++; ?></td>
                    <td><?php echo $pdc_value['roll'] ?></td>
                    <td><?php echo $pdc_value['name']; ?></td>
                    <td><?php echo $pdc_value['amount'] ?></td>
                    <td><?php echo $pdc_value['chq_no'] ?></td>
                    <td><?php echo $pdc_value['bank_name'] ?></td>
                    <td><?php echo $pdc_value['datee']; ?></td>
                    <td><?php echo $pdc_value['expiry_date']; ?></td>
                    <td><?php echo $pdc_value['statuss']; ?></td>
                    <!-- <td>2</td>
                    <td>3</td>
                    <td>3</td>
                    <td>3</td>
                    <td>Cleared</td>--> 
                     <td><a href="<?php echo ROOT; ?>index/pdc_chq/syn_e_detail/<?php echo $pdc_value['id']; ?>" title="Edit Class"><img src="<?php echo ROOT; ?>include/images/profile_edit.png" height="20" width="20" /></a> | <a href="#" onclick="del(<?php echo $pdc_value['id'];?>)" title="Delete Class"><img src="<?php echo ROOT; ?>include/images/trash.png" height="20" width="20" /></a> | </td>
                </tr>
        <?php
            }
        ?>
		