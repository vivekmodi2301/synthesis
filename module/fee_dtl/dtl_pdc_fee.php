
<?php
    $phpfiles=glob("../../include/php/*.php");
    foreach ($phpfiles as  $phpfile) {
        include_once($phpfile);
    }
?>
<?php
extract($_POST);

        $stu_data=fetchOne("select roll_no,token_no,stu_profile.name as name,f_name,scholarship,class.name as class,batch.name as batch,class.id as class_id, genrate_token,inquiry_date,registration_date,demo_class,from_date,to_date,addmission_date,admission,wheree,old_student from stu_profile join class on class_id=class.id join batch on batch_id=batch.id where   roll_no='$roll' or token_no='$roll'");
        // echo "select roll_no,token_no,name,f_name,scholarship,class.name as class,batch.name as batch,class.id as class_id, genrate_token,inquiry_date,registration_date,demo_class,from_date,to_date,addmission_date,admission from stu_profile join class on class_id=class.id join batch on batch_id=batch.id where   roll_no='$roll' or token_no='$roll'";
if($stu_data){
$pdc_rec = fetchAll("select id,amount,chq_no from pdc where roll = '$roll' and statuss='recived' and refund='n'");
//echo "select id,amount,chq_no from pdc where roll = '$roll' statuss='recived'"; 
?>
<form method="post">
    <table  class="table table-bordered"><tr ><th colspan="10">Refunded Amount</th></tr><tr>
<td colspan="10">
<input type="text" name="refund_am" id="return" onkeyup="this.value=this.value.replace(/[^0-9]/g,'');"  onchange="chk_refund(this.value)" class="form-control"><input type="hidden" value="<?php echo  $stu_data[roll_no] ?>" name="roll"></td>
</tr>
<tr>

        <?php foreach ($pdc_rec as $pdc_rec) {
            ?>
    <td align="left">
            <input type="checkbox" name="refund[]" value="<?php echo $pdc_rec['id']; ?>">&nbsp;Cheque No.&nbsp;&nbsp;<?php echo $pdc_rec['chq_no']."&nbsp;[<span style='font-weight:bold;'>".$pdc_rec['amount']."Rs.</span>]"; ?></span>
            
    </td>
    <?php 
        } ?>
</tr>
<tr>
    <td colspan="10"><input type="submit" class="btn btn-primary" name=""></td>
</tr>
</table>
</form>
<div id="print_table">
    <table  class="table table-bordered">
        <tr>
            <td>Roll No.</td>
            <td>Token No.</td>
            <td>Name</td>
            <td>Father Name</td>
            <td>Class</td>
            <td>Batch</td>
            <td>Total Fee</td>
            <td>Scholarship(in tution fee)</td>
            <td>Fee after scholarship</td>
            <td>Remaning Fee</td>
        </tr>
        <tr>
            <td><?php  echo $stu_data['roll_no']; ?></td>
            <td><?php  echo $stu_data['token_no']; ?></td>
            <td><?php  echo $stu_data['name']; ?></td>
            <td><?php  echo $stu_data['f_name']; ?></td>
            <td><?php  echo $stu_data['class']; ?></td>
            <td><?php  echo $stu_data['batch']; ?></td>
            <td><?php 
            $class_fee=fetchOne("select tution_fee,total_fee,old_total_fee from class_fee_dtl where class_id=$stu_data[class_id]");
            if($stu_data['old_student']=='n'){
                echo $class_fee['total_fee'];

            }else{
                echo $class_fee['old_total_fee'];
                $class_fee['total_fee'] = $class_fee['old_total_fee'];
            }
             ?></td>
            <td><?php  echo $stu_data['scholarship']; ?> %</td>
            <td><?php $fee_a_sch = ($class_fee['tution_fee']*$stu_data['scholarship'])/100;
            // echo $fee_a_sch."-";
             echo $tot_fee_to_pay = $class_fee['total_fee']-$fee_a_sch;?></td>
            <td ><?php 
            $recived = fetchOne("select sum(amount) as amount from fee where roll=$stu_data[roll_no] and refund!='y'");
            echo $tot_fee_to_pay-$recived['amount'];
            // echo "select sum(amount) as amount from fee where roll=$stu_data[roll_no]";
            // print_r($recived);
            ?>
                <span style="display: none" id="rec_fee"><?php echo $recived['amount']; ?></span>
            </td>
        </tr>
    </table>
    <table class="table table-bordered">
        <tr>
            <td>Inquiry Date</td>
            <td>Registration Date</td>
            <td>Demo From Date</td>
            <td>Demo To Date</td>
            <td>Addmission Date</td>
        </tr>
        <?php 
            // print_r($stu_data);
            // echo "select genrate_token,inquiry_date,registration_date,registration_by,from_date,to_date,addmission_date,admission from stu_profile where  roll_no='$roll' or token_no='$roll'";
        ?>
        <tr>
            <td>
                <?php $genrate_token = loginFetchOne("select uname from login where id=$stu_data[genrate_token]"); ?>
                <?php if($genrate_token['uname']){ ?>
                <?php echo $stu_data['inquiry_date']."(".$genrate_token['uname'].")"; ?>
                <?php }else{ ?>
                <?php echo "N/A"; ?>
                <?php } ?>
                    
            </td>
            <td>
                <?php $registered = loginFetchOne("select uname from login where id=$stu_data[demo_class]"); ?>
                <?php if($registered['uname']){ ?>
                <?php echo $stu_data['registration_date']."(".$registered['uname'].")"; ?>
                <?php }else{ ?>
                <?php echo "N/A"; ?>
                <?php } ?>    
            </td>
            <td>
                <?php if($stu_data['from_date']){ ?>

                <?php echo $stu_data['from_date'];?>
                 <?php }else{ ?>
                <?php echo "N/A"; ?>
                <?php } ?>       
            </td>
            <td>
                <?php if($stu_data['to_date']){ ?>

                <?php echo $stu_data['to_date'];?>
                 <?php }else{ ?>
                <?php echo "N/A"; ?>
                <?php } ?>
                    
            </td>
            <td>
                <?php $addmission = loginFetchOne("select uname from login where id=$stu_data[admission]"); ?>
                <?php if($addmission['uname']){ ?>

                <?php echo $stu_data['addmission_date']."(".$addmission['uname'].")"; ?>
                <?php }else{ ?>
                <?php echo "N/A"; ?>
                <?php } ?>
            </td>
        </tr>
    </table>
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


        $qry="select fee.id as id,fee.roll as roll,stu_profile.name as name,amount,pay_by,number,datee,refund from fee join stu_profile on stu_profile.roll_no=fee.roll where roll='$roll' or token_no='$roll' ";
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
        <td><?php echo $fee_value['amount']; if($fee_value['refund']=='y'){echo "(Refunded)";} if($sno==2){echo "(Registration)";} ?></td>
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
      <table class="table table-bordered table-hover" id="show">
                    <tr class="active1 table_style" style="font-weight:600;">
                        <td width="50">Sr. No.</td>
                        <td width="50">Roll No.</td>
                        <td width="150">Student Name</td>
                        <td width="50">Amount</td>
                        <td width="50">Cheque No.</td>
                        <td width="50">Bank Name</td>
                        <td width="50">Cheque Date</td>
                        <td width="150">Expiry Cheque Date</td>
                        <td width="150">Status</td>
                        <!-- <td width="50">Bounced Cheque</td>
                        <td width="50">Cleared Cheque</td>
                        <td width="50">Expired Cheque</td>
                        <td width="50">Status</td>-->
                    </tr>
                    <?php 
                        $qry="select pdc.id,roll,name,amount,chq_no,bank_name,datee,expiry_date,statuss,refund from pdc join stu_profile on roll=roll_no where roll='$roll' order by roll  ";
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
                        <td><?php echo $pdc_value['statuss']; if($pdc_value['statuss']=='recived' && $pdc_value['refund']=='y'){echo "(Refund)";} ?></td>
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
        <?php }else{
            ?>
            <script type="text/javascript">
                alert("Invalid roll no and token no");
            </script>
            <?php
        } ?>
        <script type="text/javascript">
            function chk_refund(ret){
				//alert(ret);
                var rec = parseInt($('#rec_fee').html());
                if(isNaN(rec)){
                    alert("No fee recived yet");
					$('#return').val('');
                }else if(rec<ret){
                    alert("Return fee is more then recived");
					$('#return').val('');
                }
            }
        </script>
</div>