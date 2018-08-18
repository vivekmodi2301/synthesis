<?php 
    $phpfiles=glob("../../include/php/*.php");
    foreach ($phpfiles as  $phpfile) {
        include_once($phpfile);
    }
    if(isset($_GET['wh'])){
        $wh = $_GET['wh'];
    }
?>

<link rel="stylesheet" type="text/css" href="<?php echo ROOT; ?>include/css/bootstrap.min.css">
<table id="show" class="table table-bordered table-hover">
	<tr class="active1 table_style" style="font-weight:600;">
        <td width="50">Sr. No.</td>
        <td width="80">Driver ID</td>
        <td width="200">Driver Name</td>
        <td width="150">Designation</td>
        <td width="100">Contact No.</td>
    </tr>
    <?php
    $sno=1; 
    $vec_data=fetchAll("select id,name,driver_id,f_name,mobile,upload_photo from vec $wh");
    // print_r($vec_data);
    foreach ($vec_data as  $vec_value) {
    ?>
        <tr class="primary1 table_style2">
            <td><?php echo $sno++; ?></td>
            <td><?php echo $vec_value['driver_id']; ?></td>
            <td><?php echo $vec_value['name']; ?></td>
            <td><?php echo $vec_value['f_name']; ?></td>
            <td><?php echo $vec_value['mobile']; ?></td>
            
        </tr>
    <?php } ?>
</table>