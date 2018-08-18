<?php 
// print_r($_SESSION);
	if(isset($_POST['refund_am'])){
		// print_r($_POST);exit;
		$id=fetchOne("select id,wheree from stu_profile where roll_no=$_POST[roll]");
		if($id['wheree']!='leave'){
			$userid=$_SESSION['logindtl']['id'];
			$curr_date = date('Y-m-d');
			$stu_profile=array('wheree'=>'leave','refund_by'=>$userid,'refund_date'=>$curr_date,'last_where'=>$id['wheree']);
			addUpdate('stu_profile',$stu_profile,$id['id']);
			// $fee_refund=array('refund'=>'y');
			if(is_array($_POST['refund'])){
				$refund_where = ""; 
				foreach ($_POST['refund'] as $key => $refund) {
					if($key == 0){
						$refund_where.= " and id = $refund ";
					}else{
						$refund_where.= " or id = $refund ";
					}
				}
			}
			mysqli_query($con,"update pdc set refund='y' where roll=$_POST[roll] and statuss='recived' $refund_where");
			// echo "update pdc set refund='y' where roll=$_POST[roll] and statuss='recived' $refund_where";exit;
			$curr_date=date('Y-m-d');
			// echo $curr_date;
			if($_POST['refund_am']){
				mysqli_query($con,"insert into fee set roll=$_POST[roll],amount='$_POST[refund_am]',datee='$curr_date',submit_by=$userid,refund='y'");
			}
		}else{
			$userid=$_SESSION['logindtl']['id'];
			$refund_id = fetchOne("select id from fee where refund='y' and roll=$_POST[roll]");
			mysqli_query($con,"update fee set amount='$_POST[refund_am]' where id=$refund_id[id]");
			
			// echo "update  fee set amount='$_POST[refund]' where id=$refund_id[id]";exit;
		}
		// echo "insert into fee set roll=$_POST[roll],amount='$_POST[amount]',datee='$curr_date',submit_by=$userid";
		?>
<script type="text/javascript">
  location.href=root_path+"index/refund/syn_see_stu_profile"
</script>
<?php
	}
?>
<table class="table table-bordered">
	<tr>
		<th>Enter Roll no. or Token No.</th>
	</tr>
	<tr>
		<td><input type="text" id="roll" onkeyup="this.value=this.value.replace(/[^0-9]/g,'');" class="form-control" onchange="showdtl(this.value)"></td>
	</tr>
</table>
<table style="width: 100%;">
	<tr>
		<td style="text-align: right;"><button onclick="printme()" class="btn btn-primary">Print</button></td>
	</tr>
</table>
<div id="show">
</div>
<script type="text/javascript">
	function showdtl(roll){
		$.ajax({
	        url:root_path+"module/fee_dtl/dtl_pdc_fee.php",
	        data:"roll="+roll,
	        type:"post",
	        success:function(e){
	            $('#show').html(e);
	        }
        });
	}
</script>
<script type="text/javascript">
	function printme(){
		var divToPrint=document.getElementById('print_table');

	    var newWin=window.open('','Print-Window');

	    newWin.document.open();
	    var css = "<link rel='stylesheet' href='"+root_path+"include/css/bootstrap.min.css'>";
	    newWin.document.write('<html>'+css+'<body onload="window.print()">'+divToPrint.innerHTML+'</body></html>');

	    newWin.document.close();
	    setTimeout(function(){newWin.close();},10);

	}
</script>
<?php 
	if(isset($_GET['id'])){
		$id=$_GET['id'];
		?>
		<script type="text/javascript">
			showdtl('<?php echo $id ?>')
			$('#roll').val('<?php echo $id ?>');
		</script>
		<?php
	}
?>