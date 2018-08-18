
	<div class="col-lg-12">
    <form role="form" class="form-horizontal" name="change_pwd" enctype="multipart/form-data" action="">
            	<div class="form-group">
                	<label class="col-lg-4 control-label">Roll No.</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" onchange="show_dtl(this.value)" value="" pattern=".{5}" maxlength="5" onkeyup="this.value=this.value.replace(/[^0-9]/g,'');" style="text-transform:capitalize;">
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
                <div id="amount">
                    
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Due Amount</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="fee_due" name="fee_due" value="" style="text-transform:capitalize;">
                    </div>
                </div>
                <div class="form-group">
                	<div class="col-lg-8 col-lg-offset-4">
                    <button type="submit" name="submit" id="submit" class="btn btn-danger btn-sm btn-block" style="font-family:'Century Gothic'; font-size:14px; font-weight:bold;">SUBMIT</button>
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
</script>