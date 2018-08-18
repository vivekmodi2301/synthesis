<?php 
	extract($_POST);
?>
<div class="form-group" id="new_<?php echo $new_chq_no;?>">
	<label class="col-lg-4 control-label">Upload File (<?php echo $new_chq_no;?> )</label>
    <div class="col-lg-8">                    
	    <table class="table table-bordered table-hover">
			<tr class="active1 table_style">
	            <td>Enter Title <input id="amount<?php echo $new_chq_no;?>" type="text" class="form-control" id="<?php echo $new_chq_no; ?>" onchange="chk_am(this.value,'<?php echo $new_chq_no;?>')" placeholder="TITLE" name="chq[<?php echo $new_chq_no-1;?>][title]" required="required" /></td>
                 <td>Upload Photo <input type="file" accept="image/x-png,image/jpeg,image/jpg" name="photo[<?php echo $new_chq_no-1;?>]" class="form-control" id="photo<?php echo $new_chq_no-1;?>" onchange="chk(this.value,'<?php echo $new_chq_no-1; ?>')" /></td>
	        </tr>
            </table>
    </div>
</div> 
