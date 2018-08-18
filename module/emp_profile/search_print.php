<?php 
    $phpfiles=glob("../../include/php/*.php");
    foreach ($phpfiles as  $phpfile) {
        include_once($phpfile);
    }
    if(isset($_GET['wh'])){
        $wh .= $_GET['wh'];
    }else{
        $wh = "";
    }
?>
<link rel="stylesheet" type="text/css" href="<?php echo ROOT; ?>include/css/bootstrap.min.css">

<table id="show" class="table table-bordered table-hover">
	<tr class="active1 table_style" style="font-weight:600;">
        <td width="50">Sr. No.</td>
        <td width="80">Employee ID</td>
        <td width="200">Employee Name</td>
        <td width="150">Designation</td>
        <td width="100">Contact No.</td>
    </tr>
    <?php
        $sno=1;
        $emp_data=fetchAll("select id,emp_id,emp_name,degination,self_mobile,upload_photo from employee_profile $wh");
        foreach ($emp_data as  $emp_value) {
    ?>
    <tr class="primary1 table_style2">
        <td><?php   echo $sno++; ?></td>
        <td><?php   echo $emp_value['emp_id']; ?></td>
        <td><?php   echo $emp_value['emp_name']; ?></td>
        <td><?php   echo $emp_value['degination']; ?></td>
        <td><?php   echo $emp_value['self_mobile']; ?></td>
    </tr>
    <?php   } ?>
</table>