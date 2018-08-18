<?php 
	extract($_POST);
?>
<div class="form-group" id="new_<?php echo $new_chq_no;?>">
	<label class="col-lg-4 control-label">PDC Cheque (<?php echo $new_chq_no;?> )</label>
    <div class="col-lg-8">                    
	    <table class="table table-bordered table-hover">
			<tr class="active1 table_style">
	            <td>Enter Cheque Amount <input id="amount<?php echo $new_chq_no;?>" type="text" class="form-control" id="<?php echo $new_chq_no; ?>" onchange="chk_am(this.value,'<?php echo $new_chq_no;?>')" placeholder="INR" name="chq[<?php echo $new_chq_no;?>][amount]" required="required" /></td>
	            <td>Enter Cheque Number <input type="text" pattern=".{6}" onchange="chkno(this.value,'<?php echo $new_chq_no;?>')" id="chq<?php echo $new_chq_no;?>" maxlength="6" class="form-control" placeholder="Enter Cheque Number" name="chq[<?php echo $new_chq_no;?>][chq_no]" required="required" /></td>
	            <td>Enter Bank Name <input type="text" class="form-control" placeholder="Enter Bank Name" name="chq[<?php echo $new_chq_no;?>][bank_name]" required="required" /></td>
	        </tr>
	        <tr class="active1 table_style">
	            <td>Enter Cheque Date (From)- <input type="date" name="chq[<?php echo $new_chq_no;?>][datee]" id="datee" class="form-control" placeholder="Cheque Date" required="required" /></td>
	            <td>-(To) Cheque Expiring Date <input type="date" name="chq[<?php echo $new_chq_no;?>][expiry_date]" id="expiry_date" class="form-control" placeholder="Cheque Expiring Date" required="required"  /></td>
	            <td>Upload Cheque <input type="file" accept="image/x-png,image/jpeg,image/jpg" name="photo[<?php echo $new_chq_no-1;?>]" class="form-control" id="photo<?php echo $new_chq_no-1;?>" onchange="chk(this.value,'<?php echo $new_chq_no-1; ?>')" /></td>
	        </tr>
            </table>
    </div>
</div>    