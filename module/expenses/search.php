<?php 
	$phpfiles=glob("../../include/php/*.php");
	foreach ($phpfiles as  $phpfile) {
		include_once($phpfile);
	}

?>
<table class="table table-bordered table-hover">
	<tr class="active1 table_style" style="font-weight:600;">
        <td >Sr. No.</td>
        <td >Purpose</td>
        <td >Total Amount</td>
        <td >Paid till now</td>
        <td>Remaing</td>
        <td >Organisation name</td>
        <td >Date</td>
        <td >Action</td>
        <td>Payment</td>
    </tr>
    <?php 
    $sno = 1;
    extract($_POST);
    $wh=" where 1 ";
    if(!isset($_POST['where'])){

	    if($purpose){
	    	$wh.= " and purpose like'%$purpose%' ";
	    }
	    if($org_name){
	    	$wh.= " and org_name='$org_name' ";
	    }
	    if($date_from!='' && $date_to==''){
	    	$wh.=" and `date`='$date_from'";
	    }
	    else if($date_from=='' && $date_to!=''){
	    	$wh.=" and `date`='$date_from'";
	    }
	    else if($date_from!='' && $date_to!=''){
	    	$wh.=" and (`date`>='$date_from' and `date`<='$date_to')";
	    }
	}else{
        $wh=$_POST['where'];   
    }
    $url=ROOT."module/emp_profile/search.php";
    $limit=1;
    $frmdataget=$_REQUEST;
		@PaginationWork(10); 
    $totRslt=mysqli_fetch_assoc(mysqli_query($con,"select count(*) as tot FROM expenses join organization on org_name=organization.id $wh"));
    $exp_data = fetchAll("SELECT expenses.id,purpose,name,date,total_amount FROM expenses join organization on org_name=organization.id $wh limit ".$frmdata['from'].", ".$frmdata['to']);
    // echo "<tr><td>SELECT expenses.id,purpose,name,date,total_amount FROM expenses join organization on org_name=organization.id $wh</td></tr>";
    foreach ($exp_data as  $exp_value) {
    ?>
    <tr>
        <td><?php echo $sno++;  ?></td>
        <td><?php echo $exp_value['purpose'];  ?></td>
        <td><?php echo $exp_value['total_amount'];  ?></td>
        <td>
            <?php 
            $total_pay = fetchOne("select sum(amount) as tot from payment where bill_no = $exp_value[id]");
            echo $total_pay['tot'];
            ?>
        </td>
        <td>
            <?php 
            echo $exp_value['total_amount']-$total_pay['tot'];
            ?>
        </td>
        <td><?php echo $exp_value['name'];  ?></td>
        <td><?php echo $exp_value['date'];  ?></td>
        <td><a href="<?php echo ROOT; ?>index/expenses/edit_exp/<?php echo $exp_value['id']; ?>">Edit</a></td>
        <td><a href="<?php echo ROOT; ?>index/expenses/see_pay/<?php echo $exp_value['id']; ?>">Payment Detail</a></td>
    </tr>
    <?php } ?>

    <tr>
      <td colspan="20">
        <?php searchPaginationDisplay($totRslt['tot'],$url.'&pageNumber=','',10,$wh);?>
      </td>
    </tr>
</table>