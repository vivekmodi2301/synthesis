	<div class="col-lg-12 table-responsive">
    <form role="form" class="form-horizontal" enctype="multipart/form-data" method="post">
    			<table class="table table-bordered table-hover">
            	<tr class="active1 table_style" style="font-weight:600;">
                    <td width="100">Roll No./ Token No. <input type="text" class="form-control" /></td>
                    <td>Search by Student Name <input type="text" class="form-control" /></td>
                    <td>Search by Father's Name <input type="text" class="form-control" /></td>
                    <td>Select Class 
                    	<select class="form-control" id="class" name="class">
                        <option>Select Class</option>
                        <option>Momentum (12th)</option>
                        <option>Anthesis (11th)</option>
                    	</select>
                    </td>
                    <td>Select Batch 
                    	<select class="form-control" id="batch" name="batch">
                        <option>Select Batch</option>
                        <option>D-1</option>
                        <option>H-1</option>
                    	</select>
                    </td>
                    <td>No Of Data 
                    	<select class="form-control" id="class" name="class">
                        <option>Select</option>
                        <option>25</option>
                        <option>50</option>
                        <option>100</option>
                        <option>ALL</option>
                    	</select>
                    </td>
                </tr>
            </table>
            <table class="table table-bordered table-hover">
            	<tr class="active1 table_style" style="font-weight:600; text-align:justify;">
                    <td>Total Students in this Section : </td>
                    <td>Delete Selected <a href=""><img src="<?php echo ROOT; ?>include/images/trash.png" /></a></td>
                    <td>Select All <input type="checkbox" /></td>
                </tr>
            </table>
            	<p style="text-align:left;">Total Fee Received : INR &nbsp; | &nbsp; Out of : INR &nbsp; | &nbsp; Remaining Fee :  INR</p>
                <table class="table table-bordered table-hover">
            	<tr class="active1 table_style" style="font-weight:600;">
                    <td width="50">Sr. No.</td>
                    <td width="50">Roll No.</td>
                    <td width="150">Student Name</td>
                    <td width="100">Father Name</td>
                    <td width="50">Class</td>
                    <td width="50">Batch</td>
                    <td width="50">Total Fee</td>
                    <td width="50">Scholarship</td>
                    <td width="50">Fee Deposit</td>
                    <td width="50">Fee Due</td>
                    <td width="50">Given Installments</td>
                    <td width="50">Photo</td>
                    <td width="200" colspan="3">Action</td>
                </tr>
                <?php 
                    $fee_dtl=fetchAll("select roll_no,stu_profile.name,class.name as class,batch.name as batch,f_name,class_fee_dtl.total_fee,class_fee_dtl.tution_fee,scholarship from class join stu_profile on stu_profile.class_id=class.id join batch on stu_profile.batch_id=batch.id join class_fee_dtl on class_fee_dtl.class_id=class.id  ");
                    // print_r($fee_dtl);
                ?>
                <?php 
                $sno=1;
                foreach ($fee_dtl as  $fee_dtl_value) {
                ?> 
                    <tr class="primary1 table_style2">
                        <td><?php echo $sno++; ?></td>
                        <td><?php echo $fee_dtl_value['roll_no']; ?></td>
                        <td><?php echo $fee_dtl_value['name']; ?></td>
                        <td><?php echo $fee_dtl_value['f_name']; ?></td>
                        <td><?php echo $fee_dtl_value['class']; ?></td>
                        <td><?php echo $fee_dtl_value['batch']; ?></td>
                        <td><?php echo $fee_dtl_value['total_fee']; ?></td>
                        <td><?php if($fee_dtl_value['scholarship']){echo $fee_dtl_value['scholarship']."%"; }else{echo "0%";}?></td>
                        <?php 
                            $old_fee_qry="select sum(amount) as amount from fee where roll='$fee_dtl_value[roll_no]' group by roll";

                            $installment="select count(amount) as amount from fee where roll='$fee_dtl_value[roll_no]' group by roll";
                            $old_fee_submit=fetchOne($old_fee_qry);
                            if(!$old_fee_submit){
                                $old_fee_submit=array('amount'=>0);
                            }
                            // print_r($old_fee_submit);
                            $total_installment=fetchOne($installment);
                            if(!$total_installment){
                                $total_installment=array('amount'=>0);
                            }
                        ?>
                        <td><?php if($old_fee_submit!=0){ echo $old_fee_submit['amount']; }else{ echo "0";}?></td>
                        <td>
                            <?php 
                            $fee_to_be_paid=$fee_dtl_value['total_fee']-($fee_dtl_value['tution_fee']*$fee_dtl_value['scholarship']/100);
                            $remaining_fee=$fee_to_be_paid-$old_fee_submit['amount'];
                            echo $remaining_fee;
                            ?>
                        </td>
                        <td><?php if($total_installment['amount']){ echo $total_installment['amount']; }else{echo "0";}?></td>
                        <td><img src="<?php echo ROOT; ?>include/images/view.gif" height="30" width="30" /></td>
                        <td><!-- <a href="index.php?mod=fee_dtl&do=edit_feee" title="Edit Fee"><img src="<?php //echo ROOT ?>include/images/profile_edit.png" height="20" width="20" /></a> | <a href="#" title="Delete Fee"><img src="<?php// echo ROOT ?>include/images/trash.png" height="20" width="20" /></a> | --> <input type="checkbox" /></td>
                    </tr>
                <?php }?>
            </table>
                            
    </form>
      </div>