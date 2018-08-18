<?php
	$phpfiles=glob("../../include/php/*.php");
	foreach ($phpfiles as  $phpfile) {
		include_once($phpfile);
	}
	extract($_POST);
	if($sch_id){
		$sub=fetchOne("select scholar_subreason from scholarship where id=$sch_id");

		$all_reason=explode(',',$sub['scholar_subreason']);	
	}
?>
<div class="form-group">

	<label class="col-lg-4 control-label">Scholar Sub Reason</label>
	<div class="col-lg-8">

		<select class="form-control" id="sub_sch"  name="scholar_subreason" >
			<option value=""><?php print_r($_POST); ?></option>>
			<?php 
			if(is_array($all_reason)){
				foreach ($all_reason as $all_reason) {
					?>
					<option value="<?php echo $all_reason; ?>" <?php if($sub_sch_id && $sch_id && $sub_sch_id==$all_reason){echo "selected";} ?>><?php echo $all_reason; ?></option>
					<?php 
				}
			}
			?>
		</select>                      
	</div>
</div>