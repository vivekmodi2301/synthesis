<?php
    $phpfiles=glob("../../include/php/*.php");
    foreach ($phpfiles as  $phpfile) {
        include_once($phpfile);
    }
    extract($_POST);
    // print_r($_POST);
    $table = trim($table);
    if($table == 'employee_profile'){
    	// echo "hi";
    	$col = "emp_id";
    }else{
    	// echo $table;
    	$col = "faculty_id";
    }
    $data = fetchOne("select salary,working_hour,leave_with_salary from $table where $col='$uid'");
    // echo "select salary,working_hour,leave_with_salary from $table where $col='$uid'";
    $total_leave = fetchOne("select $table from leave_with_salary where id=1");
    // echo "select $table from leave_with_salary where id=1";
	$year = loginFetchOne("select year from dbdata where db='$_SESSION[select_db]'");
	extract($year);
	$year = explode('-',$year);
	// print_r($year);
	$year = "20".$year[1];
    if($month == 2){
   		if($year%2 == 0){
   			$days = 29;
   		}else{
   			$days = 28;
   		}
    }
    switch($month){
    	case 1:
    	case 3:
    	case 5:
    	case 7:
    	case 8:
    	case 10:
    	case 12:
    		$days = 31;
    		break;
    	case 4:
    	case 6:
    	case 9:
    	case 11:
    		$days = 30;
    		break;
    }
?>
<table class="table table-bordered">
	<tr>
		<td>Salary</td>
		<td>Working Hours</td>
		<td>Total Hours</td>
		<td>Leave</td>
		<td>Leave Available</td>
	</tr>
	<tr>
		<td id="total_salary"><?php echo $data['salary']; ?></td>
		<td id="working_hour"><?php echo $data['working_hour']; ?></td>
		<td id="total_hour"><?php echo $data['working_hour']*$days; ?></td>
		<td id="tot_leave"><?php  echo $total_leave[$table]; ?></td>
		<td id="a_leave"><?php  echo $total_leave[$table]-$data['leave_with_salary']; ?></td>
	</tr>
</table>
<?php 
	if($sid){
		$salary_data = fetchOne("select * from salary where id=$sid");
		// print_r($salary_data);
		extract($salary_data);
	}
?>
<form method="post">
	<table class="table table-bordered">
		<tr>
			<td>Actual work in Hour</td>
			<td><input maxlength="3" onkeyup="this.value=this.value.replace(/[^0-9]/g,'');" type="text" class="form-control" id="a_work" name="a_work" value="<?php echo $salary_data['a_work']; ?>"></td>
			<td>Actual work in Minute</td>
			<td><input maxlength="2" onkeyup="this.value=this.value.replace(/[^0-9]/g,'');" value="<?php echo $salary_data['a_minute']; ?>" type="text" class="form-control" id="a_minute" name="a_minute"></td>
		</tr>
		<tr>
			<td>Overtime work in Hour</td>
			<td><input type="text" maxlength="2" onkeyup="this.value=this.value.replace(/[^0-9]/g,'');" class="form-control" value="<?php echo $salary_data['o_work']; ?>" id="o_work" name="o_work"></td>
			<td>Overtime work in Minute</td>
			<td><input type="text" maxlength="2" onkeyup="this.value=this.value.replace(/[^0-9]/g,'');" value="<?php echo $salary_data['a_minute']; ?>" class="form-control" id="o_minute" name="o_minute"></td>
		</tr>
		<tr>
			<td>Compensation Amount</td>
			<td><input type="text"  onkeyup="this.value=this.value.replace(/[^0-9]/g,'');" class="form-control" value="<?php echo $salary_data['extra']; ?>" id="c_am" name="extra"></td>
			<td>Compensation Reson</td>
			<td><input type="text"  onkeyup="this.value=this.value.replace(/[^a-z ,]/g,'');" value="<?php echo $salary_data['extra_reson']; ?>" class="form-control" id="o_minute" name="extra_reson"></td>
		</tr>
		<tr>
			<td>Less Amount</td>
			<td><input type="text" onkeyup="this.value=this.value.replace(/[^0-9]/g,'');" class="form-control" value="<?php echo $salary_data['less']; ?>" id="l_am" name="less"></td>
			<td>Less Reson</td>
			<td><input type="text"  onkeyup="this.value=this.value.replace(/[^a-z ,]/g,'');" value="<?php echo $salary_data['less_reson']; ?>" class="form-control" id="o_minute" name="less_reson"></td>
		</tr>
		<tr>
			<td >Leave with salary</td>
			<td ><input type="text" maxlength="1" onkeyup="this.value=this.value.replace(/[^0-9]/g,'');" class="form-control" id="leave_with_salary" onchange="check_leave('<?php echo $salary_data['leave_with_salary']; ?>')" value="<?php echo $salary_data['leave_with_salary']; ?>" name="leave_with_salary"></td>
			<td>Date</td>
			<td><input type="date" value="<?php if(isset($salary_data)){ echo $salary_data['datee']; }else{echo date('Y-m-d');} ?>" id="date" name="datee" class="form-control"></td>
		</tr>
		<tr>
			<td colspan="2">Total Salary</td>
			<td colspan="2"><input type="text"  onkeyup="this.value=this.value.replace(/[^0-9]/g,'');" name="total_salary" value="<?php echo $salary_data['total_salary']; ?>" id="final_salary" class="form-control" onfocus="calculate_salary()"></td>
			<input type="hidden" name="unique_id" value="<?php echo $uid; ?>">
			<input type="hidden" name="month" value="<?php echo $month; ?>">
			<input type="hidden" name="sid" value="<?php echo $sid; ?>">
		</tr>
		<tr>
			<td colspan="4"><input type="submit" value="Submit" class="btn btn-primary"></td>
		</tr>
	</table>
</form>