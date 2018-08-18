<?php
//exit;
// echo "hi";exit;
// print_r($_GET);
$date=date('d_M_Y',time());
$fileName = "include/stu_profile_exe/".$date.'_'."__studentlist.xls";
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
"<b>Token No</b>",
"<b>Student Name</b>",
"<b>Father Name</b>",
"<b>Class</b>",
"<b>Mobile No.(Father)</b>",
"<b>Gender</b>",
"<b>Intrested In</b>",
"<b>Refer To</b>",
"<b>Submit By</b>",
"<b>Date</b>",
);
$excel->writeLine($myArr);
$myArr=array();
if(isset($_GET['wh'])){
	$qry=$_GET['wh'];
	$pos = strrpos($qry,'limit');
	if($pos){
		$qry = substr($qry,0,$pos);
	}

}else{
	$qry="Select stu_profile.id, stu_profile.name,f_name,m_name,office_staff.name as staff,f_mobile,gender,send_to,refer_to,token_no,class.name as class,genrate_token,inquiry_date from stu_profile left join office_staff on refer_to=office_staff.id join class on class_id=class.id where wheree='inquiry' order by stu_profile.id";
}
// echo $qry."hi";exit;
$data=fetchAll($qry);
//print_r($data);
	$i=1;
	foreach($data as $data){
    $myArr=array();
		extract($data);
		$myArr[]="$i";
		$myArr[]="$token_no";
		$myArr[]="$name";
		$myArr[]="$f_name";
		$myArr[]="$class";
		$myArr[]="$f_mobile";
		$myArr[]="$gender";
		$myArr[]="$send_to";
		$myArr[]="$refer_to";
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
$exe=glob("include/stu_profile_exe/*.xls");
//print_r($exe);
$count=count($exe);
$count-=1;
//echo $count;exit;
for($i=0;$i<$count;$i++){
	
	unlink($exe[$i]);
	
}//exit;
$curr_date = date('Y-m-d h:i:s');
$arr = array('name'=>$fileName,'datee'=>$curr_date);
addUpdate('inq_stu_exe',$arr,1);
?>
<script type="text/javascript">
	location.href=root_path+"<?php echo $fileName; ?>";
	location.href=root_path+"index/";
</script>
