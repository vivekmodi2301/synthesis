<?php 
    $id="";
    if(isset($_GET['id'])){
        $id=$_GET['id'];
       // $batch_data=fetchOne("select id,class_id,name from batch");
    }
    if(isset($_POST['roll'])){
        
        addUpdate('fee',$_POST,$id);
        ?>
        <script type="text/javascript">
            location.href=root_path+"index/fee_dtl/syn_s_fee";
        </script>
        <?php
    }
?>
	<div class="col-lg-12">
    <form role="form" method="post" class="form-horizontal" name="change_pwd" enctype="multipart/form-data" action="">
            	<div class="form-group">
                	<label class="col-lg-4 control-label">Roll No.</label>
                    <div class="col-lg-8">
                    <input type="text" name="roll" class="form-control" onchange="show_dtl(this.value)" value="" pattern=".{5}" maxlength="5" onkeyup="this.value=this.value.replace(/[^0-9]/g,'');" style="text-transform:capitalize;" required>
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Token No.</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="token_no" disabled="disabled">
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
                <div class="form-group">
                    <label class="col-lg-4 control-label">Submited Pdc</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="pdc" disabled="disabled">
                    </div>
                </div>

                <div id="amount">
                    
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
<script type="text/javascript">
    function show_dtl(roll){
        $.ajax({
            url:root_path+"module/fee_dtl/show_dtl.php",
            data:"roll="+roll,
            type:"post",
            success:function(e){
                $('#amount').html(e);
            }
        });
    }
    function show_hide_chq_dd_no_box(val){
            
        if (val == 'dd' || val == 'cheque') {
            $('#chq_dd_no').html("<input type='text' name='number' placeholder='Cheque/ D.D. No.' required/>");
        } else {
            $('#chq_dd_no').html('');
        }
    }

    function balance_amount(total_fee,submited_fee,now_pay_fee)
    {

        var due_fees=total_fee-submited_fee;
        if(due_fees<now_pay_fee)
        {
            alert("enter valid amount");
            $('#amount').val('');
        }
        else
        {
            due_fees=due_fees-now_pay_fee;
        } 
        $('#fee_due').val(due_fees);   
    }
    function balance_amount(total_fee,submited_fee,now_pay_fee)
    {

        var due_fees=total_fee-submited_fee;
        if(now_pay_fee<0 || due_fees<now_pay_fee)
        {
            alert("enter valid amount");
            $('.amount').val('');
        }
        else
        {
            due_fees=due_fees-now_pay_fee;
        } 
        $('#fee_due').val(due_fees);   
    }

</script>