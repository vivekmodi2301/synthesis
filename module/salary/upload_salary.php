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

        // print_r($data);exit;
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

    			$set.="'$item[$j]',";
        }
        $qry = fetchOne("select id,leave_with_salary from employee_profile where emp_id=$item[0]");
        if($qry){
          $table = 'employee_profile';
        }else{
          $qry = fetchOne("select id,leave_with_salary from teacher_profile where faculty_id = $item[0]");
          if($qry){
            $table = 'teacher_profile';
          }else{
            continue;
          }
        }
  			$set=substr($set,0,-1);
  			//echo $day;/*
        // echo "hi";exit;
        $new_leave = $qry['leave_with_salary']+$item[5];
        $arr = array('leave_with_salary'=>$new_leave);
        addUpdate($table,$arr,$qry['id']);
  			$loginid=$_SESSION['logindtl']['id'];
  				$sql="insert into salary (unique_id,a_work,a_minute,o_work,o_minute,leave_with_salary,datee,total_salary,month,submit_by) values($set,$loginid)";
  				// echo $sql;exit;
				mysqli_query($con,$sql);
      }
      $_SESSION['udata']="Data uploaded successfully";
      ?>
      <script type="text/javascript">
      	location.href=root_path+"index/salary/syn_salary_list"
      </script>
      <?php 			
    }
  }
}?>
<form method="post" enctype="multipart/form-data">
  <div class="form-group">
    <label class="col-lg-4 control-label">Upload CSV</label>
      <div class="col-lg-8">
<input type="file" name="csv">
</div>
</div>

<div class="form-group">
  <div class="col-lg-8 col-lg-offset-4">
    <button type="submit"  id="submit" class="btn btn-danger btn-sm btn-block" name="submit" style="font-family:'Century Gothic'; font-size:14px; font-weight:bold;">SUBMIT</button>
    </div>
</div>
</form>