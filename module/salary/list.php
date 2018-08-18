<?php 
	if(isset($_GET['id'])){
		extract($_GET);
		print_r($_GET);
		if($table == 'employee_profile')
			$colname = 'emp_id';
		else
			$colname = 'faculty_id';
		$leave_till_now = fetchOne("select id,leave_with_salary from $table where $colname = '$uid'");
		if($leave_till_now['leave_with_salary']>0){
			$remaning_leave = $leave_till_now['leave_with_salary']-$leave;
			if($remaning_leave>=0){
				$arr = array('leave_with_salary'=>$remaning_leave);
				addUpdate($table,$arr,$leave_till_now['id']);
			}
		}		
		// exit;		
		delete('salary',$id);
		?>
		<script type="text/javascript">
			location.href=root_path+"index/salary/syn_salary_list";
		</script>
		<?php 
	}
?>
<table class="table table-bordered">
	<tr>
		<td>Name</td>
		<td>Unique ID</td>
		<td>Month</td>
		<td>Office/Teacher</td>
	</tr>
	<tr>
		<td><input id="name" onkeyup="search()" class="form-control"></td>
		<td><input id="uid" onkeyup="search()" class="form-control"></td>
		<td>
	   		<select class="form-control" id="month" onchange="search()">
   			<option value=""></option>
   			<option <?php if($month && $month==1){echo "selected"; } ?> value="1">January</option>
   			<option <?php if($month && $month==2){echo "selected"; } ?> value="2">February</option>
   			<option <?php if($month && $month==3){echo "selected"; } ?> value="3">March</option>
   			<option <?php if($month && $month==4){echo "selected"; } ?> value="4">April</option>
   			<option <?php if($month && $month==5){echo "selected"; } ?> value="5">May</option>
   			<option <?php if($month && $month==6){echo "selected"; } ?> value="6">June</option>
   			<option <?php if($month && $month==7){echo "selected"; } ?> value="7">July</option>
   			<option <?php if($month && $month==8){echo "selected"; } ?> value="8">August</option>
   			<option <?php if($month && $month==9){echo "selected"; } ?> value="9">September</option>
   			<option <?php if($month && $month==10){echo "selected"; } ?> value="10">October</option>
   			<option <?php if($month && $month==11){echo "selected"; } ?> value="11">November</option>
   			<option <?php if($month && $month==12){echo "selected"; } ?> value="12">December</option>
   		</select>

		</td>
		<td>
			<select onchange="search()" id="ot" class="form-control">
				<option value=""></option>
				<option value="office">Office</option>
				<option value="teacher">Teacher</option>
			</select>
		</td>
	</tr>
	<tr>
		<td colspan="2">Date From</td>
		<td colspan="2">Date To</td>
	</tr>
	<tr>
		<td colspan="2"><input type="date" id="d_from" onchange="search()" class="form-control"></td>
		<td colspan="2"><input id="d_to" type="date" onchange="search()" class="form-control"></td>
	</tr>

	<tr>
		<td colspan="4" class="profile_chng_color">Total No. of student:<span  id="tot_stu"></span></td>
	</tr>
</table>
<table class="table table-bordered" id="show">
    <tr>
        <td colspan="14"><a href="<?php echo ROOT ?>module/salary/search_print.php" class="btn btn-primary">Print</a></td>
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
	<?php 
		$sno = 1;
		$url=ROOT."index/salary/syn_salary_list/";
        $limit=1;
        $frmdataget=$_REQUEST;
        // print_r($frmdataget);
        
        @PaginationWork(10); 
        $totRslt=mysqli_fetch_assoc(mysqli_query($con,"select count(*) as tot from salary left join employee_profile on unique_id=employee_profile.emp_id left join teacher_profile on faculty_id = unique_id"));
        
        ?>
        <script type="text/javascript">
        $('#tot_stu').html('<?php echo $totRslt['tot']; ?>');
        </script>
        <?php
		$salary_data = fetchAll("select salary.id,unique_id,employee_profile.emp_name as emp_name,teacher_profile.faculty_name as faculty_name,employee_profile.working_hour as eworking_hour,teacher_profile.working_hour as tworking_hour,month,a_work,a_minute,o_work,o_minute,salary.leave_with_salary,datee,total_salary from salary left join employee_profile on unique_id=employee_profile.emp_id left join teacher_profile on faculty_id = unique_id limit ".$frmdata['from'].", ".$frmdata['to']);
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
		<td><a href="<?php echo ROOT; ?>index/salary/syn_a_salary/salary=<?php echo $id; ?>/table=<?php echo $table; ?>" title="Edit Profile"><img src="<?php echo ROOT; ?>include/images/profile_edit.png" height="20" width="20" /></a> | <a href="#" onclick="del('<?php echo $id; ?>','<?php echo $table; ?>','<?php echo $leave_with_salary; ?>','<?php echo $salary_value['unique_id']; ?>')" title="Delete Profile"><img src="<?php echo ROOT; ?>include/images/trash.png" height="20" width="20" /></a> </td>
	</tr>
	<?php } ?>

    <tr>
            <td colspan="20">
                <?php PaginationDisplay($totRslt['tot'],$url.'page=','','10','View More Photos');?>
            </td>
    </tr>
</table>
<script type="text/javascript">
	function del(did,table,leave,uid){
		if(confirm("Do you really want to delete")){
			location.href=root_path+"index/salary/syn_s_salary/"+did+"/"+table+"/"+leave+"/"+uid;
		}
	}
</script>
<script type="text/javascript">
	function search(){
		var name = $('#name').val();
		var uid = $('#uid').val();
		var month = $('#month').val();
		var ot = $('#ot').val();
		var d_from = $('#d_from').val();
		var d_to = $('#d_to').val();
		$.ajax({
			url:root_path+"module/salary/search.php",
			data:"name="+name+"&uid="+uid+"&month="+month+"&ot="+ot+"&d_from="+d_from+"&d_to="+d_to,
			type:"post",
			success:function(e){
				$('#show').html(e);
			},error:function(e){
				alert(e);
			}
		})
	}
</script>

    <script type="text/javascript">
        function showpage(where,page){
            // alert(where);
            $.ajax({
                url:root_path+'module/salary/search.php',
                data:"where="+where+"&pageNumber="+page,
                type:'post',
                success:function(e){
                    $('#show').html(e);

                }
            });
        }
    </script>
    <?php 
    if(isset($_GET['uid'])){
    	?>
    	<script type="text/javascript">
    		$('#uid').val('<?php echo $_GET['uid']; ?>');
    		search();
    	</script>
    <?php 
    	}
    ?>