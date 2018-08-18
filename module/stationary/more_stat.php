<?php 
	extract($_POST);
?>
<div class="form-group" id="new_<?php echo $new_chq_no;?>">
	<label class="col-lg-4 control-label">stationary (<?php echo $new_chq_no;?> )</label>
    <div class="col-lg-8">                    
	    <table class="table table-bordered table-hover">
			<tr class="active1 table_style">
	            <td>Stationary Name <input id="amount<?php echo $new_chq_no;?>" type="text" class="form-control" placeholder="Name" name="chq[<?php echo $new_chq_no;?>][name]" required="required" /></td>
	            <td>Enter Amount <input type="text" class="form-control" placeholder="Amount" name="chq[<?php echo $new_chq_no;?>][amount]" required="required" /></td>
	             <td>Date <input type="date"  onkeyup="this.value=this.value.replace(/[^0-9]/g,'');" class="form-control" placeholder="date" name="chq[0][datee]" required="required" /></td>
	            </tr>
	        
            </table>