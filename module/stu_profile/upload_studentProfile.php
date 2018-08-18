<?php 	
$qry="";
$item=array();
@header('Content-type:text/html; charset=utf-8');
mysqli_query($con,"SET NAMES 'utf8'");
  if(isset($_POST['submit'])){
// print_r($_POST);exit;
    //echo "select name from coloumn where patt_id=$_POST[patteren]";exit;

    if($_FILES['csv']['name']){
/*      $ext=explode('.',$_FILES['csv']['name']);
      if($ext[1]=='csv'){
      */
      if($_FILES['csv']['type']=='application/vnd.ms-excel'){
        $handle=fopen($_FILES['csv']['tmp_name'],"r");
        while ($data=fgetcsv($handle)) {

          //print_r($data);
          // $item=array();
          $j=0;
          $ccount=count($data);
          $data[0] = preg_replace("/[^0-9]/", "", $data[0]);
          for($c=0;$c<$ccount;$c++){

            $item[$j]=mysqli_real_escape_string($con,$data[$c]);
            $j++;
        }
      	//print_r($item);
      	//echo $item[0];
      	$set="";
      	$count=count($item);
      	for($j=0;$j<$count;$j++){
      			//echo "hi";
      			//echo $item[0];

      			$set.="'$item[$j]',";}
      			$set=substr($set,0,-1);
      			//echo $day;/*
      			$loginid=$_SESSION['logindtl']['id'];
      				$sql="insert into stu_profile (class_id,batch_id,roll_no,name,f_name,m_name,f_mobile,s_mobile,m_mobile,gender,category,email,dob,ll_no,scholarship,black_list,old_student,genrate_token,wheree) values($_POST[class_id],$_POST[batch_id],$set,$loginid,'inquiry')";
      				// echo $sql;exit;
      			mysqli_query($con,$sql);
            // exit;
            // $last_recipt_id=fetchOne("select recipt_no from fee order by recipt_no desc limit 0,1");
            // if($last_recipt_id['recipt_no']){
            //     $last_recipt_id['recipt_no']++;
            // }else{
            //     $last_recipt_id['recipt_no']="1234567";
            // } 
            // $addmission_fee = fetchOne("select reg_fee,old_reg_fee from class_fee_dtl where class_id = $_POST[class_id]");
            // if($item[$count]=='y'){
            //   $reg_fee = $addmission_fee['old_reg_fee'];
            // }else{
            //   $reg_fee = $addmission_fee['reg_fee'];

            // }
            // $arr = array('roll'=>$item[0],'recipt_no'=>$last_recipt_id['recipt_no'],'amount'=>$reg_fee,'pay_by'=>'')
      }
      $_SESSION['udata']="Data uploaded successfully";
      ?>
      <script type="text/javascript">
        location.href=root_path+"index/stu_profile/syn_see_stu_profile"
      </script>
    <?php       			
    }
  }
}?>
<form method="post" enctype="multipart/form-data">
	<table class="table table-bordered">
		<tr>
			<td>Select Class</td>
			<td>
				<select onchange="show_batch(this.value,'')"  class="form-control"  required id="" name="class_id">
                        <option value="">Please Select Class</option>
                        <?php 
                            $class_data=fetchAll("select id,name from class");
                            foreach ($class_data as $class_value) {
                        ?>
                                <option <?php if((isset($_POST['class_id']) && $_POST['class_id']==$class_value['id']) || ($id && $stu_rec_dtl['class_id']==$class_value['id'])){echo "selected";} ?> value="<?php echo $class_value['id']; ?>"><?php echo $class_value['name'] ?></option>
                            <?php }?>
                    </select>
			</td>
		</tr>
		<tr>
			<td>Select Batch</td>
			<td>
				<select id="batch" class="form-control" id="stu_batch"  name="batch_id"  disabled="disabled">
                    <option value="">Select class first</option>
                </select>
			</td>
		</tr>
		<tr>
			<td>Upload CSV</td>
			<td><input type="file" name="csv"></td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="submit" value="Submit" class="btn btn-primary" name="submit">
			</td>
		</tr>
	</table>
</form>
<script type="text/javascript">
    function show_batch(class_id,batch_id){
        if(class_id){
            $.ajax({
                url:root_path+"module/fee_dtl/show_batch.php",
                data:"class_id="+class_id+"&batch_id="+batch_id,
                type:"post",
                success:function(e){
                    $('#batch').html(e);
                    $('#batch').removeAttr('disabled');
                }
            });
        }else{
            $('#batch').attr('disabled','disabled');
            $('#batch').html("<option value=''>Select Class First</option>")
        }
    }
</script>