<?php
//exit;
// echo "hi";exit;
// print_r($_GET);
$date=date('d_M_Y',time());
$fileName = "include/refund_exe/".$date.'_'."refundlist.xls";
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
"<b>Roll No.</b>",
"<b>Student Name</b>",
"<b>Father Name</b>",
"<b>Class</b>",
"<b>Batch</b>",
"<b>photo</b>",
"<b>Refund By</b>",
"<b>Refund Date</b>",
);
$excel->writeLine($myArr);
$myArr=array();
if(isset($_GET['wh'])){
	$qry=$_GET['wh'];
}else{
	$qry="select stu_profile.id,stu_profile.name,roll_no,f_name,m_name,class.name as class,batch.name as batch,propic,genrate_token,admission,from_date,to_date,inquiry_date,addmission_date,registration_by,registration_date,refund_by,refund_date from stu_profile join class on class_id=class.id join batch on batch_id=batch.id where wheree='leave'";
}
// echo $qry."hi";
$data=fetchAll($qry);
//print_r($data);
	$i=1;
	foreach($data as $data){
    $myArr=array();
		extract($data);
		$myArr[]="$i";
		$myArr[]="$roll_no";
		$myArr[]="$name";
		$myArr[]="$f_name";
		$myArr[]="$class";
		$myArr[]="$batch";
		$myArr[]="$photo";
		$myArr[]="$refund_by";
		$myArr[]="$refund_date";
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
$exe=glob("include/refund_exe/*.xls");
//print_r($exe);
$count=count($exe);
$count-=1;
//echo $count;exit;
for($i=0;$i<$count;$i++){
	
	unlink($exe[$i]);
	
}//exit;
$curr_date = date('Y-m-d h:i:s');
$arr = array('name'=>$fileName,'datee'=>$curr_date);
addUpdate('refund_exe',$arr,1);
?>
