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
            <tr class="active1 table_style" style="font-weight:600;">
                <td width="100">Cheque Date From: <input type="date" onchange="search()" id="i_from" class="form-control" />
                </td>
                <td>
                    To: <input type="date" onchange="search()" id="i_to" class="form-control" />
                </td>
                <td>Expiry From Date <input type="date" onchange="search()" id="d_from" class="form-control"></td>
                <td>Expiry To Date <input type="date" onchange="search()" id="d_to" class="form-control"></td>
                <td>Update From Date<input type="date" onchange="search()" id="a_from" class="form-control"></td>
                <td>Update To Date<input type="date" onchange="search()" id="a_to" class="form-control"></td>
                
            </tr>
        </table>            
            <table class="table table-bordered table-hover">
            <tr class="active1 table_style" style="font-weight:600; text-align:justify;">
                    <td colspan="6" align="center">You are at : <span style="font-size:16px; color:#900;">Bounced P.D.C. List</span></td>
                </tr>
                <tr class="active1 table_style" style="font-weight:600; text-align:justify;">
                    <td>Total Students in this Section : <span id="tot_stu" class="profile_chng_color"></span></td>
                    <td>Bounced P.D.C.</td>
                    <td>Move To <select onchange="changeStatus(this.value,'bounced')" class="form-control" id="class" name="class">
                        <option value="">Select</option>
                        <option value="cleared">Cleared Cheque Section</option>
                        <option value="recived">Recived Cheque Section</option>
                        <!-- <option value="">Updated Cheque Section</option> -->
                        
                    </td>

                    <td><button name="" id="" class="btn btn-success btn-sm btn-block" style="font-family:'Century Gothic'; font-size:14px; font-weight:bold;" onclick="printPage('bounced','')">SEND MSG</button></td>                    
                    <td>Select All <input id="selectAll" type="checkbox" /></td>
                </tr>
            </table>
            <table class="table table-bordered table-hover" id="show">
                <tr class="active1 table_style" style="font-weight:600;">
                    <td width="50">Sr. No.</td>
                    <td width="50">Roll No.</td>
                    <td width="150">Student Name</td>
                    <td width="50">Amount</td>
                    <td width="50">Cheque No.</td>
                    <td width="50">Date</td>
                    <td width="50">Expiry Date</td>
                    <td width="50">Updated Date</td>
                    <td width="50">Bank Name</td>
                    <td width="50">Action</td>
                    <!-- <td width="50">Bounced Cheque</td>
                    <td width="50">Cleared Cheque</td>
                    <td width="50">Expired Cheque</td>
                    <td width="50">Status</td>
                    <td width="200" colspan="3">Action</td> -->
                </tr>
                <?php 
                    $current_date=date('Y-m-d');
                    $current_timestamp=time();
                    $next_timestamp=$current_timestamp+(24*60*60*6);
                    // echo $next_timestamp;
                    $week_complete_date=date('Y-m-d',$next_timestamp);
                    // echo $week_complete_date;
                    $qry="select pdc.id,pdc.amount,roll,pdc.chq_no,bank_name,pdc.datee,expiry_date,stu_profile.name,f_mobile,update_date from pdc join stu_profile on pdc.roll=stu_profile.roll_no where statuss='bounced'";
                    // echo $qry;
                    $pdc_dtl=fetchAll($qry);
                    // print_r($pdc_dtl);
                    $sno=1;
                    foreach ($pdc_dtl as  $pdc_value) {

                        // echo $total_amount_to_be_paid;
                ?>
                <tr class="primary1 table_style2">
                    <td><?php echo $sno++; ?></td>
                    <td><?php echo $pdc_value['roll'] ?></td>
                    <td><?php echo $pdc_value['name'] ?></td>
                    <td><?php echo $pdc_value['amount'] ?></td>
                    <td><?php echo $pdc_value['chq_no'] ?></td>
                    <td><?php echo $pdc_value['datee']; ?></td>
                    <td><?php echo $pdc_value['expiry_date']; ?></td>
                    <td><?php echo $pdc_value['update_date']; ?></td>
                    <td><?php echo $pdc_value['bank_name']; ?></td>
                    <td><input class="chk" type="checkbox" value="<?php echo $pdc_value['id'] ?>" id="<?php echo $pdc_value['id']; ?>">
                    </td>
                </tr>
                <?php } ?>
            </table>
           
      </div>
      <script type="text/javascript">
          $('#tot_stu').html('<?php echo $sno-1; ?>')
      </script>
      <script type="text/javascript">
        $('#selectAll').on('change', function() {
            $('.chk:checkbox').prop('checked', $(this).is(":checked"));
        });
        function printPage(statuss,moveTo){
            var yourArray = $(".chk:checked").map(function(){return $(this).val()}).get();
            
            if(yourArray.length>0){
                alert("Message Sent");
                sendmsg="y";
                $.ajax({
                    url:root_path+"module/pdc_chq/send_pdc_msg.php",
                    data:"number="+yourArray+"&statuss="+statuss+"&send_msg="+sendmsg,
                    type:"post",
                    success:function(e){
                        $('#showme').html(e);
                        console.log(e);
                        $('#selectAll').prop('checked',false);
                        $('.chk').prop('checked',false);
                    },error:function(e){
                        alert(e);
                    }
                });
            }
        }
        function changeStatus(status,list){
            if(confirm("Do you really want to "+status+" cheques")){
                var yourArray = $(".chk:checked").map(function(){return $(this).prop('id')}).get();
                if(yourArray.length>0){
                    $.ajax({
                        url:root_path+"module/pdc_chq/change_status.php",
                        data:"ids="+yourArray+"&status="+status+"&list="+list,
                        type:"post",
                        success:function(e){
                            alert("Status Change");
                            $('#selectAll').prop('checked',false);
                            $('#show').html(e);

                        },error:function(e){
                            alert(e);
                        }
                    });
                }       
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
        var stu_batch=$('#stu_batch').val();
        var i_from=$('#i_from').val();
        var i_to=$('#i_to').val();
        var d_from=$('#d_from').val();
        var d_to=$('#d_to').val();
        var a_from=$('#a_from').val();
        var a_to=$('#a_to').val();
        $.ajax({
            url:root_path+"module/pdc_chq/search_bounced.php",
            data:"roll="+roll+"&stu_name="+stu_name+"&stu_chq_no="+stu_chq_no+"&stu_class="+stu_class+"&stu_batch="+stu_batch+"&i_from="+i_from+"&i_to="+i_to+"&d_to="+d_to+"&d_from="+d_from+"&a_to="+a_to+"&a_from="+a_from,
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