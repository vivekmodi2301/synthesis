<?php
	$phpfiles=glob("../../include/php/*.php");
	foreach ($phpfiles as  $phpfile) {
		include_once($phpfile);
	}
?>
<table class="table table-bordered">
<tr class="active1 table_style" style="font-weight:600;">
    <td width="50">Sr. No.</td>
    <td width="80">Roll No.</td>
    <td width="200">Student Name</td>
    <td width="150">Father Name</td>
    <td width="100">Class</td>
    <td width="100">Batch</td>
    <td width="100">Photo</td>
    <td width="200">Other Detail</td>
    
</tr>
<?php
extract($_POST);
//to select all data
$wh=" where wheree='addmission'";
if($stu_name!=''){
	$wh.=" and stu_profile.name like '%$stu_name%'";
} 
if($stu_f_name!=''){
	$wh.=" and f_name like '%$stu_f_name%'";
} 
if( $stu_class!=''){
	$wh.=" and class.id=$stu_class";
} 
elseif( $stu_class==''){
    $wh.=" and class.id!=''";
} 
if( $stu_batch!=''){
	$wh.=" and batch.id=$stu_batch";
} 
if($roll!=''){
    $wh.=" and (roll_no like '$roll%'";
	$wh.=" or token_no like '$roll%')";
}
    $student_dtl=fetchAll("select stu_profile.id,stu_profile.name,roll_no,f_name,m_name,class.name as class,batch.name as batch,propic,from_date,to_date,inquiry_date,addmission_date, genrate_token,admission,registration_by,registration_date from stu_profile join class on class_id=class.id join batch on batch_id=batch.id $wh");
    $student_total_row=fetchRow("select stu_profile.id from stu_profile join class on class_id=class.id join batch on batch_id=batch.id $wh");
    ?>
    <script type="text/javascript">
        $('#tot_stu').html('<?php echo $student_total_row; ?>')
    </script>
    <?php 

   // echo "<tr><td>select stu_profile.id,stu_profile.name,roll_no,f_name,m_name,class.name as class,batch.name as batch,propic,from_date,to_date,inquiry_date,addmission_date, genrate_token,admission,registration_by,registration_date from stu_profile join class on class_id=class.id join batch on batch_id=batch.id $wh</td></tr>";

    $sno=1;
    foreach ($student_dtl as  $student_dtl_value) {
        extract($student_dtl_value);
        
?>
<tr class="primary1 table_style2">
    <td><?php echo $sno++; ?></td>
    <td><?php echo $roll_no; ?></td>
    <td><?php echo $name ?></td>
    <td><?php echo $f_name ?></td>
    <td><?php echo $class ?></td>
    <td><?php echo $batch ?></td>
    <td>
    <?php 
        if(file_exists(ROOT."include/student_propic/$propic")){
    ?>
        <img src="<?php echo ROOT; ?>include/student_propic/<?php echo $propic ?>" height="30" width="30" /></td>
        <?php }else{echo "N/A";} ?>
    
    <td><a href="<?php echo ROOT; ?>index/stu_profile/syn_other_dtl/<?php echo $roll_no; ?>">See Detail</a></td>
</tr>
<?php } ?>