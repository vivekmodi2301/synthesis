<?php
if(isset($_GET['roll'])){
    $roll=$_GET['roll']; 
}
?>
<table class="table table-bordered table-hover">
            	<tr class="active1 table_style" style="font-weight:600;">
                    <td width="50">Sr. No.</td>
                    <td width="50">Roll No.</td>
                    <td width="150">Student Name</td>
                    <td width="100">Amount</td>
                    <td width="50">Pay By</td>
                    <td width="50">Number</td>
                    <td width="150">Date</td>
                    <td width="150">Submited By</td>
                    <td width="150">Pdc/Manual</td>
                    <!-- <td width="50">Bounced Cheque</td>
                    <td width="50">Cleared Cheque</td>
                    <td width="50">Expired Cheque</td>
                    <td width="50">Status</td>-->
                    <td width="200" colspan="3">Action</td>
                </tr>
                <?php 


                    $qry="select fee.id as id,fee.roll as roll,stu_profile.name as name,amount,pay_by,number,datee,submit_by,black_list,by_pdc,refund from fee join stu_profile on stu_profile.roll_no=fee.roll where roll=$roll";
                    $fee_dtl=fetchAll($qry);
                    // echo $qry;
                    // print_r($pdc_dtl);
                    $sno=1;
                    foreach ($fee_dtl as  $fee_value) {
                        $submited_by=loginFetchOne("select uname from login where id=$fee_value[submit_by]");
                        // print_r("select uname from login where id=$fee_value[submit_by]");
                    ?>
                <tr class="primary1 table_style2">
                    <td><?php echo $sno++; ?></td>
                    <td><?php echo $fee_value['roll'] ?></td>
                    <td><?php echo $fee_value['name'] ?></td>
                    <td><?php echo $fee_value['amount'];if($fee_value['refund']=='y'){echo "(refunded)";} if($sno==2){ echo "(Registration)";} ?></td>
                    <td><?php echo $fee_value['pay_by'] ?></td>
                    <td><?php echo $fee_value['number']; ?></td>
                    <td><?php echo $fee_value['datee']; ?></td>
                    <td><?php echo $submited_by['uname']; ?></td>
                    <td><?php if($fee_value['by_pdc']=='y'){echo "pdc";} else{ echo "Manual";} ?></td>
                    <!-- <td>2</td>
                    <td>3</td>
                    <td>3</td>
                    <td>3</td>
                    <td>Cleared</td>--> 
                     <td>
                        <?php if($fee_value['refund']!='y'){ ?>
                        <a href="<?php echo ROOT; ?>index/fee_dtl/syn_e_detail/<?php echo $fee_value['id']; ?>" title="Edit Fee"><img src="<?php echo ROOT; ?>include/images/profile_edit.png" height="20" width="20" /></a> | <a href="#" onclick="del(<?php echo $fee_value['id'];?>)" title="Delete Fee"><img src="<?php echo ROOT; ?>include/images/trash.png" height="20" width="20" /></a> <?php if($fee_value['black_list']=='n'){ ?> |<a href="<?php echo ROOT ?>print_fee.php?id=<?php echo $fee_value['id']; ?>""><img src="<?php echo ROOT; ?>include/images/icon_print.png" height="20" width="20" /></a> <?php } } else{ echo "-";}?> </td>
                </tr>
        <?php
            }
        ?>
    </table>
      </div>
      <script type="text/javascript">
          function del(did){
            if(confirm("Do you really want to delete")){
                location.href=root_path+"index/fee_dtl/syn_d_detail/"+did;
            }
          }
          
      </script>