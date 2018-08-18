<?php 
	$phpfiles=glob("../../include/php/*.php");
	foreach ($phpfiles as  $phpfile) {
		include_once($phpfile);
	}
    extract($_POST);
    //to select all data
    $pageData = 10;
    if(!isset($_POST['where'])){

        $wh=" where 1  ";
        if($eid!=''){
            $wh.=" and faculty_id like'%$eid%'";
        } 
        if($ename!=''){
            $wh.=" and faculty_name like '%$ename%'";
        } 
        if( $edes!=''){
            $wh.=" and degination like '%$edes%'";
        } 
        if( $emob!=''){
            $wh.=" and mobile_self like'%$emob%'";
        }
        
    }else{
        $wh=$_POST['where'];
    }
        extract($_POST);
        $pageData=10;
    $sno=1;
    $url=ROOT."module/teachr_profile/search.php";
    $limit=1;
    $frmdataget=$_REQUEST;
    // print_r($frmdataget);
    $pageData=10;  
    @PaginationWork($pageData); 
    $totRslt=mysqli_fetch_assoc(mysqli_query($con,"select count(*) as tot from teacher_profile $wh"));
    $qry="select id,faculty_id,faculty_name,desiganation,mobile_self,upload_photo from teacher_profile limit  ".$frmdata['from'].", ".$frmdata['to'];
$teacher_data=fetchAll($qry);
?>
<table class="table table-bordered table-hover">
    <tr>
        <td colspan="14"><a href="<?php echo ROOT ?>module/teachr_profile/search_print.php?wh=<?php echo $wh ?>" class="btn btn-primary">Print</a>
        <a href="<?php echo ROOT; ?>index.php?mod=teachr_profile&do=csv_export&wh=<?php echo $qry; ?>" class="btn btn-primary">Export</a>
    </td>
        </td>
    </tr>

    <tr class="active1 table_style" style="font-weight:600;">
        <td width="50">Sr. No.</td>
        <td width="80">Faculty ID</td>
        <td width="200">Employee Name</td>
        <td width="150">Designation</td>
        <td width="100">Contact No.</td>
        <td width="100">Photo</td>
        <td width="100" colspan="3">Action</td>
    </tr>
    <?php 
        // echo "<tr><td>select id,faculty_id,faculty_name,desiganation,mobile_self,upload_photo from teacher_profile $wh limit ".$frmdata['from'].", ".$frmdata['to']."</td></tr>";
        $sno=1;
        foreach ($teacher_data as $teacher_value) {
    ?>
    <tr class="primary1 table_style2">
        <td><?php echo $sno++; ?></td>
        <td><?php echo $teacher_value['faculty_id'] ?></td>
        <td><?php echo $teacher_value['faculty_name'] ?></td>
        <td><?php echo $teacher_value['desiganation'] ?></td>
        <td><?php echo $teacher_value['mobile_self'] ?></td>
        <td><img src="<?php echo ROOT ?><?php echo $teacher_value['upload_photo']; ?>" height="30" width="30" /></td>
        <td><a href="<?php echo ROOT; ?>index/teachr_profile/syn_a_profile/<?php echo $teacher_value['id']; ?>" title="Edit Profile"><img src="<?php echo ROOT ?>include/images/profile_edit.png" height="20" width="20" /></a> | <a href="#" title="Delete Profile" onclick="del(<?php echo $teacher_value['id']; ?>)"><img src="<?php echo ROOT ?>include/images/trash.png" height="20" width="20" /></a> | <input type="checkbox" /></td>
    </tr>
    <?php } ?>
    <tr>
      <td colspan="20">
        <?php searchPaginationDisplay($totRslt['tot'],$url.'&pageNumber=','',10,$wh);?>
      </td>

    </tr>
</table>