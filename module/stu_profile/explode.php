		<?php
		//exit;
		// echo "hi";exit;
		// print_r($_GET);
		$date=date('d_M_Y',time());
		$fileName = "include/stu_profile/".$date.'_'."studentlist.xls";
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
		"<b>Roll No</b>",
		"<b>Student Name</b>",
		"<b>Father Name</b>",
		"<b>Class</b>",
		"<b>Batch</b>",
		"<b>Photo</b>",
		"<b>Token By</b>",
		"<b>Registered by</b>",
		"<b>Admission by</b>",
		"<b>Inquiry Date</b>",
		"<b>Admission Date</b>",
		);
		$excel->writeLine($myArr);
		$myArr=array();
		if(isset($_GET['wh'])){
			$qry=$_GET['wh'];
		}else{
			$qry="select stu_profile.id,stu_profile.name,roll_no,f_name,m_name,class.name as class,batch.name as batch,propic,genrate_token,admission,from_date,to_date,inquiry_date,addmission_date,registration_by,registration_date from stu_profile left join class on class_id=class.id left join batch on batch_id=batch.id where wheree='addmission'";
		}
		// echo $qry."hi";exit;
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
				$myArr[]="$token_by";
				$myArr[]="$registered_by";
				$myArr[]="$admission_by";
				$myArr[]="$inquiry_date";
				$myArr[]="$admission_date";
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
		$exe=glob("include/stu_profile/*.xls");
		//print_r($exe);
		$count=count($exe);
		$count-=1;
		//echo $count;exit;
		for($i=0;$i<$count;$i++){
			
			unlink($exe[$i]);
			
		}//exit;
		$curr_date = date('Y-m-d h:i:s');
		$arr = array('name'=>$fileName,'datee'=>$curr_date);
		addUpdate('per_stu_exe',$arr,1);
		?>
<script type="text/javascript">
	location.href=root_path+"index/"
</script>