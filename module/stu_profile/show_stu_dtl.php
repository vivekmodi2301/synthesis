<?php 
$phpfiles=glob("../../include/php/*.php");
foreach ($phpfiles as $phpfile) {
	include_once($phpfile);
}
extract($_POST);
$stu_dtl=fetchAll("select id,name,f_name,m_name,class_id,batch_id,gender,s_mobile,category,f_mobile,m_mobile,wheree,note from stu_profile where token_no='$token_no'");
// print_r($stu_dtl);

if(!isset($stu_dtl[0]['name'])){
	// echo "aja";
	?>
	<script type="text/javascript">
	$('#s_name').val("");
	$('#f_name').val('');
	$('#m_name').val('');
	$('#s_mobile').val('');
	$('#f_mobile').val('');
	$('#m_mobile').val('');
	$('#stu_id').val('');
	$('#note').html('');
	$("#class_id>option[value='']").attr('selected', true);
	$("#batch_id>option[value='']").attr('selected', true);
	$("#cat>option[value='']").attr('selected', true);
	$('#class_id').val('');
    $('#batch').attr('disabled','disabled');
	$('#batch').html("<option value=''>Select class first</option>");
	$("#gender>option[value='']").attr('selected', true);
</script>
	<?php	
}else{
	if($stu_dtl[0]['wheree']=='addmission'){
		?>
		<script type="text/javascript">
			alert("Already filled");

			$('#s_name').val("");
			$('#f_name').val('');
			$('#m_name').val('');
			$('#s_mobile').val('');
			$('#f_mobile').val('');
			$('#m_mobile').val('');
			$('#stu_id').val('');
			$('#note').html('');
			$("#class_id>option[value='']").attr('selected', true);
			$("#batch_id>option[value='']").attr('selected', true);
			$("#cat>option[value='']").attr('selected', true);
			$('#class_id').val('');
		    $('#batch').attr('disabled','disabled');
			$('#batch').html("<option value=''>Select class first</option>");
			$("#gender>option[value='']").attr('selected', true);
		</script>
		<?php
	}else{
foreach ($stu_dtl as  $stu_dtl) {
?>

<input type="hidden" name="id" value="<?php echo  $stu_dtl['id']?>">
<script type="text/javascript">
	$('#s_name').val("<?php echo $stu_dtl['name']; ?>");
	$('#f_name').val('<?php echo $stu_dtl['f_name']; ?>');
	$('#m_name').val('<?php echo $stu_dtl['m_name']; ?>');
	$('#s_mobile').val('<?php echo $stu_dtl['s_mobile']; ?>');
	$('#f_mobile').val('<?php echo $stu_dtl['f_mobile']; ?>');
	$('#m_mobile').val('<?php echo $stu_dtl['m_mobile']; ?>');
	$('#stu_id').val('<?php echo $stu_dtl['id']; ?>');
	$('#note').html('<?php echo $stu_dtl['note'] ?>');
	$("#class_id>option[value=<?php echo $stu_dtl['class_id']; ?>]").attr('selected', true);
	$("#cat>option[value=<?php echo $stu_dtl['category']; ?>]").attr('selected', true);
	$("#gender>option[value=male]").attr('selected', true);
	show_batch('<?php echo $stu_dtl['class_id'];?>','<?php echo $stu_dtl['batch_id'];?>');
</script>
<?php } }}?>