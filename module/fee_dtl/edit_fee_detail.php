<?php 
//print_r($_GET);
$id="";
if(isset($_GET['id'])){
$id=$_GET['id'];
//echo $id;exit;
$evalue=fetchOne("select fee.id,roll,scholarship,recipt_no,class_id,batch_id,amount,pay_by,number,datee,bank_name from fee join stu_profile on roll=stu_profile.roll_no where fee.id=$id");
$total_submit_fee=fetchOne("select sum(amount) as amount from fee where roll='$evalue[roll]' group by roll");
$total_fee=fetchOne("select total_fee,tution_fee from class_fee_dtl where class_id='$evalue[class_id]' and batch_id='$evalue[batch_id]'");
$fees_after_scholarship=$total_fee['total_fee']-($total_fee['tution_fee']*$evalue['scholarship']/100);


//print_r($value);exit;
}
if(isset($_POST['amount'])){
    addUpdate('fee',$_POST,$id);
    ?>
    <script>
        location.href=root_path+"index/fee_dtl/syn_fee_dtl/<?php echo $evalue['roll']; ?>";
    </script>
    <?php
}
   // error_reporting(0);
    ?>
    <form method="post">
<div class="form-group">
    <label class="col-lg-4 control-label">Received Amount</label>
    <div class="col-lg-8">
        <input type="number"  class="form-control amount"  name="recipt_no" id="recipt_no" value="<?php echo $evalue['recipt_no']; ?>" onchange="chkrecipt(this.value,'<?php echo $_GET['id']; ?>')" required>
        <span id="erecipt"></span>
    </div>
</div><br><br><br>
<div class="form-group">
    <label class="col-lg-4 control-label">Received Amount</label>
    <div class="col-lg-8">
        <input type="number" min="0" max="<?php echo $total_fee_due; ?>" class="form-control amount" id="received_fee_1" name="amount" value="<?php echo $evalue['amount']; ?>" onchange="balance_amount(<?php echo $fees_after_scholarship; ?>,<?php echo $total_submit_fee['amount']; ?>,this.value)" required>
        <input <?php if($evalue['pay_by']=='cheque'){echo "checked";} ?> onchange="show_hide_chq_dd_no_box('cheque',this.value,'')" type="radio" name="pay_by" id="pay_by" value="cheque" required> By Cheque | <input <?php if($evalue['pay_by']=='cash'){echo "checked";} ?> type="radio" onchange="show_hide_chq_dd_no_box('cash',this.value,'')" name="pay_by" id="pay_by" value="cash" required> Cash | <input <?php if($evalue['pay_by']=='dd'){echo "checked";} ?> onchange="show_hide_chq_dd_no_box('dd',this.value,'')" type="radio" name="pay_by" id="pay_by" value="dd" required> By D.D. | <a href="" title="Print Receipt"><img src="<?php   echo ROOT; ?>include/images/icon_print.png" height="30" width="30" /></a> | <span id="chq_dd_no"></span>
    </div>
</div>
<div class="form-group">
    <div class="col-lg-8 col-lg-offset-4">
    <button type="submit"  id="submit" class="btn btn-danger btn-sm btn-block" style="font-family:'Century Gothic'; font-size:14px; font-weight:bold;" >SUBMIT</button>
    </div>
</div>
</form>
<script>
    function show_hide_chq_dd_no_box(type,val,bank){
        if(type=='cheque' || type=='dd')
            $('#chq_dd_no').html("<input type='text' value='"+val+"' name='number' placeholder='Cheque/ D.D. No.' required/><input type='text' value='"+bank+"' name='bank_name' placeholder='Enter bank name' required/>");
        else
            $('#chq_dd_no').html('');
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
    function chkrecipt(recipt_no,fee_id){
        $.ajax({
            url:root_path+"module/fee_dtl/chkrecipt.php",
            data:"recipt_no="+recipt_no+"&fee_id="+fee_id,
            type:"post",
            success:function(e){
                $('#erecipt').html(e);
            },error:function(e){
              alert(e);
            }
        });
    }
</script>
<?php 
    if($evalue['pay_by']=='cheque' || $evalue['pay_by']=='dd'){
        ?>
        <script>
            show_hide_chq_dd_no_box('<?php echo $evalue['pay_by']; ?>','<?php echo $evalue['number']; ?>','<?php echo $evalue['bank_name']; ?>');
        </script>
        <?php
    }
?>