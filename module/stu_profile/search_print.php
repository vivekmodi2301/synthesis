<?php 
    $phpfiles=glob("../../include/php/*.php");
    foreach ($phpfiles as  $phpfile) {
        include_once($phpfile);
    }
    if(isset($_GET['wh'])){
        $wh = $_GET['wh'];
    }else{
        $wh ="where wheree='addmission'";
    }
?>
<link rel="stylesheet" type="text/css" href="<?php echo ROOT; ?>include/css/bootstrap.min.css">
<table id="show" class="table table-bordered table-hover">
    
	<tr class="active1 table_style" style="font-weight:600;">
        <td width="50">Sr. No.</td>
        <td width="80">Roll No.</td>
        <td width="200">Student Name</td>
        <td width="150">Father Name</td>
        <td width="100">Class</td>
        <td width="100">Batch</td>
        <td width="100">Photo</td>
        <td width="150">Token by</td>
        <td width="150">Registered by</td>
        <td width="150">Admission by</td>
        <td width="200">Inquiry Date</td>
        <td width="200">Registered Date</td>
        <td width="200">Demo From - To Date</td>
        <td width="200">Admission Date</td>
    </tr>
    <?php
        $student_dtl=fetchAll("select stu_profile.id,stu_profile.name,roll_no,f_name,m_name,class.name as class,batch.name as batch,propic,genrate_token,admission,from_date,to_date,inquiry_date,addmission_date,registration_by,registration_date from stu_profile left join class on class_id=class.id left join batch on batch_id=batch.id $wh");
        // echo "<tr><td>select stu_profile.id,stu_profile.name,roll_no,f_name,m_name,class.name as class,batch.name as batch,propic,genrate_token,admission,from_date,to_date,inquiry_date,addmission_date,registration_by,registration_date from stu_profile left join class on class_id=class.id left join batch on batch_id=batch.id where wheree='addmission' limit ".$frmdata['from'].", ".$frmdata['to']."</td></tr>";
        $sno = 1;
        foreach ($student_dtl as  $student_dtl_value) {
            extract($student_dtl_value);
            $genrate_token=loginFetchOne("select uname from login where id=$genrate_token");
            $addmission=loginFetchOne("select uname from login where id=$admission");
            $register=loginFetchOne("select uname from login where id=$registration_by");
    ?>
    <tr class="primary1 table_style2">
        <td><?php echo $sno++; ?></td>
        <td><?php echo $roll_no; ?></td>
        <td><?php echo $name; ?></td>
        <td><?php echo $f_name; ?></td>
        <td><?php echo $class; ?></td>
        <td><?php echo $batch; ?></td>
        <td>
        <?php 
        $path=ROOT.$propic;
        if($propic){
        ?>
            <img src="<?php echo ROOT.$propic; ?>" alt="N/A" height="30" width="30" />
            <?php }else{echo "N/A";}?>
        </td>
        <td><?php echo $genrate_token['uname'] ?></td>
        <td><?php echo $register['uname'] ?></td>
        <td><?php echo $addmission['uname'] ?></td>
        <td><?php echo $inquiry_date; ?></td>
        <td><?php echo $registration_date; ?></td>
        <td><?php echo $from_date." - ".$to_date; ?></td>
        <td><?php echo $addmission_date ?></td>
    </tr>
    <?php } ?>

</table>