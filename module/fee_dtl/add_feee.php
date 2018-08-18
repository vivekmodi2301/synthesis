<?php 
    $id="";
    if(isset($_GET['id'])){
        $id=$_GET['id'];
       // $batch_data=fetchOne("select id,class_id,name from batch");
    }
    if(isset($_POST['roll'])){

        $fee_submited=fetchRow("select id from fee where roll='$_POST[roll]'");
        if($fee_submited==1){
            $stu_id=fetchOne("select id from stu_profile where roll_no='$_POST[roll]'");
            // print_r("select id from stu_profile where roll_no='$_POST[roll]'");exit;
            $arr=array('wheree'=>'addmission','admission'=>$_SESSION['logindtl']['id'],'addmission_date'=>date('Y-m-d'));
            addUpdate('stu_profile',$arr,$stu_id['id']);
        }
        $_POST['submit_by']=$_SESSION['logindtl']['id'];        
        $last_id=addUpdate('fee',$_POST,$id);
        // echo $last_id;exit;
        $stu_detail=fetchOne("select black_list from stu_profile where roll_no=$_POST[roll]");
        // echo "select black_list from stu_profile where roll_no=$_POST[roll]";exit;
        if($stu_detail['black_list']=='n'){
        ?>
            <script type="text/javascript">
                if(confirm("Do you want to print recipt"))
                    location.href=root_path+"print_fee.php?id=<?php echo $last_id; ?>";
                else
                    location.href=root_path+"index/fee_dtl/syn_s_fee";
            </script>
        <?php
        }else{
            ?>
                <script type="text/javascript">
                    location.href=root_path+"index/fee_dtl/syn_s_fee";
            </script>
            <?php
        }
    }
?>
<?php 
    $last_recipt_id=fetchOne("select recipt_no from fee order by recipt_no desc limit 0,1");
    if($last_recipt_id['recipt_no']){
        $last_recipt_id['recipt_no']++;
    }else{
        $last_recipt_id['recipt_no']="1234567";
    }
    // print_r($last_recipt_id);
?>
	<div class="col-lg-12">
    <form role="form" method="post" class="form-horizontal" name="change_pwd" enctype="multipart/form-data" action="">
            	<div class="form-group">
                    <label class="col-lg-4 control-label">Receipt No.</label>
                    <div class="col-lg-8">
                    <input type="text"  name="recipt_no" class="form-control" value="<?php echo $last_recipt_id['recipt_no']; ?>"  onkeyup="this.value=this.value.replace(/[^0-9]/g,'');" style="text-transform:capitalize;" required>
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Roll No.</label>
                    <div class="col-lg-8">
                    <input type="text" id="roll" name="roll" class="form-control" onchange="show_dtl(this.value,'roll')" value="" pattern=".{5}" maxlength="5" onkeyup="this.value=this.value.replace(/[^0-9]/g,'');" style="text-transform:capitalize;" required>
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Token No.</label>
                    <div class="col-lg-8">
                    <input type="text" onkeyup="this.value=this.value.replace(/[^0-9]/g,'');" onchange="show_dtl(this.value,'token')" class="form-control" id="token_no" >
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-lg-4 control-label">Student Name</label>
                    <div class="col-lg-8">
                    <input type="text" disabled  class="form-control" id="student_name" >
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-lg-4 control-label">Class Name</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="class_name" disabled="disabled">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-lg-4 control-label">Batch Name</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="batch_name" disabled="disabled">
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Registration Fee</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="reg_fee"  style="text-transform:capitalize;" disabled="disabled">
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Tution Fee</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="tution_fee"  disabled="disabled">
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Test Series Fee</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control"  id="test_series_fee" disabled="disabled">
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Study Material Fee</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="study_material_fee"  disabled="disabled">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-lg-4 control-label">Total fee without GST</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="fee_without_gst"  disabled="disabled">
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">G.S.T. (18% is default)</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="gst_per"  disabled="disabled" >
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">G.S.T. Value</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="gst_value"  disabled="disabled" >
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Total Fee</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="total_fee"  disabled="disabled" >
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Scholarship (%) [In Tution Fee Only]</label>
                    <div class="col-lg-8">
                    <input type="text"  class="form-control" id="fee_disc" disabled="disabled">
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Payable Tution Fee After Scholarship (INR)</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="payble_tution_fee" disabled="disabled">
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Total Payable Fee After Scholarship (INR)</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="fee_after_disc" disabled="disabled">
                    </div>
                </div>
                <div id="amount">
                    
                </div>
                <div class="form-group">
                    <label class="col-lg-4 control-label">Date</label>
                    <div class="col-lg-8">
                    <input type="date" class="form-control" id="datee" name="datee" value="<?php echo date('Y-m-d'); ?>" max="<?php echo date('Y-m-d'); ?>" required>
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Due Amount</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="fee_due" name="fee_due" value="" disabled="disabled">
                    </div>
                </div>
                <div class="form-group">
                	<div class="col-lg-8 col-lg-offset-4">
                    <button type="submit"  id="submit" class="btn btn-danger btn-sm btn-block" style="font-family:'Century Gothic'; font-size:14px; font-weight:bold;" disabled>SUBMIT</button>
                    </div>
                </div>
            </form>
</div>
<div id="mee"></div>
<script type="text/javascript">
    function show_dtl(inputValue,type){
        $.ajax({
            url:root_path+"module/fee_dtl/show_dtl.php",
            data:"roll="+inputValue+"&type="+type,
            type:"post",
            success:function(e){
                $('#amount').html(e);
            }
        });
    }
    function show_hide_chq_dd_no_box(val){
            
        if (val == 'dd' || val == 'cheque') {
            $('#chq_dd_no').html("<input type='text' id='chqno' onchange='chkno(this.value)' name='number' placeholder='Cheque/ D.D. No.' required/> <input type='text' name='bank_name' placeholder='Enter bank name'>");
        } else {
            $('#chq_dd_no').html('');
        }
    }

    function balance_amount(total_fee,submited_fee,now_pay_fee,ino)
    {
        var due_fees=total_fee-submited_fee;
        if(due_fees<now_pay_fee)
        {
            alert("enter valid amount");
            $('#received_fee_'+ino).val('');
        }
        else
        {
            due_fees=due_fees-now_pay_fee;
        } 
        $('#fee_due').val(due_fees);   
    }
    function chkno(chq_no){
        $.ajax({
            url:root_path+"module/fee_dtl/chq_no.php",
            data:"chq_no="+chq_no,
            type:"post",
            success:function(e){
                $('#mee').html(e);
            }
        });   
    }
</script>