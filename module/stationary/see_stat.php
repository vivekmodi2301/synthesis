<?php 
    $id="";
?>
    <div class="col-lg-12 table-responsive">
    <form role="form" class="form-horizontal" enctype="multipart/form-data" method="post">
                <table class="table table-bordered table-hover">
                <tr class="active1 table_style" style="font-weight:600;">
                    <td width="100">Roll No./ Token No. <input type="text" onkeyup ="search()" id="roll" class="form-control" /></td>
                    <td>Search by Student Name <input type="text" onkeyup="search()" id="stu_name" class="form-control" /></td>
                    <td>Search by Stationary Name <input type="text" onkeyup="search()" id="sta_name" class="form-control" /></td>
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

        <table class="table table-bordered table-hover">
            <tr class="active1 table_style" style="font-weight:600;">
                <td > Date From: <input type="date" onchange="search()" id="i_from" class="form-control" />
                </td>
                <td>
                    To: <input type="date" onchange="search()" id="i_to" class="form-control" />
                </td>
                
            </tr>
        </table>
            <table class="table table-bordered table-hover">
                <tr class="active1 table_style" style="font-weight:600; text-align:justify;">
                    <td>Total Students in this Section : </td>
                    <td>Delete Selected <a href=""><img src="images/trash.png" /></a></td>
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
                    <td width="100">Amount</td>
                    <td width="100">Date</td>
                    <td width="100">Stationary Name</td>
                    <!-- <td width="50">Bounced Cheque</td>
                    <td width="50">Cleared Cheque</td>
                    <td width="50">Expired Cheque</td>
                    <td width="50">Status</td>
                    <td width="200" colspan="3">Action</td> -->
                </tr>
                <?php 
                    $qry="select stationary.id,stationary.name, amount,datee,stationary.roll_no from stationary";
                    $pdc_dtl=fetchAll($qry);
                    // print_r($pdc_dtl);
                    $sno=1;
                    foreach ($pdc_dtl as  $pdc_value) {
                        ?>
                <tr class="primary1 table_style2">
                    <td><?php echo $sno++; ?></td>
                    <td><?php echo $pdc_value['roll_no'] ?></td>
                    <?php 
                    $data = fetchOne("select name,f_name from stu_profile where roll_no=$pdc_value[roll_no]");
                    ?>
                    <td><?php echo $data['name'] ?></td>
                    <td><?php echo $data['f_name'] ?></td>
                    <td><?php echo $pdc_value['amount'] ?></td>
                    <td><?php echo $pdc_value['datee'] ?></td>
                    <td><?php echo $pdc_value['name'] ?></td>
                    
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
            var sta_name=$('#sta_name').val();
            var stu_class=$('#stu_class').val();
            var stu_batch=$('#stu_batch').val();
            var i_from=$('#i_from').val();
            var i_to=$('#i_to').val();
            // alert(i_to);
            $.ajax({
                url:root_path+"module/stationary/search.php",
                data:"roll="+roll+"&stu_name="+stu_name+"&sta_name="+sta_name+"&stu_class="+stu_class+"&stu_batch="+stu_batch+"&i_from="+i_from+"&i_to="+i_to,
                type:"post",
                success:function(e){
                    $('#show').html(e);
                    alert(e);
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