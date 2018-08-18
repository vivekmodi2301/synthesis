<?php
	$phpfiles=glob("../../include/php/*.php");
	foreach ($phpfiles as  $phpfile) {
		include_once($phpfile);
	}
extract($_POST);
$pageData = 10;

$wh=" where wheree='addmission'";
if(!isset($_POST['where'])){
    if(isset($_SESSION['data'])){
        unset($_SESSION['data']);
    }
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
    if( $district!=''){
        $wh.=" and c_district like'%$district%'";
    } 
    if( $pdistrict!=''){
        $wh.=" and p_district like'%$pdistrict%'";
    } 
    if($roll!=''){
        $wh.=" and (roll_no like '$roll%'";
        $wh.=" or token_no like '$roll%')";
    }
    if($i_from!='' && $i_to==''){
        $wh.=" and inquiry_date='$i_from'";
    }
    elseif($i_from=='' && $i_to!=''){
        $wh.=" and inquiry_date='$i_to'";
    }elseif($i_from!='' && $i_to!=''){
        $wh.=" and (inquiry_date>='$i_from' and inquiry_date<='$i_to')";
    }

    if($d_from!='' && $d_to==''){
        $wh.=" and from_date>'$d_from'";
    }
    elseif($d_from=='' && $d_to!=''){
        $wh.=" and from_date>'$i_to'";
    }elseif($d_from!='' && $d_to!=''){
        $wh.=" and (from_date>='$d_from' and from_date<='$d_to')";
    }
    if($a_from!='' && $a_to==''){
        $wh.=" and addmission='$a_from'";
    }
    elseif($a_from=='' && $a_to!=''){
        $wh.=" and addmission='$a_from'";
    }elseif($a_from!='' && $a_to!=''){
        $wh.=" and (addmission_date>='$a_from' and addmission_date<='$a_to')";
    }
    if(isset($pg) && $pg!='' && $pg!='undefined'){
        $wh.=" and pg_name like '%$pg%'";
    }
    if(isset($liveat) && $liveat!=''){
        $wh.=" and leave_at='$liveat'";
    } 
    if($r_from!='' && $r_to==''){
    $wh.=" and registration_date='$r_from'";
    }
    elseif($r_from=='' && $r_to!=''){
        $wh.=" and registration_date='$r_to'";
    }elseif($r_from!='' && $r_to!=''){
        $wh.=" and (registration_date>='$r_from' and registration_date<='$r_to')";
    }
    if($data){
        $pageData = $data;
        $_SESSION['data'] = $pageData;
    }
}else{
    $wh=$_POST['where'];
    if(isset($_SESSION['data'])){
        $pageData = $_SESSION['data'];
    }
}

    $url=ROOT."index/stu_profile/syn_see_stu_profile/";
    $limit=1;
    $frmdataget=$_REQUEST;
    // print_r($_POST);
    @PaginationWork($pageData); 
    $totRslt=mysqli_fetch_assoc(mysqli_query($con,"select count(*) as tot from stu_profile join class on class_id=class.id join batch on batch_id=batch.id  $wh"));
    // echo "<tr><td>select count(*) as tot from stu_profile join class on class_id=class.id join batch on batch_id=batch.id  $wh</td></tr>";
    // print_r($totRslt);
    $qry = "select stu_profile.id,stu_profile.name,roll_no,f_name,m_name,class.name as class,batch.name as batch,propic,from_date,to_date,inquiry_date,addmission_date, genrate_token,admission,registration_by,registration_date from stu_profile join class on class_id=class.id join batch on batch_id=batch.id $wh ";
    $limit = "limit ".$frmdata['from'].", ".$frmdata['to'];
    $student_dtl=fetchAll($qry.$limit);
?>
<table class="table table-bordered">
<tr>
    <td colspan="12"><a href="<?php echo ROOT ?>module/stu_profile/search_print.php?wh=<?php echo $wh ?>" class="btn btn-primary">Print</a>
    <a href="<?php echo ROOT; ?>index.php?mod=stu_profile&do=csv_export&wh=<?php echo $qry; ?>" class="btn btn-primary">Export</a>
    </td>
</tr>
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
    <td width="100" >Action</td>
    <td width="200">Inquiry Date</td>
    <td width="200">Registered Date</td>
    <td width="200">Demo From - To Date</td>
    <td width="200">Admission Date</td>
    <td width="200">See Detail</td>
    <td width="200">Student Library</td>    
</tr>
<?php
//to select all data


    //echo "<tr><td>select stu_profile.id,stu_profile.name,roll_no,f_name,m_name,class.name as class,batch.name as batch,propic,from_date,to_date,inquiry_date,addmission_date, genrate_token,admission,registration_by,registration_date from stu_profile join class on class_id=class.id join batch on batch_id=batch.id $wh limit ".$frmdata['from'].", ".$frmdata['to']."</td></tr>";
    ?>
    <script type="text/javascript">
        $('#tot_stu').html('<?php echo $totRslt['tot']; ?>')
    </script>
    <?php 

   // echo "<tr><td>select stu_profile.id,stu_profile.name,roll_no,f_name,m_name,class.name as class,batch.name as batch,propic,from_date,to_date,inquiry_date,addmission_date, genrate_token,admission,registration_by,registration_date from stu_profile join class on class_id=class.id join batch on batch_id=batch.id $wh</td></tr>";

    $sno=1;
    if($totRslt['tot']==0){
        echo "<tr><td colspan='17'>No data found</td></tr>";
    }else{
        foreach ($student_dtl as  $student_dtl_value) {
            extract($student_dtl_value);
            $genrate_token=loginFetchOne("select uname from login where id=$genrate_token");
            // echo "<tr><td>select uname from login where id=$genrate_token</td></tr>";
            $addmission=loginFetchOne("select uname from login where id=$admission");
            $register=loginFetchOne("select uname from login where id=$registration_by");
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
        
        <td><?php echo $genrate_token['uname']; ?></td>
        <td><?php echo $register['uname']; ?></td>
        
        <td><?php echo $addmission['uname']; ?></td>
        <td><a href="<?php echo ROOT; ?>index/stu_profile/syn_e_studnt/<?php echo $id; ?>" title="Edit Profile"><img src="<?php echo ROOT; ?>include/images/profile_edit.png" height="20" width="20" /></a> | <a href="#" onclick="del('<?php echo $id ?>')" title="Delete Profile"><img src="<?php echo ROOT; ?>include/images/trash.png" height="20" width="20" /></a> | <input type="checkbox" value="<?php echo $id; ?>" class="chk" /></td>
        <td><?php echo $inquiry_date; ?></td>
        <td><?php echo $registration_date; ?></td>
        <td><?php echo $from_date." - ".$to_date; ?></td>
        <td><?php echo $addmission_date ?></td>
        <td><a href="<?php echo ROOT; ?>index/fee_dtl/syn_pdc_fee/<?php echo $roll_no; ?>">See Detail</a></td>
        <td><a href="<?php echo ROOT; ?>index/stu_library/syn_a_lib/<?php echo $roll_no; ?>">See Library</a></td>
    </tr>
    <?php } } ?>
<?php if($totRslt['tot']>$pageData){ ?>
<tr>
  <td colspan="20">
    <?php searchPaginationDisplay($totRslt['tot'],$url.'&pageNumber=','',$pageData,$wh);?>
  </td>
</tr>
<?php } ?>