<?php 
	$phpfiles=glob("../../include/php/*.php");
	foreach ($phpfiles as  $phpfile) {
		include_once($phpfile);
	}
    extract($_POST);
    //to select all data

    if(!isset($_POST['where'])){
        $wh=" where 1  ";
        if($eid!=''){
            $wh.=" and emp_id like'%$eid%'";
        } 
        if($ename!=''){
            $wh.=" and emp_name like '%$ename%'";
        } 
        if( $edes!=''){
            $wh.=" and degination like '%$edes%'";
        } 
        if( $emob!=''){
            $wh.=" and self_mobile like'%$emob%'";
        }
    }else{
        $wh=$_POST['where'];
        
    } 
?>
<table id="show" class="table table-bordered table-hover">
    <tr>
        <td colspan="14"><a href="<?php echo ROOT ?>module/emp_profile/search_print.php?wh=<?php echo $wh; ?>" class="btn btn-primary">Print</a></td>
    </tr>
	<tr class="active1 table_style" style="font-weight:600;">
        <td width="50">Sr. No.</td>
        <td width="80">Employee ID</td>
        <td width="200">Employee Name</td>
        <td width="150">Designation</td>
        <td width="100">Contact No.</td>
        <td width="100">Photo</td>
        <td width="100" colspan="3">Action</td>
    </tr>
    <?php


        $url=ROOT."module/emp_profile/search.php";
        $limit=1;
        $frmdataget=$_REQUEST;
        // print_r($frmdataget);
        $pageData=10;  
        @PaginationWork($pageData); 
        $totRslt=mysqli_fetch_assoc(mysqli_query($con,"select count(*) as tot from employee_profile $wh"));
        $sno=1;
        $emp_data=fetchAll("select id,emp_id,emp_name,degination,self_mobile,upload_photo from employee_profile $wh limit ".$frmdata['from'].", ".$frmdata['to']);
        // echo "<tr><td>select id,emp_id,emp_name,degination,self_mobile,upload_photo from employee_profile $wh</td></tr>";
        foreach ($emp_data as  $emp_value) {
    ?>
    <tr class="primary1 table_style2">
        <td><?php   echo $sno++; ?></td>
        <td><?php   echo $emp_value['emp_id']; ?></td>
        <td><?php   echo $emp_value['emp_name']; ?></td>
        <td><?php   echo $emp_value['degination']; ?></td>
        <td><?php   echo $emp_value['self_mobile']; ?></td>
        <td>
            <?php   if($emp_value['upload_photo'] && file_exists("include/emp_photo/$emp_value[upload_photo]")){ ?>
            <img src="<?php echo ROOT; ?>include/emp_photo/<?php echo $emp_value['upload_photo'];  ?>" height="30" width="30" />
            <?php  } else { echo "N/A"; } ?>
        </td>
        <td><a href="<?php  echo ROOT; ?>index/emp_profile/syn_a_employee/<?php    echo $emp_value['id']; ?>" title="Edit Profile"><img src="<?php echo ROOT; ?>include/images/profile_edit.png" height="20" width="20" /></a> | <a href="#" title="Delete Profile" onclick="del(<?php  echo $emp_value['id']; ?>)"><img src="<?php echo ROOT; ?>include/images/trash.png" height="20" width="20" /></a> | <input type="checkbox" /></td>
    </tr>
    <?php   } ?>

    <tr>
      <td colspan="20">
        <?php searchPaginationDisplay($totRslt['tot'],$url.'&pageNumber=','',$pageData,$wh);?>
      </td>
    </tr>
</table>