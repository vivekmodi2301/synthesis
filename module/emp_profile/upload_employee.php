<?php 	
$qry="";
$item=array();
@header('Content-type:text/html; charset=utf-8');
mysqli_query($con,"SET NAMES 'utf8'");
  if(isset($_POST['submit'])){
//print_r($_POST);exit;
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
            $data[$c] = trim($data[$c]);
            $item[$j]=mysqli_real_escape_string($con,$data[$c]);
            $j++;
        }
      	print_r($item);
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
      				$sql="insert into employee_profile (emp_id,emp_name,emp_f_name,emp_m_name,degination,email,self_mobile,father_mobile,mother_mobile,gender,dob,landline,doj,dol,salary,working_hour,office_time_in,office_time_out,submit_by) values($set,$loginid)";
      				// echo $sql;exit;
      				mysqli_query($con,$sql);

      }
      $_SESSION['udata']="Data uploaded successfully";
      ?>
      <script type="text/javascript">
      	location.href=root_path+"index/emp_profile/syn_s_employee"
      </script>
      <?php 			
    }
  }
}?>
<form method="post" enctype="multipart/form-data">
	<table class="table table-bordered">
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