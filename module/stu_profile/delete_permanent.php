<?php
	$phpfiles=glob("../../include/php/*.php");
	foreach ($phpfiles as  $phpfile) {
		include_once($phpfile);
	}
	extract($_GET);
	$ids = explode(',',$id);
	if(is_array($ids)){
		foreach ($ids as  $value) {
			delete('stu_profile',$value);
		}
	}else{
		delete('stu_profile',$value);
	}
?>
<script type="text/javascript" src="<?php echo ROOT; ?>/include/js/constant.js"></script>
<script type="text/javascript">
	location.href=root_path+"index/stu_profile/syn_see_stu_profile";
</script>