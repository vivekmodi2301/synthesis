<?php
	$phpfiles=glob("../../include/php/*.php");
	foreach ($phpfiles as  $phpfile) {
		include_once($phpfile);
	}
	//boreder not comming properly
?>
<table class="table table-borderd">
<tr class="active1 table_style" style="font-weight:600;">
    <td width="50">Sr. No.</td>
    <td width="50">Roll No.</td>
    <td width="150">Student Name</td>
    <td width="50">Amount</td>
    <td width="50">Cheque No.</td>
    <td width="50">Bank Name</td>
    <td width="50">Date</td>
    <td width="50">Expiry Date</td>
    <td width="50">Pdc recived date</td>
    <td width="50">Status</td>
    <td width="50">Action</td>
</tr>

<?php
extract($_POST);
//to select all data
$pageData=10;  
if(!isset($_POST['where'])){

    $wh=" where 1 and refund='n' ";
    if($stu_name!=''){
    	$wh.=" and stu_profile.name like '%$stu_name%'";
    } 
    if($stu_chq_no!=''){
    	$wh.=" and pdc.chq_no like '$stu_chq_no%'";
    } 
    if( $stu_class!=''){
    	$wh.=" and class_id=$stu_class";
    } 
    elseif( $stu_class==''){
        $wh.=" and class_id!=''";
    } 
    if( $stu_batch!=''){
    	$wh.=" and batch_id=$stu_batch";
    } 
    if($roll!=''){
        $wh.=" and (roll_no like '$roll%'";
    	$wh.=" or token_no like '$roll%')";
    }
    if($i_from!='' && $i_to==''){
        $wh.=" and pdc_recived='$i_from'";
    }
    elseif($i_from=='' && $i_to!=''){
        $wh.=" and pdc_recived='$i_to'";
    }elseif($i_from!='' && $i_to!=''){
        $wh.=" and (pdc_recived>='$i_from' and pdc_recived<='$i_to')";
    }
    if($r_from!='' && $r_to==''){
        $wh.=" and datee='$r_from'";
    }
    elseif($r_from=='' && $r_to!=''){
        $wh.=" and datee='$r_to'";
    }elseif($r_from!='' && $r_to!=''){
        $wh.=" and (datee>='$r_from' and datee<='$r_to')";
    }
    if($data!=''){
        $pageData = $data;
        $_SESSION['data'] = $pageData;

    }
}else{
    $wh=$_POST['where'];
    if(isset($_SESSION['data'])){
        $pageData = $_SESSION['data'];
    }
}

$url=ROOT."module/emp_profile/search.php";
$limit=1;
$frmdataget=$_REQUEST;
// print_r($frmdataget);
@PaginationWork($pageData); 
$totRslt=mysqli_fetch_assoc(mysqli_query($con,"select count(*) as tot from pdc join stu_profile on pdc.roll=stu_profile.roll_no $wh"));
$sno=1; 
$current_date=date('Y-m-d');
    $qry="select pdc.id,pdc.amount,roll,pdc.chq_no,bank_name,pdc.datee,expiry_date,stu_profile.name,f_mobile,update_date,pdc_recived,statuss from pdc join stu_profile on pdc.roll=stu_profile.roll_no $wh limit ".$frmdata['from'].", ".$frmdata['to'];
    $pdc_dtl=fetchAll($qry);
    // echo "<tr><td>$qry</td></tr>";

  // echo "<tr><td>select pdc.id,pdc.amount,roll,pdc.chq_no,bank_name,pdc.datee,expiry_date,stu_profile.name,f_mobile from pdc join stu_profile on pdc.roll=stu_profile.roll_no where datee>='$current_date' and datee<='$week_complete_date' and statuss='recived' $wh</td></tr>";

    $sno=1;
    ?>
    
        <script type="text/javascript">
            $('#tot_stu').html('<?php echo  $totRslt['tot'];?>')
        </script>
<tr>
    <td colspan="10"><a href="<?php echo ROOT; ?>index/pdc_chq/syn_a_chq" title="Edit Class">Add new Pdc</a></td>
</tr>
    <?php 
    foreach ($pdc_dtl as  $pdc_value) {
?>
<tr class="primary1 table_style2">
    <td><?php echo $sno++; ?></td>
    <td><?php echo $pdc_value['roll'] ?></td>
    <td><?php echo $pdc_value['name'] ?></td>
    <td><?php echo $pdc_value['amount'] ?></td>
    <td><?php echo $pdc_value['chq_no'] ?></td>
    <td><?php echo $pdc_value['bank_name']; ?></td>
    <td><?php echo $pdc_value['datee']; ?></td>
    <td><?php echo $pdc_value['expiry_date']; ?></td>
    <td><?php echo $pdc_value['pdc_recived']; ?></td>
    <td><?php echo $pdc_value['statuss']; ?></td>
    <td>
        <a href="<?php echo ROOT; ?>index/pdc_chq/syn_e_detail/<?php echo $pdc_value['id']; ?>" title="Edit Class"><img src="<?php echo ROOT; ?>include/images/profile_edit.png" height="20" width="20" /></a> | <a href="#" onclick="del(<?php echo $pdc_value['id'];?>)" title="Delete Class"><img src="<?php echo ROOT; ?>include/images/trash.png" height="20" width="20" /></a> |
        <input class="chk" type="checkbox" value="<?php echo $pdc_value['f_mobile'] ?>" id="<?php echo $pdc_value['id']; ?>">
    </td>
</tr>
<?php } ?>
<tr>
      <td colspan="20">
        <?php searchPaginationDisplay($totRslt['tot'],$url.'&pageNumber=','',$pageData,$wh);?>
      </td>
    </tr>