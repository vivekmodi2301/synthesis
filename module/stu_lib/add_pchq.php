<?php 
if(isset($_POST['chq'])){
    $i=0;
    foreach ($_POST['chq'] as  $value) {
        if(isset($_FILES['photo']['name'][$i])){
            if($_FILES['photo']['type'][$i]=='image/jpeg' || $_FILES['photo']['type'][$i]=='image/png'){
                $upload_dir = "include/chq_photo/"; 
                $file_name = $_FILES["photo"]["name"][$i];
                $upload_file = $upload_dir.$file_name;    
                if(move_uploaded_file($_FILES['photo']['tmp_name'][$i],$upload_file)){        
                    $source_image = $upload_file;
                    $image_destination = $upload_dir."min-".$file_name;
                    $compress_images = compressImage($source_image, $image_destination);      
                    unlink($upload_file);
                }
                $value['chequey']=time()+$i."_".$_FILES['photo']['name'][$i];
                move_uploaded_file($_FILES['photo']['tmp_name'][$i],'include/chq_photo/'.$value['chequey']);

            }
            $i++;
        }
        // exit;
        $value['roll']=$_POST['roll'];
        $value['pdc_recived']=date('Y-m-d');
        $value['submit_by']=$_SESSION['logindtl']['id'];
        addUpdate('pdc',$value);
        ?>
            <script type="text/javascript">
                location.href=root_path+"index/pdc_chq/syn_s_chq";
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
                    <input type="text" name="roll" pattern=".{5}" maxlength="5" onkeyup="this.value=this.value.replace(/[^0-9]/g,'');" onchange="show_dtl(this.value,'roll')" id="roll_no" class="form-control" required style="text-transform:capitalize;">
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
                    <input type="text" disabled class="form-control" id="name"  value="" style="text-transform:capitalize;">
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
                	<label class="col-lg-4 control-label">Total Fee of This Class with G.S.T.</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="fee_gst"   disabled="disabled">
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Scholarship In Tution Fee (In %)</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="scholarship"  style="text-transform:capitalize;" disabled="disabled">
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Total Fee To Be Paid (After Scholarship)</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="fee_to_pay"  style="text-transform:capitalize;" disabled="disabled">
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Received Fee Yet</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="recived_fee"  style="text-transform:capitalize;" disabled="disabled">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-lg-4 control-label">Remaning Fees</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="remaning_fee"  style="text-transform:capitalize;" disabled="disabled">
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">PDC Cheque (1<sup>st</sup> Installment)</label>
                    <div class="col-lg-8">                    
                    <table class="table table-bordered table-hover">
            	<tr class="active1 table_style">
                    <td>Enter Cheque Amount <input type="text" class="form-control" placeholder="INR" id="amount1" onchange="chk_am(this.value,'1')"   name="chq[0][amount]" required="required" /></td>
                    <td>Enter Cheque Number <input type="text" pattern=".{6}" maxlength="6"  onkeyup="this.value=this.value.replace(/[^0-9]/g,'');" onchange="chkno(this.value,1)" id="chq1" class="form-control" placeholder="Enter Cheque Number" name="chq[0][chq_no]" required="required" /></td>
                    <td>Enter Bank Name <input type="text" class="form-control" placeholder="Enter Bank Name" name="chq[0][bank_name]" required="required" /></td>
                </tr>
                <tr class="active1 table_style">
                    <td>Enter Cheque Date (From)- <input type="date" name="chq[0][datee]" id="datee" class="form-control" placeholder="Cheque Date" required="required" /></td>
                    <td>-(To) Cheque Expiring Date <input type="date" name="chq[0][expiry_date]" id="expiry_date" class="form-control" placeholder="Cheque Expiring Date" required="required"  /></td>
                    <td>Upload Cheque <input type="file" accept="image/x-png,image/jpeg,image/jpg" id="photo0" onchange="chk(this.value,0)" name="photo[0]" class="form-control" /></td>
                </tr>
            </table>
                    </div>
                </div>
                
                <div id="new_chq"></div>
                <div class="form-group">
                	<div class="col-lg-8 col-lg-offset-4">
                    <span onclick="add_more_cheque()" class="btn btn-success btn-sm btn-block" style="font-family:'Century Gothic'; font-size:14px; font-weight:bold;">+ ADD MORE P.D.C. CHEQUE</span>
                    </div>
                </div>
                <div id="new_chq"></div>
                <div class="form-group">
                    <div class="col-lg-8 col-lg-offset-4">
                    <span onclick="remove_pdc()" class="btn btn-success btn-sm btn-block" style="font-family:'Century Gothic'; font-size:14px; font-weight:bold;">- Remove Pdc</span>
                    </div>
                </div>
                <span><input type="hidden" value="1" id="total_chq"></span>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Total Cheque Amount (INR)</label>
                    <div class="col-lg-8">
                    <input onfocus="total_amount()" type="text" class="form-control" id="total_chq_amount" name="fee_due" value="" style="text-transform:capitalize;">
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">PDC + Old Received Fee (INR)</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="total_fee_pdc" name="fee_due" value="" style="text-transform:capitalize;">
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Due Amount</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="due_amount" name="fee_due" value="" style="text-transform:capitalize;">
                    </div>
                </div>
                <div class="form-group">
                	<div class="col-lg-8 col-lg-offset-4">
                    <button type="submit" name="submit" id="submit" class="btn btn-danger btn-sm btn-block" style="font-family:'Century Gothic'; font-size:14px; font-weight:bold;">SUBMIT</button>
                    </div>
                </div>
                <span id="show" ></span>
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
            url:root_path+"module/pdc_chq/add_chq.php",
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
        // alert(last_chq_no);
        if(last_chq_no>1){
            $('#new_'+last_chq_no).remove();
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
    function chkno(chq_no,icn){
        $.ajax({
            url:root_path+"module/pdc_chq/chq_no.php",
            data:"chq_no="+chq_no+"&icn="+icn,
            type:"post",
            success:function(e){
                $('#chq'+icn).html(e);
            }
        });   
    }
    function chk_am(now_am,feild){
        var rem_am = $('#remaning_fee').val();
        // alert(now_am);
        // alert(rem_am);
        now_am = parseInt(now_am);
        total_chq=parseInt($('#total_chq').val());
        for( var i = 1 ; i < total_chq ; i++){
            now_am = now_am + parseInt($('#amount'+i).val());
        }
        // alert(total_chq);
        // alert(now_am);
        if(now_am>rem_am){
            alert("Enter valid amount");
            $('#amount'+feild).val('');
        }
    }
</script>