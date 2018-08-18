<?php 
    $id="";
?>
    <div class="col-lg-12 table-responsive">
    <form role="form" class="form-horizontal" enctype="multipart/form-data" method="post">
                <table class="table table-bordered table-hover">
                <tr class="active1 table_style" style="font-weight:600;">
                    <td width="100">Roll No./ Token No. <input type="text" onkeyup ="search()" id="roll" class="form-control" /></td>
                    <td>Search by Student Name <input type="text" onkeyup="search()" id="stu_name" class="form-control" /></td>
                    <td>Search by Father's Name <input type="text" onkeyup="search()" id="stu_f_name" class="form-control" /></td>
                    <td>Select Class                     <select onchange="show_batch(this.value,'')"  class="form-control"  id="stu_class" name="class_id">
                        <option value="">Please Select Class</option>
                        <?php 
                            $class_data=fetchAll("select id,name from class");
                            foreach ($class_data as $class_value) {
                        ?>
                                <option <?php if((isset($_POST['class_id']) && $_POST['class_id']==$class_value['id']) || ($id && $class_fee_dtl['class_id']==$class_value['id'])){echo "selected";} ?> value="<?php echo $class_value['id']; ?>"><?php echo $class_value['name'] ?></option>
                            <?php }?>
                    </select>
                    </td>
                    <td>Select Batch 
                        <select class="form-control" disabled onchange="search()" id="stu_batch"  name="batch">
                        <option value="">Select Class First</option>
                        </select>
                    </td>
                </tr>
            </table>
            <table class="table table-bordered">
                <tr>
                    <td>
                        Cheques Received
                        <select class="form-control" onchange="search()" id="no_of_chq">
                            <option value="">Select No. of Cheques</option>
                            <option>0</option>
                            <option>1</option>
                            <option>2</option>
                            <option>3</option>
                            <option>4</option>
                            <option>5</option>
                            <option>6</option>
                            <option>7</option>
                        </select>
                    </td>
                    <td>
                        Cleared Cheque
                        <select class="form-control" onchange="search()" id="no_of_cchq">
                            <option value="">Select No. of Cheques</option>
                            <option>0</option>
                            <option>1</option>
                            <option>2</option>
                            <option>3</option>
                            <option>4</option>
                            <option>5</option>
                            <option>6</option>
                            <option>7</option>
                        </select>
                    </td>
                    <td>
                        Expired Cheque
                        <select class="form-control" onchange="search()" id="no_of_echq">
                            <option value="">Select No. of Cheques</option>
                            <option>0</option>
                            <option>1</option>
                            <option>2</option>
                            <option>3</option>
                            <option>4</option>
                            <option>5</option>
                            <option>6</option>
                            <option>7</option>
                        </select>
                    </td>
                    <td>
                        Bounced Cheque
                        <select class="form-control" onchange="search()" id="no_of_bchq">
                            <option value="">Select No. of Cheques</option>
                            <option>0</option>
                            <option>1</option>
                            <option>2</option>
                            <option>3</option>
                            <option>4</option>
                            <option>5</option>
                            <option>6</option>
                            <option>7</option>
                        </select>
                    </td>
                    <td>
                        Updated Cheque
                        <select class="form-control" onchange="search()" id="no_of_uchq">
                            <option value="">Select No. of Cheques</option>
                            <option>0</option>
                            <option>1</option>
                            <option>2</option>
                            <option>3</option>
                            <option>4</option>
                            <option>5</option>
                            <option>6</option>
                            <option>7</option>
                        </select>
                    </td>
                </tr>
            </table>
            <p class="profile_chng_color">You are here at : See All PDC Details (Student Wise PDC Details)</p>
            <table class="table table-bordered table-hover">
                <tr class="active1 table_style" style="font-weight:600; text-align:justify;">
                    <td>Total Students in this Section : </td>
                    <td>Delete Selected <a href=""><img src="<?php echo ROOT; ?>include/images/trash.png" height="20" width="20" /></a></td>
                    <td>Select All <input type="checkbox" /></td>
                </tr>
            </table>
                <p style="text-align:left;">Total Fee Received : INR &nbsp; | &nbsp; Out of : INR &nbsp; | &nbsp; Remaining Fee :  INR</p>
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
                    <td width="50">See Details</td>
                    <!-- <td width="50">Bounced Cheque</td>
                    <td width="50">Cleared Cheque</td>
                    <td width="50">Expired Cheque</td>
                    <td width="50">Status</td>
                    <td width="200" colspan="3">Action</td> -->
                </tr>
                <?php 
                    $qry="select roll_no as roll,sum(pdc.amount) as amount,count(amount) as given,stu_profile.name,f_name,scholarship,class_id,batch_id,statuss from stu_profile left join pdc on pdc.roll=stu_profile.roll_no where wheree='addmission' group by roll   ";
                    $pdc_dtl=fetchAll($qry);
                    // echo $qry;
                    // print_r($pdc_dtl);
                    $sno=1;
                    // print_r($pdc_dtl);
                    foreach ($pdc_dtl as  $pdc_value) {

                        $total_fee=fetchOne("select total_fee,tution_fee from class_fee_dtl where class_id=$pdc_value[class_id] ");
                        if($pdc_value['scholarship']!=0){

                            $total_amount_to_be_paid=$total_fee['total_fee']-($total_fee['tution_fee']*$pdc_value['scholarship']/100);
                            // echo $total_fee['total_fee']."hi";
                        }else{
                            $total_amount_to_be_paid=$total_fee['total_fee'];
                        }
                        $fee_submit=fetchOne("select sum(amount) as amount from fee where roll=$pdc_value[roll] group by roll");
                        if($fee_submit==''){
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
                    <td><a href="<?php echo ROOT;?>index/pdc_chq/syn_pdc_dtl/<?php echo $pdc_value['roll']; ?>" title="See Details"><img src="<?php echo ROOT; ?>include/images/icon_eye.png" height="30" width="30" /></a></td>
                </tr>
                <?php } ?>
            </table>
                            
    </form>
      </div>

      <script type="text/javascript">
          function search(){
            //now lets fetch value of every input here
            var roll=$('#roll').val();
            // ctrl+shift+d
            var stu_name=$('#stu_name').val();
            var stu_f_name=$('#stu_f_name').val();
            var stu_class=$('#stu_class').val();
            var stu_batch=$('#stu_batch').val();
            var no_of_chq=$('#no_of_chq').val();
            var no_of_cchq=$('#no_of_cchq').val();
            var no_of_echq=$('#no_of_echq').val();
            var no_of_bchq=$('#no_of_bchq').val();
            // alert(no_of_bchq);
            var no_of_uchq=$('#no_of_uchq').val();
            $.ajax({
                url:root_path+"module/pdc_chq/search.php",
                data:"roll="+roll+"&stu_name="+stu_name+"&stu_f_name="+stu_f_name+"&stu_class="+stu_class+"&stu_batch="+stu_batch+"&no_of_chq="+no_of_chq+"&no_of_cchq="+no_of_cchq+"&no_of_echq="+no_of_echq+"&no_of_bchq="+no_of_bchq+"&no_of_uchq="+no_of_uchq,
                type:"post",
                success:function(e){
                    console.log(e);
                    $('#show').html(e);
                },error:function(e){
                    alert(e);
                }
            });
          }
      </script>
     <script type="text/javascript"> 
    function show_batch(class_id,batch_id){
        if(class_id){
            $.ajax({
                url:root_path+"module/fee_dtl/show_batch.php",
                data:"class_id="+class_id+"&batch_id="+batch_id,
                type:"post",
                success:function(e){
                    $('#stu_batch').html(e);
                    $('#stu_batch').removeAttr('disabled');
                    search();
                }
            });
        }else{
            $('#stu_batch').attr('disabled','disabled');
            $('#stu_batch').html("<option value=''>Select Class First</option>");
        }
    }
    </script>