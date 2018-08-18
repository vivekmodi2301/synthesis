<?php 
    $phpfiles=glob("../../include/php/*.php");
    foreach ($phpfiles as  $phpfile) {
        include_once($phpfile);
    }
    if(isset($_GET['wh'])){
        $wh .= $_GET['wh'];
    }
?>
<link rel="stylesheet" type="text/css" href="<?php echo ROOT; ?>include/css/bootstrap.min.css">

<table class="table table-bordered" id="show">
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
	</tr>
	<?php 
		$sno = 1;
		$salary_data = fetchAll("select salary.id,unique_id,employee_profile.emp_name as emp_name,teacher_profile.faculty_name as faculty_name,employee_profile.working_hour as eworking_hour,teacher_profile.working_hour as tworking_hour,month,a_work,a_minute,o_work,o_minute,salary.leave_with_salary,datee,total_salary from salary left join employee_profile on unique_id=employee_profile.emp_id left join teacher_profile on faculty_id = unique_id");
		foreach ($salary_data as  $salary_value) {
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
	</tr>
	<?php } ?>

</table>