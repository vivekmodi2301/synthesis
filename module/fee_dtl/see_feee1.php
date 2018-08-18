	<div class="col-lg-12 table-responsive">
    <form role="form" class="form-horizontal" enctype="multipart/form-data" method="post">
		<table class="table table-bordered table-hover">
            <tr class="active1 table_style" style="font-weight:600;">
                <td width="100">Roll No./ Token No. <input type="text" onkeyup ="search()" id="roll" class="form-control" /></td>
                <td>Search by Student Name <input type="text" onkeyup="search()" id="stu_name" class="form-control" /></td>
                <td>Search by Father's Name <input type="text" onkeyup="search()" id="stu_f_name" class="form-control" /></td>
                <td>Select Class                     <select onchange="show_batch(this.value,'')"  class="form-control"  id="stu_class" name="class_id">
                    <option value="">Please Select Class</option>
                    <?php 
                        $class_data=fetchAll("select id,name from class");
                        foreach ($class_data as $class_value) {
                    ?>
                            <option <?php if((isset($_POST['class_id']) && $_POST['class_id']==$class_value['id']) || ($id && $class_fee_dtl['class_id']==$class_value['id'])){echo "selected";} ?> value="<?php echo $class_value['id']; ?>"><?php echo $class_value['name'] ?></option>
                        <?php }?>
                </select>
                </td>
                <td>Select Batch 
                    <select class="form-control" disabled onchange="search()" id="stu_batch"  name="batch">
                    <option value="">Select Class First</option>
                    </select>
                </td>
                <td>No Of Data 
                	<select class="form-control" id="class" name="class">
                    <option>Select</option>
                    <option>25</option>
                    <option>50</option>
                    <option>100</option>
                    <option>ALL</option>
                	</select>
                </td>
            </tr>
        </table>
        <table class="table table-bordered table-hover">
        	<tr class="active1 table_style" style="font-weight:600; text-align:justify;">
                <td>Total Students in this Section : </td>
            </tr>
        </table>
    	<p style="text-align:left;">Total Fee Received : INR &nbsp; | &nbsp; Out of : INR &nbsp; | &nbsp; Remaining Fee :  INR</p>
        <table id="show" class="table table-bordered table-hover">
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
            $fee_dtl=fetchAll("select roll_no,stu_profile.name,class.name as class,batch.name as batch,f_name,class_fee_dtl.total_fee,class_fee_dtl.tution_fee,scholarship from class join stu_profile on stu_profile.class_id=class.id join batch on stu_profile.batch_id=batch.id join class_fee_dtl on class_fee_dtl.class_id=class.id  ");
            // print_r($fee_dtl);
        ?>
        <?php 
        $sno=1;
        foreach ($fee_dtl as  $fee_dtl_value) {
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
                    $old_fee_qry="select sum(amount) as amount from fee where roll='$fee_dtl_value[roll_no]' group by roll";

                    $installment="select count(amount) as amount from fee where roll='$fee_dtl_value[roll_no]' group by roll";
                    $old_fee_submit=fetchOne($old_fee_qry);
                    if(!$old_fee_submit){
                        $old_fee_submit=array('amount'=>0);
                    }
                    // print_r($old_fee_submit);
                    $total_installment=fetchOne($installment);
                    if(!$total_installment){
                        $total_installment=array('amount'=>0);
                    }
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
        <?php }?>
        </table>
                            
    </form>
</div>


<script type="text/javascript">
  function search(){
    //now lets fetch value of every input here
    var roll=$('#roll').val();
    // ctrl+shift+d
    var stu_name=$('#stu_name').val();
    var stu_f_name=$('#stu_f_name').val();
    var stu_class=$('#stu_class').val();
    var stu_batch=$('#stu_batch').val();
    $.ajax({
        url:root_path+"module/fee_dtl/search.php",
        data:"roll="+roll+"&stu_name="+stu_name+"&stu_f_name="+stu_f_name+"&stu_class="+stu_class+"&stu_batch="+stu_batch,
        type:"post",
        success:function(e){
            $('#show').html(e);
        },error:function(e){
            alert(e);
        }
    });
  }
</script>

<script type="text/javascript"> 
    function show_batch(class_id,batch_id)
    {
        if(class_id)
        {
            $.ajax({
                url:root_path+"module/fee_dtl/show_batch.php",
                data:"class_id="+class_id+"&batch_id="+batch_id,
                type:"post",
                success:function(e){
                    $('#stu_batch').html(e);
                    $('#stu_batch').removeAttr('disabled');
                    search();
                }
            });
        }
        else
        {
            $('#stu_batch').attr('disabled','disabled');
            $('#stu_batch').html("<option value=''>Select Class First</option>");
            search();
        }
    }
</script>