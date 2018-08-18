    <div class="col-lg-12 table-responsive">
    <table class="table table-bordered table-hover">
        <tr class="active1 table_style" style="font-weight:600;">
            <td width="100">Roll No./ Token No. <input type="text" onkeyup ="search()" id="roll" class="form-control" /></td>
            <td>Search by Student Name <input type="text" onkeyup="search()" id="stu_name" class="form-control" /></td>
            <td>Search by Cheque Number <input type="text" onkeyup="search()" id="stu_chq_no" class="form-control" /></td>
            <td>Select Class
                <select onchange="show_batch(this.value,'')"  class="form-control"  id="stu_class" name="class_id">
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
            <td>No Of Data 
                <select class="form-control" id="data" onchange="search()" name="class">
                <option value="">Select</option>
                <option>25</option>
                <option>50</option>
                <option>100</option>
                <option>ALL</option>
                </select>
            </td>
        </tr>
    </table>
        <table class="table table-bordered table-hover">
            <tr class="active1 table_style" style="font-weight:600;">
                
                <td width="50%">Recived date from: <input type="date" onchange="search()" id="i_from" class="form-control" />
                </td>
                <td>
                    To: <input type="date" onchange="search()" id="i_to" class="form-control" />
                </td>
                <td width="50%">Ready to apply date from: <input type="date" onchange="search()" id="r_from" class="form-control" />
                </td>
                <td>
                    To: <input type="date" onchange="search()" id="r_to" class="form-control" />
                </td>
            </tr>
        </table>
		 <table class="table table-bordered table-hover">
			 <tr class="active1 table_style" style="font-weight:600; text-align:justify;">
						<td colspan="6" align="center">Total no. of student in this section : <span style="font-size:16px; color:#900;" id="tot_stu"></span></td>
			 </tr>
		 </table>
    <p class="profile_chng_color">You are here at : See All PDC Details</p>

<table class="table table-bordered table-hover" id="show">
                <tr class="active1 table_style" style="font-weight:600;">
                    <td width="50">Sr. No.</td>
                    <td width="50">Roll No.</td>
                    <td width="150">Student Name</td>
                    <td width="50">Amount</td>
                    <td width="50">Cheque No.</td>
                    <td width="50">Bank Name</td>
                    <td width="150">Cheque Date</td>
                    <td width="150">Expiry Cheque Date</td>
                    <td width="150">Pdc recived date</td>
                    <td width="150">Status</td>
                    <td width="200">Action</td>
                    <!-- <td width="50">Bounced Cheque</td>
                    <td width="50">Cleared Cheque</td>
                    <td width="50">Expired Cheque</td>
                    <td width="50">Status</td>-->
                </tr>
                <?php 
                    $url=ROOT."index/pdc_chq/syn_show_all_pdc/";
                    $limit=1;
                    $frmdataget=$_REQUEST;
                    // print_r($frmdataget);
                    
                    @PaginationWork(10); 
                    $totRslt=mysqli_fetch_assoc(mysqli_query($con,"select count(*) as tot from pdc join stu_profile on roll=roll_no where refund='n' order by roll  "));
                    $qry="select pdc.id,roll,name,amount,chq_no,bank_name,datee,expiry_date,statuss, pdc_recived from pdc join stu_profile on roll=roll_no where refund='n' order by roll  limit ".$frmdata['from'].", ".$frmdata['to'];
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
                    <td><?php echo $pdc_value['pdc_recived']; ?></td>
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

                <tr>
                        <td colspan="20">
                            <?php PaginationDisplay($totRslt['tot'],$url.'page=','','10','View More Photos');?>
                        </td>
                </tr>
		<script type="text/javascript">
			$('#tot_stu').html('<?php echo $totRslt['tot']; ?>')
		</script>
    </table>
      </div>
      <script type="text/javascript">
          function del(did){
            if(confirm("Do you really want to delete")){
                location.href=root_path+"index/pdc_chq/syn_d_detail/"+did;
            }
          }
      </script>
      <script type="text/javascript">
      function search(){
        //now lets fetch value of every input here
        var roll=$('#roll').val();
        // ctrl+shift+d
        var stu_name=$('#stu_name').val();
        var stu_chq_no=$('#stu_chq_no').val();
        var stu_class=$('#stu_class').val();
        var i_from=$('#i_from').val();
        var i_to=$('#i_to').val();
        var r_from=$('#r_from').val();
        var r_to=$('#r_to').val();
        var stu_batch=$('#stu_batch').val();
        var data = $('#data').val();
        $.ajax({
            url:root_path+"module/pdc_chq/search_all_pdc.php",
            data:"roll="+roll+"&stu_name="+stu_name+"&stu_chq_no="+stu_chq_no+"&stu_class="+stu_class+"&stu_batch="+stu_batch+"&i_from="+i_from+"&i_to="+i_to+"&r_from="+r_from+"&r_to="+r_to+"&data="+data,
            type:"post",
            success:function(e){
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
            search();
        }
    }
</script>

    <script type="text/javascript">
        function showpage(where,page){
            // alert(where);
            $.ajax({
                url:root_path+'module/pdc_chq/search_all_pdc.php',
                data:"where="+where+"&pageNumber="+page,
                type:'post',
                success:function(e){
                    $('#show').html(e);

                }
            });
        }
    </script>