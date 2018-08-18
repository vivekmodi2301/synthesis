<?php
	$phpfiles=glob("../../include/php/*.php");
	foreach ($phpfiles as  $phpfile) {
		include_once($phpfile);
	}
    $pageData = 10;
	//boreder not comming properly
?>
<table class="table table-borderd">
<tr class="active1 table_style" style="font-weight:600;">
    <td width="50">Sr. No.</td>
    <td width="50">Roll No.</td>
    <td width="150">Student Name</td>
    <td width="100">Father Name</td>
    <td width="50">Class</td>
    <td width="50">Batch</td>
    <td width="50">Total Fee</td>
    <td width="50">Scholarship</td>
    <td width="50">Fee to be Paid</td>
    <td width="50">Fee Deposit</td>
    <td width="50">Fee Due</td>
    <td width="50">Given Installments</td>
    <td width="500">Detail</td>
</tr>
<?php
extract($_POST);
//to select all data
if(!isset($_POST['where'])){
    $wh=" where 1 and wheree!='leave' and wheree!='inquiry' ";
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
    if($roll!=''){
        $wh.=" and (roll_no like '$roll%'";
    	$wh.=" or token_no like '$roll%')";
    } 
    if($s_from!='' && $s_to==''){
        $wh.=" and scholarship= $s_from";
    }
    elseif($s_from=='' && $s_to!=''){
        $wh.=" and scholarship= $s_to";
    }
    elseif($s_from!='' && $s_to!=''){
        $wh.=" and scholarship>= $s_from and scholarship<=$s_to ";
    }
    if($no_of_inst!=''){
        if($no_of_inst == 'registration'){
            $having=" HAVING COUNT(amount)=1";
        }elseif($no_of_inst == 0){
            $having=" HAVING COUNT(amount)=$no_of_inst";
        }elseif($no_of_inst>0){
            $having=" HAVING COUNT(amount)-1=$no_of_inst";
        }
    }else{
        $having=" HAVING COUNT(amount)>=0";  
    }
    if($data){
            $pageData = $data;
            $_SESSION['data'] = $pageData;
    }
}else{
    $wh=$_POST['where'];
	if(isset($_SESSION['having'])){
		$having=$_SESSION['having'];
	}
    if(isset($_SESSION['data'])){
            $pageData = $_SESSION['data'];
    }
}
$url=ROOT."index/fee_dtl/search/";
$limit=1;
$frmdataget=$_REQUEST;
// print_r($_POST);
@PaginationWork($pageData); 
$totRslt['tot']=mysqli_num_rows(mysqli_query($con,"select count(*) as tot FROM stu_profile left join class on stu_profile.class_id=class.id left join batch on batch.id=stu_profile.batch_id left join class_fee_dtl on stu_profile.class_id=class_fee_dtl.class_id left join fee on roll=stu_profile.roll_no  $wh group by roll_no $having"));
$fee_dtl=fetchAll("SELECT roll_no,stu_profile.name,stu_profile.f_name,class.name as class,batch.name as batch,class_fee_dtl.total_fee,count(amount-1) as amount,stu_profile.scholarship,tution_fee,old_student,old_total_fee FROM stu_profile left join class on stu_profile.class_id=class.id left join batch on batch.id=stu_profile.batch_id left join class_fee_dtl on stu_profile.class_id=class_fee_dtl.class_id left join fee on roll=stu_profile.roll_no  $wh group by roll_no $having order by roll desc limit ".$frmdata['from'].", ".$frmdata['to']);
    // echo "<tr><td colspan='15'>SELECT roll_no,stu_profile.name,stu_profile.f_name,class.name as class,batch.name as batch,class_fee_dtl.total_fee,count(amount)-1 as amount,stu_profile.scholarship,tution_fee FROM stu_profile left join class on stu_profile.class_id=class.id left join batch on batch.id=stu_profile.batch_id left join class_fee_dtl on su_profile.class_id=class_fee_dtl.class_id left join fee on roll=stu_profile.roll_no  $wh group by roll_no $having</td></tr>";
	 $_SESSION['having']=$having;
    // echo "<tr><td>";
    // print_r($totRslt);
    // echo "</td></tr>";
    $sno=1;
	
    if(!isset($fee_dtl[0])){
        echo "<tr><td colspan='13'>No data found</td></tr>";
    }
    $data=0;
    foreach ($fee_dtl as  $fee_dtl_value) {
        $old_fee_qry="select sum(amount) as amount from fee where roll='$fee_dtl_value[roll_no]' group by roll";
        $old_fee_submit=fetchOne($old_fee_qry);
        if($fee_dtl_value['old_student']=='y'){
            $fee_dtl_value['total_fee']=$fee_dtl_value['old_total_fee'];
        }
		$installment="select count(amount)-1 as amount from fee where roll='$fee_dtl_value[roll_no]' group by roll";
		
		if(!$old_fee_submit){
			$old_fee_submit=array('amount'=>0);
		}
		// print_r($old_fee_submit);
		$total_installment=fetchOne($installment);
		if(!$total_installment){
			$total_installment=array('amount'=>0);
		}
        ?> 
            <tr class="primary1 table_style2">
                <td><?php echo $sno++; ?></td>
                <td><?php echo $fee_dtl_value['roll_no']; ?></td>
                <td><?php echo $fee_dtl_value['name']; ?></td>
                <td><?php echo $fee_dtl_value['f_name']; ?></td>
                <td><?php echo $fee_dtl_value['class']; ?></td>
                <td><?php echo $fee_dtl_value['batch']; ?></td>
                <td><?php echo $fee_dtl_value['total_fee']; ?></td>
                <td><?php if($fee_dtl_value['scholarship']){echo $fee_dtl_value['scholarship']."%"; }else{echo "0%";}?></td>
                <?php 
                    
                    if(!$old_fee_submit){
                        $old_fee_submit=array('amount'=>0);
                    }
                    // print_r($old_fee_submit);
                ?>
                <?php 
                    $fee_to_be_paid=$fee_dtl_value['total_fee']-($fee_dtl_value['tution_fee']*$fee_dtl_value['scholarship']/100);
					
                    $remaining_fee=$fee_to_be_paid-$old_fee_submit['amount'];?>
                <td><?php echo $fee_to_be_paid; ?></td>
                <td><?php if($old_fee_submit!=0){ echo $old_fee_submit['amount']; }else{ echo "0";}?></td>
                <td>
                    <?php
                    echo $remaining_fee;
                    ?>
                </td>
                <td><?php if($total_installment['amount']){ echo $total_installment['amount']; }else{echo "0";}?></td>
                <td><a href="<?php echo ROOT;?>index/fee_dtl/syn_fee_dtl/<?php echo $fee_dtl_value['roll_no']; ?>">See Detail</a></td>
            </tr>
        <?php 
        $data++;
    }
    if($data==0 && isset($fee_dtl[0])){
 

        echo "<tr><td colspan='13'>No data found</td></tr>";

 
    }else{
        ?>
        <script type="text/javascript">
            $('#tot_stu').html('<?php echo $totRslt['tot']; ?>')
        </script>
        <?php
    }
    ?>

<tr>
  <td colspan="20">
    <?php searchPaginationDisplay($totRslt['tot'],$url.'&pageNumber=','',$pageData,$wh);?>
  </td>
</tr>
</table>