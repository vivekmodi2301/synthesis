<?php
	$phpfiles=glob("../../include/php/*.php");
	foreach ($phpfiles as  $phpfile) {
		include_once($phpfile);
	}
	extract($_POST);
	$pageData = 10;
	if(!isset($_POST['where'])){
		$wh=" where 1 ";
		if($name){
			$wh.=" and (emp_name like '%$name%' or faculty_name like '%$name%')";
		}
		if($uid){
			$wh.=" and (unique_id like '%$uid%')";
		}
		if($month){
			$wh.=" and month=$month";
		}
		if($d_from!='' && $d_to==''){
            $wh.=" and datee='$d_from'";
        }
        elseif($d_from=='' && $d_to!=''){
            $wh.=" and datee='$d_from'";
        }elseif($d_from!='' && $d_to!=''){
            $wh.=" and (datee>='$d_from' and datee<='$d_to')";
        }
    }else{
        $wh=$_POST['where'];
        if(isset($_SESSION['data'])){
        	$pageData = $_SESSION['data'];
		}
	}
	extract($_POST);
    //to select all data
    $pageData = 10;
$sno = 1;
$url=ROOT."module/salary/search.php";
        $limit=1;
        $frmdataget=$_REQUEST;
        // print_r($frmdataget);
        @PaginationWork(10); 
        $totRslt=mysqli_fetch_assoc(mysqli_query($con,"select count(*) as tot from salary left join employee_profile on unique_id=employee_profile.emp_id left join teacher_profile on faculty_id = unique_id $wh"));
        $qry="select salary.id,unique_id,employee_profile.emp_name as emp_name,teacher_profile.faculty_name as faculty_name,employee_profile.working_hour as eworking_hour,teacher_profile.working_hour as tworking_hour,month,a_work,a_minute,o_work,o_minute,salary.leave_with_salary,datee,total_salary from salary left join employee_profile on unique_id=employee_profile.emp_id left join teacher_profile on faculty_id = unique_id limit ".$frmdata['from'].", ".$frmdata['to'];
        
    $salary_data=fetchAll($qry);
?>
<table class="table table-bordered" id="show">
	   <tr>
            <td colspan="14">
            	<a href="<?php echo ROOT ?>module/salary/search_print.php?wh=<?php echo $wh; ?>" class="btn btn-primary">Print</a>
            	<a href="<?php echo ROOT; ?>index.php?mod=salary&do=csv_export&wh=<?php echo $qry; ?>" class="btn btn-primary">Export</a>
            </td>
        </tr>
	<tr>
		<th colspan="12" style="text-align: center;">Salary List</th>
	</tr>
	<tr>
		<td>S.No.</td>
		<td>Unique ID</td>
		<td>Name</td>
		<td>Working hour per day</td>
		<td>Month</td>
		<td>Actual Working Time</td>
		<td>Overtime</td>
		<td>Leave with salary</td>
		<td>Date</td>
		<td>Total Salary</td>
		<td>Office/Teacher</td>
		<td>Action</td>
	</tr>
	
        <script type="text/javascript">
        	$('#tot_stu').html('<?php echo $totRslt['tot']; ?>');
        </script>
        <?php 
		$salary_data = fetchAll("select salary.id,unique_id,employee_profile.emp_name as emp_name,teacher_profile.faculty_name as faculty_name,employee_profile.working_hour as eworking_hour,teacher_profile.working_hour as tworking_hour,month,a_work,a_minute,o_work,o_minute,salary.leave_with_salary,datee,total_salary from salary left join employee_profile on unique_id=employee_profile.emp_id left join teacher_profile on faculty_id = unique_id $wh limit ".$frmdata['from'].", ".$frmdata['to']);
		// echo "<tr><td>select salary.id,unique_id,employee_profile.emp_name as emp_name,teacher_profile.faculty_name as faculty_name,employee_profile.working_hour as eworking_hour,teacher_profile.working_hour as tworking_hour,month,a_work,a_minute,o_work,o_minute,salary.leave_with_salary,datee,total_salary from salary left join employee_profile on unique_id=employee_profile.emp_id left join teacher_profile on faculty_id = unique_id $wh</td></tr>";
		foreach ($salary_data as  $salary_value) {
			if($ot=='office' && $salary_value['emp_name']==''){
				// echo "<tr><td>";
				// print_r($salary_value);
				// echo "</td></tr>";
				continue;
			}elseif($ot=='teacher' && $salary_value['faculty_name']==''){
				// echo "<tr><td>second</td></tr>";
				continue;
			}
			extract($salary_value);
			switch ($month) {
				case '1':
					$month = "January";
					break;
				case '2':
					$month = "February";
					break;
				case '3':
					$month = "March";
					break;
				case '4':
					$month = "April";
					break;
				case '5':
					$month = "May";
					break;
				case '6':
					$month = "June";
					break;
				case '7':
					$month = "July";
					break;
				case '8':
					$month = "August";
					break;
				case '9':
					$month = "September";
					break;
				case '10':
					$month = "October";
					break;
				case '11':
					$month = "November";
					break;
				case '12':
					$month = "December";
					break;
				
				default:
					$month = "N/A";
					break;
			}
	?>
	<tr>
		<td><?php echo $sno++; ?></td>
		<td><?php echo $salary_value['unique_id']; ?></td>
		<td><?php if($emp_name){echo $salary_value['emp_name'];}else{echo $faculty_name;} ?></td>
		<td><?php if($eworking_hour){echo $salary_value['eworking_hour'];}else{echo $tworking_hour;} ?></td>
		<td><?php echo $month; ?></td>
		<td><?php echo $a_work.".".$a_minute; ?></td>
		<td><?php echo $o_work.".".$o_minute; ?></td>
		<td><?php echo $leave_with_salary; ?></td>
		<td><?php echo $datee; ?></td>
		<td><?php echo $total_salary; ?></td>
		<td><?php if($emp_name){echo "Office"; $table = "employee_profile";}else{echo "teacher"; $table="teacher_profile";} ?></td>
		<td><a href="<?php echo ROOT; ?>index/salary/syn_a_salary/salary=<?php echo $id; ?>/table=<?php echo $table; ?>" title="Edit Profile"><img src="<?php echo ROOT; ?>include/images/profile_edit.png" height="20" width="20" /></a> | <a href="#" onclick="del('<?php echo $id; ?>','<?php echo $table; ?>','<?php echo $leave_with_salary; ?>','<?php echo $salary_value['unique_id']; ?>')" title="Delete Profile"><img src="<?php echo ROOT; ?>include/images/trash.png" height="20" width="20" /></a> </td>
	</tr>
	<?php } ?>
	<tr>
      <td colspan="20">
        <?php searchPaginationDisplay($totRslt['tot'],$url.'&pageNumber=','',10,$wh);?>
      </td>
    </tr>
</table>