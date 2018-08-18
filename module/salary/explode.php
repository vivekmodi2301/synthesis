<?php
//exit;
// echo "hi";exit;
// print_r($_GET);
$date=date('d_M_Y',time());
$fileName = "include/salary_exe/".$date.'_'."__studentlist.xls";
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
"<b>Unique ID</b>",
"<b>Name</b>",
"<b>Working hour per day</b>",
"<b>Month</b>",
"<b>Actual Working Time</b>",
"<b>Overtime</b>",
"<b>Leave with salary</b>",
"<b>Date</b>",
"<b>Total Salary</b>",
"<b>Office/Teacher</b>",
);
$excel->writeLine($myArr);
$myArr=array();
if(isset($_GET['wh'])){
	$qry=$_GET['wh'];
}else{
	$qry="select salary.id,unique_id,employee_profile.emp_name as emp_name,teacher_profile.faculty_name as faculty_name,employee_profile.working_hour as eworking_hour,teacher_profile.working_hour as tworking_hour,month,a_work,a_minute,o_work,o_minute,salary.leave_with_salary,datee,total_salary from salary left join employee_profile on unique_id=employee_profile.emp_id left join teacher_profile on faculty_id = unique_id ";
}
// echo $qry."hi";
$data=fetchAll($qry);
//print_r($data);
	$i=1;
	foreach($data as $data){
    $myArr=array();
		extract($data);
		$myArr[]="$i";
		$myArr[]="$unique_id";
		$myArr[]="$emp_name";
		$myArr[]="$eworking_hour";
		$myArr[]="$month";
		$myArr[]="$a_work";
		$myArr[]="$o_work";
		$myArr[]="$leave_with_salary";
		$myArr[]="$datee";
		$myArr[]="$total_salary";
		
		$excel->writeLine($myArr);
		$i++;
	}

		$excel->close();
// addUpdate('profileexcel',$_POST,1);
$exe=glob("include/salary_exe/*.xls");
//print_r($exe);
$count=count($exe);
$count-=1;
//echo $count;exit;
for($i=0;$i<$count;$i++){
	
	unlink($exe[$i]);
	
}//exit;
$curr_date = date('Y-m-d h:i:s');
$arr = array('name'=>$fileName,'datee'=>$curr_date);
addUpdate('salray_exe',$arr,1);
?>
<script type="text/javascript">
	location.href=root_path+"index/"
</script>