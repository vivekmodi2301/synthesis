<?php 
    $phpfiles=glob("../../include/php/*.php");
    foreach ($phpfiles as  $phpfile) {
        include_once($phpfile);
    }
    $wh = "";
    if(isset($_GET['wh'])){
        $wh .= $_GET['wh'];
    }
?>
<link rel="stylesheet" type="text/css" href="<?php echo ROOT; ?>include/css/bootstrap.min.css">

<table id="show" class="table table-bordered table-hover">
    <tr class="active1 table_style" style="font-weight:600;">
        <td width="50">Sr. No.</td>
        <td width="80">Faculty ID</td>
        <td width="200">Employee Name</td>
        <td width="150">Designation</td>
        <td width="100">Contact No.</td>
    </tr>
    <?php 

        $teacher_data=fetchAll("select id,faculty_id,faculty_name,desiganation,mobile_self,upload_photo from teacher_profile $wh");
        // echo "select id,faculty_id,faculty_name,desiganation,mobile_self,upload_photo from teacher_profile limit  ".$frmdata['from'].", ".$frmdata['to'];
        $sno=1;
        foreach ($teacher_data as $teacher_value) {
    ?>
    <tr class="primary1 table_style2">
        <td><?php echo $sno++; ?></td>
        <td><?php echo $teacher_value['faculty_id'] ?></td>
        <td><?php echo $teacher_value['faculty_name'] ?></td>
        <td><?php echo $teacher_value['desiganation'] ?></td>
        <td><?php echo $teacher_value['mobile_self'] ?></td>
    </tr>
    <?php } ?>
</table>
            