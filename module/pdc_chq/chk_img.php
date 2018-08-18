<?php 
	session_start();
	$phpfiles=glob("../../include/php/*.php");
	foreach ($phpfiles as $phpfile) {
		include_once($phpfile);
	}
	extract($_POST);
	$dot_position=strrpos($image_name,'.');
	$ext=substr($image_name,$dot_position+1);
	if($ext!='png' && $ext!='jpeg' && $ext!='jpg' ){
		?>
		<script type="text/javascript">
			$('#photo<?php echo $photo_id; ?>').val('');
		</script>
		<?php
	}
?>