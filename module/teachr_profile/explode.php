<?php
//exit;
// echo "hi";exit;
// print_r($_GET);
$date=date('d_M_Y',time());
$fileName = "include/teacher_doc_exe/".$date.'_'."studentlist.xls";
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
"<b>Faculty ID</b>",
"<b>Employee Name</b>",
"<b>Designation</b>",
"<b>Contact No.</b>",
"<b>Photo</b>",
);
$excel->writeLine($myArr);
$myArr=array();
if(isset($_GET['wh'])){
	$qry=$_GET['wh'];
}else{
	$qry="select id,faculty_id,faculty_name,desiganation,mobile_self,upload_photo from teacher_profile
	";
}
// echo $qry."hi";
$data=fetchAll($qry);
//print_r($data);
	$i=1;
	foreach($data as $data){
    $myArr=array();
		extract($data);
		$myArr[]="$i";
		$myArr[]="$faculty_id";
		$myArr[]="$faculty_name";
		$myArr[]="$desiganation";
		$myArr[]="$mobile_self";

$excel->writeLine($myArr);
$i++;
	}

		$excel->close();
// addUpdate('profileexcel',$_POST,1);
$exe=glob("include/teacher_doc_exe/*.xls");
//print_r($exe);
$count=count($exe);
$count-=1;
//echo $count;exit;
for($i=0;$i<$count;$i++){
	
	unlink($exe[$i]);
	
}//exit;
$curr_date = date('Y-m-d h:i:s');
$arr = array('name'=>$fileName,'datee'=>$curr_date);
addUpdate('tec_exe',$arr,1);
?>
