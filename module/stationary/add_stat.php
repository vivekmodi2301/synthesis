<?php 
if(isset($_POST['roll_no'])){
    $i=0;
    foreach ($_POST['chq'] as  $value) {
        $value['roll_no']=$_POST['roll_no'];
        $value['submit_by']=$_SESSION['logindtl']['id'];
        addUpdate('stationary',$value);
        ?>
            <script type="text/javascript">
                location.href=root_path+"index/stationary/syn_s_stat";
            </script>
        <?php
    }
}
?>
	<div class="col-lg-12" style="font-weight:600;">
    <form role="form" class="form-horizontal" name="change_pwd" enctype="multipart/form-data"  method="post">
            	<div class="form-group">
                	<label class="col-lg-4 control-label">Roll No.</label>
                    <div class="col-lg-8">
                    <input type="text" name="roll_no" pattern=".{5}" maxlength="5" onkeyup="this.value=this.value.replace(/[^0-9]/g,'');" onchange="show_dtl(this.value,'roll')" id="roll_no" class="form-control" required style="text-transform:capitalize;">
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Token No.</label>
                    <div class="col-lg-8">
                    <input type="text" id="token_no" class="form-control" pattern=".{7}" maxlength="7"  onkeyup="this.value=this.value.replace(/[^0-9]/g,'');" onchange="show_dtl(this.value,'token')" style="text-transform:capitalize;">
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Student Name</label>
                    <div class="col-lg-8">
                    <nput type="text" disabled class="form-control" id="name"  value="" style="text-transform:capitalize;">
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Select Class</label>
                    <div class="col-lg-8">
                        <input disabled class="form-control" type="text" id="class_id">
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Select Batch</label>
                    <div class="col-lg-8">
                        <input disabled class="form-control" type="text" id="batch_id">
                    </div>
                </div>
          
                <div class="form-group">
                    <label class="col-lg-4 control-label">Stationary </label>
                    <div class="col-lg-8">                    
                    <table class="table table-bordered table-hover">
                <tr class="active1 table_style">
                    <td>Stationary Name <input type="text" class="form-control" placeholder="Name" id="amount1"  name="chq[0][name]" required="required" /></td>
                    <td>Enter Amount <input type="text"  onkeyup="this.value=this.value.replace(/[^0-9]/g,'');" class="form-control" placeholder="Amount" name="chq[0][amount]" required="required" /></td>
                     <td>Date <input type="date"   class="form-control" placeholder="date" name="chq[0][datee]" required="required" value="<?php echo date('Y-m-d'); ?>" /></td>
                </tr>
                
            </table>
                    </div>
                </div>
                <div id="new_chq"></div>
                <div class="form-group">
                	<div class="col-lg-8 col-lg-offset-4">
                    <span onclick="add_more_cheque()" class="btn btn-success btn-sm btn-block" style="font-family:'Century Gothic'; font-size:14px; font-weight:bold;">+ ADD MORE STATIONARY</span>
                    </div>
                </div>
                <div id="new_chq"></div>
                <div class="form-group">
                    <div class="col-lg-8 col-lg-offset-4">
                    <span onclick="remove_pdc()" class="btn btn-success btn-sm btn-block" style="font-family:'Century Gothic'; font-size:14px; font-weight:bold;">- Remove </span>
                    </div>
                </div>
                <span><input type="hidden" value="1" id="total_chq"></span>
                <!--<div class="form-group">
                	<label class="col-lg-4 control-label">Total Amount Of Stationary (INR)</label>
                    <div class="col-lg-8">
                    <input onfocus="total_amount()" type="text" class="form-control" id="total_chq_amount" name="fee_due" value="" style="text-transform:capitalize;">
                    </div>
                </div>-->
                <div class="form-group">
                	<div class="col-lg-8 col-lg-offset-4">
                    <button type="submit" name="submit" id="submit" class="btn btn-danger btn-sm btn-block" style="font-family:'Century Gothic'; font-size:14px; font-weight:bold;">SUBMIT</button>
                    </div>
                </div>                <span id="show" ></span>
            </form>
</div>
<script type="text/javascript">
    //showing detail
    function show_dtl(input_value,type){
        
        $.ajax({
            url:root_path+"module/pdc_chq/show_dtl.php",
            data:"input_value="+input_value+"&type="+type,
            type:"post",
            success:function(e){
                $('#show').html(e);
            }
        });
    }
    //last total amount
    function total_amount(){
        var total_amount=0;
        var total_chq=$('#total_chq').val();
        for(var i=1;i<=total_chq;i++){
            chq_amount=parseInt($('#amount'+i).val());
            if(!isNaN(chq_amount)){
                total_amount+=chq_amount;
            }else{
                $('#amount'+i).val('');
            }
        }
        $('#total_chq_amount').val(total_amount);
        var recived_fee=parseInt($('#recived_fee').val());
        $('#total_fee_pdc').val(recived_fee+total_amount);
        var total_remaning_fee=parseInt($('#remaning_fee').val());
        $('#due_amount').val(total_remaning_fee-total_amount)
    }
    //add cheque
    function add_more_cheque(){
        $('#total_chq').val(parseInt($('#total_chq').val())+1);
        var new_chq_no=$('#total_chq').val();
        $.ajax({
            url:root_path+"module/stationary/more_stat.php",
            data:"new_chq_no="+new_chq_no,
            type:"post",
            success:function(e){
                $('#new_chq').append(e);
            }
        });
    }
    //remove pdc
    function remove_pdc(){
        var last_chq_no=$('#total_chq').val();
        if(last_chq_no>1){
            $('#new_'+last_chq_no).html('');
            $('#total_chq').val(last_chq_no-1);
        }
    }
    //checking image
    function chk(image_name,photo_id){
        $.ajax({
            url:root_path+"module/pdc_chq/chk_img.php",
            data:"image_name="+image_name+"&photo_id="+photo_id,
            type:"post",
            success:function(e){
                $('#show').html(e);
            }
        });
    }

    function calculate_to_date(installment_number){
        installment_number=installment_number-1;
        var chq_initial_date = $('[id=datee]:eq('+installment_number+')').val();
        chq_initial_date.valueAsDate = new Date();  
        var temp =new Date(chq_initial_date);
        temp.setMonth( temp.getMonth( ) + 3 );
        var expiry_date = new Date();
        var yyyy= temp.getFullYear();
        var mm=temp.getMonth();
        var dd=temp.getDate();
        if(dd<10){dd='0'+dd} 
        if(mm<10){mm='0'+mm} 
        expiry_date=yyyy+'-'+mm+'-'+dd;   
        $('[id=expiry_date]:eq('+installment_number+')').val(expiry_date);
    }
</script>