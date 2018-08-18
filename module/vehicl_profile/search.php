<?php
    $phpfiles=glob("../../include/php/*.php");
    foreach ($phpfiles as  $phpfile) {
        include_once($phpfile);
    }
    extract($_POST);
    $pageData = 10;
    if(!isset($_POST['where'])){
        $wh=" where 1 ";
        if($id!=''){
            $wh.=" and driver_id like '%$id%'";
        } 
        if($name!=''){
            $wh.=" and name like '%$name%'";
        } 
        if($des!=''){
            $wh.=" and designation like '%$des%'";
        } 
        if($mobile!=''){
            $wh.=" and mobile like '%$mobile%'";
        }
    }else{
        $wh=$_POST['where'];

    }
    extract($_POST);
    //to select all data
    $pageData = 10;
 
    $sno=1; 
    $url=ROOT."module/vehicl_profile/search.php";
    $limit=1;
    $frmdataget=$_REQUEST;
    // print_r($frmdataget);
    $pageData=10;  
    @PaginationWork($pageData); 
    $totRslt=mysqli_fetch_assoc(mysqli_query($con,"select count(*) as tot from vec $wh "));
    //$vec_data=fetchAll("select id,name,driver_id,f_name,mobile,upload_photo from vec $wh limit ".$frmdata['from'].", ".$frmdata['to']);
    ?>
    <script type="text/javascript">
        $('#tot_stu').html('<?php echo $totRslt['tot']; ?>')
    </script>
    <?php
    $qry="select id,name,driver_id,f_name,mobile,upload_photo,designation from vec $wh limit ".$frmdata['from'].", ".$frmdata['to'];
    // echo $qry;
    $vec_data=fetchAll($qry);
?>
<table id="show" class="table table-bordered table-hover">
    <tr>
        <td colspan="14">
            <a href="<?php echo ROOT ?>module/vehicl_profile/search_print.php?wh=<?php echo $wh ?>" class="btn btn-primary">Print</a>
            <a href="<?php echo ROOT; ?>index.php?mod=vehicl_profile&do=csv_export&wh=<?php echo $qry; ?>" class="btn btn-primary">Export</a>
        </td>
    </tr>
	<tr class="active1 table_style" style="font-weight:600;">
        <td width="50">Sr. No.</td>
        <td width="80">Driver ID</td>
        <td width="200">Driver Name</td>
        <td width="150">Designation</td>
        <td width="100">Contact No.</td>
        <td width="100">Photo</td>
        <td width="100" colspan="3">Action</td>
    </tr>
    <?php
    // echo "<tr><td>select id,name,driver_id,f_name,mobile,upload_photo from vec $wh limit ".$frmdata['from'].", ".$frmdata['to']."</td></tr>";
    // print_r($vec_data);
    foreach ($vec_data as  $vec_value) {
        // print_r($vec_value);
    ?>
        <tr class="primary1 table_style2">
            <td><?php echo $sno++; ?></td>
            <td><?php echo $vec_value['driver_id']; ?></td>
            <td><?php echo $vec_value['name']; ?></td>
            <td><?php echo $vec_value['designation']; ?></td>
            <td><?php echo $vec_value['mobile']; ?></td>
            <td>
                <?php if($vec_value['upload_photo'] && file_exists("../../".$vec_value['upload_photo'])){ ?>
                <img src="<?php echo ROOT.$vec_value['upload_photo']; ?>" height="30" width="30" />
                <?php }else{
                    echo "N/A";
                } ?>
            </td>
            <td><a href="<?php echo ROOT ?>index/vehicl_profile/syn_add/<?php echo $vec_value['id']; ?>" title="Edit Profile"><img src="<?php echo ROOT ?>include/images/profile_edit.png" height="20" width="20" /></a> | <a href="#" onclick="del(<?php echo $vec_value['id']; ?>)" title="Delete Profile"><img src="<?php echo ROOT ?>include/images/trash.png" height="20" width="20" /></a> | <input type="checkbox" /></td>
        </tr>
    <?php } ?>

    <tr>
      <td colspan="20">
        <?php searchPaginationDisplay($totRslt['tot'],$url.'&pageNumber=','',10,$wh);?>
      </td>
    </tr>
</table>