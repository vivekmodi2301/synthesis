<?php
	$phpfiles=glob("../../include/php/*.php");
	foreach ($phpfiles as  $phpfile) {
		include_once($phpfile);
	}
    extract($_POST);
    //to select all data
    $pageData = 10;
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
        if( $stu_batch!=''){
            $wh.=" and batch.id=$stu_batch";
        } 
        if($roll!=''){
            $wh.=" and token_no like '%$roll%'";
        }
        if($i_from!='' && $i_to==''){
            $wh.=" and inquiry_date='$i_from'";
        }
        elseif($i_from=='' && $i_to!=''){
            $wh.=" and inquiry_date='$i_from'";
        }elseif($i_from!='' && $i_to!=''){
            $wh.=" and (inquiry_date>='$i_from' and inquiry_date<='$i_to')";
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

    extract($_POST);
    //to select all data
    // $pageData = 10;
    
    $sno=1;
    $url=ROOT."module/reception/search.php";
        $limit=1;
        $frmdataget=$_REQUEST;
        // print_r($frmdataget);
        @PaginationWork($pageData); 
        $totRslt=mysqli_fetch_assoc(mysqli_query($con,"select count(*) as tot from stu_profile left join office_staff on refer_to=office_staff.id join class on class_id=class.id left join batch on batch_id=batch.id where wheree='inquiry'  $wh order by stu_profile.id"));

    $qry = "Select stu_profile.id, stu_profile.name,f_name,m_name,office_staff.name as staff,f_mobile,gender,send_to,refer_to,token_no,class.name as class,genrate_token,inquiry_date from stu_profile left join office_staff on refer_to=office_staff.id join class on class_id=class.id left join batch on batch_id=batch.id where wheree='inquiry'  $wh order by stu_profile.id ";
        $limit = " limit ".$frmdata['from'].", ".$frmdata['to'];
        // echo "<tr><td>select count(*) as tot from stu_profile left join office_staff on refer_to=office_staff.id join class on class_id=class.id left join batch on batch_id=batch.id where wheree='inquiry'  $wh order by stu_profile.id</td></tr>";
    $stu_recp_data=fetchAll($qry.$limit);
	//boreder not comming properly
    
?>
<table class="table table-bordered table-hover table-responsive">
<tr>
    <td colspan="14"><a href="<?php echo ROOT ?>module/reception/search_print.php?wh=<?php echo $wh; ?>" class="btn btn-primary">Print</a>
    <a href="<?php echo ROOT; ?>index.php?mod=reception&do=csv_export&wh=<?php echo $qry; ?>" class="btn btn-primary">Export</a>
    </td>
</tr>
<tr class="active1 table_style" style="font-weight:600;">
    <td width="100">Sr. No.</td>
   	<td width="100">Token NO.</td>
    <td width="300">Student Name</td>
    <td width="300">Father Name</td>
    <!--<td width="300">Mother Name</td>-->
	<td width="300">Class</td>                	
    <td width="300">Mobile No (Father)</td>
    <td width="300">Gender</td>
    <td width="300">Intersted In</td>
    <td width="300">Refer To</td>
    <?php if(isset($_SESSION['logindtl']['dept']) && ($_SESSION['logindtl']['dept']=='masteradmin' || $_SESSION['logindtl']['dept']=='accountant')){ ?>
        <td width="200">Admission</td>
    <?php } ?>
    <td width="300">Date</td>
    <td width="300">Print</td>
	<td width="200">Submited by</td>
    <td width="200">See Detail</td>    
    
</tr>
<?php

     // echo "<tr><td>$qry</td></tr>";
    ?>

        <script type="text/javascript">
        $('#tot_stu').html('<?php echo $totRslt['tot']; ?>')
        </script>
    <?php
    if($totRslt['tot']==0){
        echo "<tr><td colspan='15'>No data found</td></tr>";
    }else{ 
    foreach ($stu_recp_data as $stu_recp_value) {
?>
        <tr class="primary1 table_style2">
            <td><?php echo $sno++; ?></td>
            <td><?php echo $stu_recp_value['token_no']; ?></td>
            <td><?php echo $stu_recp_value['name'] ?></td>
            <td><?php echo $stu_recp_value['f_name']; ?></td>
            <!--<td><?php //echo $stu_recp_value['m_name'] ?></td>-->
            <td><?php echo $stu_recp_value['class']; ?></td>
            <td><?php echo $stu_recp_value['f_mobile']; ?></td>
            <td><?php echo $stu_recp_value['gender'] ?></td>
            <td><?php echo $stu_recp_value['send_to']; ?></td>
            <td><?php echo $stu_recp_value['staff'] ?></td>
            <?php if(isset($_SESSION['logindtl']['dept']) && ($_SESSION['logindtl']['dept']=='masteradmin' || $_SESSION['logindtl']['dept']=='accountant')){ ?>
            
            <td><a href="<?php echo ROOT; ?>index/stu_profile/syn_e_studnt/<?php echo $stu_recp_value['id']; ?>">Take Admission/Registration</a></td>
            <?php } ?>
            <td><?php echo $stu_recp_value['inquiry_date'] ?></td>
            <td><a href="<?php echo ROOT; ?>print_token/<?php echo $stu_recp_value['id']; ?>"><img src="<?php echo ROOT; ?>include/images/icon_print.png" height="20" width="20" /></a></td>
			<td><?php $genrate_by=loginFetchOne("select uname from login where id=$stu_recp_value[genrate_token]"); echo $genrate_by['uname']; ?></td>
            <td><a href="<?php echo ROOT; ?>index/fee_dtl/syn_pdc_fee/<?php echo $stu_recp_value[token_no]; ?>">See Detail</a></td>
        </tr>
    <?php }?>
          <tr>
              <td colspan="20">
                <?php searchPaginationDisplay($totRslt['tot'],$url.'&pageNumber=','',$pageData,$wh);?>
              </td>
            </tr>
<?php } ?>
            
</table>
