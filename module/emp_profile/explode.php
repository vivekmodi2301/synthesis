<?php
//exit;
// echo "hi";exit;
// print_r($_GET);
$date=date('d_M_Y',time());
$fileName = "include/emp_exe/".$date.'_'."emplist.xls";
// $_POST['filename']=$date.'_'.time()."__studentlist.xls";
	//$boys_fund=mysqli_query($con,"SELECT id, fund from boysfund");
$excel = new ExcelWriter($fileName);

	if($excel==false)
	{
		//echo "hi";exit;
		echo $excel->error;
		die;
	}

$myArr=array(
"<b>S. No.</b>",
"<b>Emp ID</b>",
"<b>Emp Name</b>",
"<b>Designation</b>",
"<b>Contact No.</b>",
);
$excel->writeLine($myArr);
$myArr=array();
if(isset($_GET['wh'])){
	$qry=$_GET['wh'];
}else{
	$qry="select id,emp_id,emp_name,degination,self_mobile,upload_photo from employee_profile" ;
}
// echo $qry."hi";
$data=fetchAll($qry);
//print_r($data);
	$i=1;
	foreach($data as $data){
    $myArr=array();
		extract($data);
		$myArr[]="$i";
		$myArr[]="$emp_id";
		$myArr[]="$emp_name";
		$myArr[]="$designation";
		$myArr[]="$contact";
		@$genrate_by=loginFetchOne("select uname from login where id=$genrate_token");

		// echo  "select uname from login where id=$genrate_token";
		if(isset($genrate_token['uname'])){
			$myArr[] = $genrate_by['uname']; 
		}else{
			$myArr[] = "Master Admin";
		}
		$inquiry_date = explode('-',$inquiry_date);
		krsort($inquiry_date);
		$inquiry_date = implode('-',$inquiry_date);
		$myArr[]="$inquiry_date";
		// echo "$inquiry_date";
$excel->writeLine($myArr);
$i++;
	}

		$excel->close();
// addUpdate('profileexcel',$_POST,1);
$exe=glob("include/emp_exe/*.xls");
//print_r($exe);
$count=count($exe);
$count-=1;
//echo $count;exit;
for($i=0;$i<$count;$i++){
	
	unlink($exe[$i]);
	
}//exit;
$curr_date = date('Y-m-d h:i:s');
$arr = array('name'=>$fileName,'datee'=>$curr_date);
addUpdate('emp_exe',$arr,1);
?>
<script type="text/javascript">
	location.href=root_path+"index/"
</script>