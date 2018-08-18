<?php 
	// print_r($_GET);
$id="";
	if(isset($_GET['salary'])){
		if($_GET['table']=='employee_profile'){
			$uid = fetchOne("select emp_id as id,month,salary.leave_with_salary from employee_profile join salary on emp_id = unique_id where salary.id=$_GET[salary]");
			// echo "select emp_id,month as id from employee_profile join salary on emp_id = unique_id where salary.id=$_GET[salary]";
		}
		elseif($_GET['table']=='teacher_profile'){
			$uid = fetchOne("select faculty_id as id,month,salary.leave_with_salary from teacher_profile join salary on faculty_id = unique_id where salary.id=$_GET[salary]");
		}
	}

	if(isset($_POST['unique_id'])){
	print_r($_POST);
		if(isset($_GET['salary'])){
			$id = $_POST['sid'];
		}
		// print_r($_POST);exit;
		$post_data = fetchOne("select id,leave_with_salary,working_hour,salary from employee_profile where emp_id='$_POST[unique_id]'");
		if($post_data){
			$table = "employee_profile";
		}else{
			$table = "teacher_profile";
			$post_data = fetchOne("select id,leave_with_salary,working_hour,salary from teacher_profile where faculty_id='$_POST[unique_id]'");
		}
		// print_r($post_data);exit;
		if(!isset($_GET['salary'])){
			$now_leave = $post_data['leave_with_salary']+$_POST['leave_with_salary'];
			$arr = array('leave_with_salary'=>$now_leave);
			addUpdate($table,$arr,$post_data['id']);
		}
		else{
			if($uid['leave_with_salary']>$_POST['leave_with_salary']){
				$now_leave = $post_data['leave_with_salary']-($uid['leave_with_salary']-$_POST['leave_with_salary']);
				$arr = array('leave_with_salary'=>$now_leave);
				addUpdate($table,$arr,$post_data['id']);
			}
			elseif($uid['leave_with_salary']<$_POST['leave_with_salary']){
					$now_leave = $post_data['leave_with_salary']+($_POST['leave_with_salary']-$uid['leave_with_salary']);
					$arr = array('leave_with_salary'=>$now_leave);
					addUpdate($table,$arr,$post_data['id']);
				}

		}
		// echo $now_leave."hello";exit;
		
		// print_r($_POST);exit;

		//total salary calculation
		
		$days=30;
		$working_minutes = $post_data['working_hour']*60*$days;
		// echo $working_minutes;exit;
		$salary_per_minute = $post_data['salary']/$working_minutes;
		$actual_working_minute = ($_POST['a_work']*60)+$_POST['a_minute'];
		if($_POST['leave_with_salary']){
			$actual_working_minute += $_POST['leave_with_salary']*60*$post_data['working_hour'];
		} 
		if($_POST['o_work']){
			$minutes = $_POST['o_work']*60;
			if($_POST['o_minute']){
				$minutes += $_POST['o_minute']; 
			}
			if($minutes){
				$actual_working_minute += $minutes;
			}
		}
		// console.log(actual_working_minute);

		$final_salary = $actual_working_minute*$salary_per_minute;
		if($_POST['extra']){
			$final_salary+=$_POST['extra'];
		}
		if($_POST['less']){
			$final_salary-=$_POST['less'];
		}
		$final_salary = round($final_salary);
		// echo $final_salary;exit;
		if($final_salary!=$_POST['total_salary']){
			$_POST['total_salary']=$final_salary;
		}
		//total salary calculation over




		unset($_POST['sid']);
		$_POST['submit_by']=$_SESSION['logindtl']['id'];
		addUpdate('salary',$_POST,$id);
		?>
		<script>
			location.href=root_path+"index/salary/syn_salary_list";
		</script>
		<?php 
	}
?>
<form method="post">
	<table class="table table-bordered">
		<tr>
			<th>
				Enter Employee/Teacher Id
			</th>
			<td>
				<input onchange="showdtl(this.value)" type="text" class="form-control" id="unique_id">
			</td>
		</tr>
	</table>
	<div id="show"></div>
</form>
<script type="text/javascript">
	function showdtl(uid,month,sid){

		$.ajax({
			url:root_path+"module/salary/detail.php",
			data:"uid="+uid+"&month="+month+"&sid="+sid,
			type:"post",
			success:function(e){
				$('#show').html(e);
				$('#unique_id').val(uid);
			}
		})
	}
</script>
<script type="text/javascript">
	function show_form(month,uid,table,sid){
		// alert(sid);
		$.ajax({
			url:root_path+"module/salary/form.php",
			data:"month="+month+"&uid="+uid+"&table="+table+"&sid="+sid,
			type:"post",
			success:function(e){
				$('#form').html(e);
			}
		});			
	}
</script>
<script type="text/javascript">
	function calculate_salary(){
		var total_salary = parseInt($('#total_salary').html());
		var working_hour = parseInt($('#working_hour').html());
		var total_hour = parseInt($('#total_hour').html());
		var a_work = parseInt($('#a_work').val());
		var a_minute = parseInt($('#a_minute').val());
		var o_work = parseInt($('#o_work').val());
		var o_minute = parseInt($('#o_minute').val());
		var working_minutes = parseInt(total_hour*60);
		var leave_with_salary = parseInt($('#leave_with_salary').val());
		var extra = parseInt($('#c_am').val());
		var less = parseInt($('#l_am').val());
		var salary_per_minute = total_salary/working_minutes;
		var actual_working_minute = 0;
		actual_working_minute = (a_work*60)+a_minute;
		if(!isNaN(leave_with_salary)){
			actual_working_minute += parseInt(leave_with_salary*60*working_hour);
		}
		if(!isNaN(o_work)){
			minutes = parseInt(o_work*60);
			if(!isNaN(o_minute)){
				minutes += o_minute; 
			}
			if(!isNaN(minutes)){
				actual_working_minute += minutes;
			}
		}
		// console.log(actual_working_minute);

		final_salary = parseInt(actual_working_minute*salary_per_minute);
		final_salary = Math.ceil(final_salary);
		// console.log(final_salary);

		if(!isNaN(extra)){
			final_salary += extra;
		}
		if(!isNaN(less)){
			final_salary -= less;
		} 
		$('#final_salary').val(final_salary);
	}
</script>
<script type="text/javascript">
	function check_leave(o_leave){
		var tot_leave = $('#tot_leave').html();
		var a_leave = parseInt($('#a_leave').html());
		// alert(a_leave);

		if(o_leave){
			o_leave = parseInt(o_leave);
			a_leave = parseInt(o_leave+a_leave);
			// alert(o_leave);
		}
		var take_leave = $('#leave_with_salary').val();
		// alert(take_leave);
		// alert(a_leave);
		if(take_leave>a_leave){
			alert("Invalid value");
			$('#leave_with_salary').val('');
		}
	}
</script>
<?php 
	if(isset($_GET['id'])){
		?>
		<script type="text/javascript">
			showdtl('<?php echo $_GET['id']; ?>','','');
		</script>
		<?php 
	}
?>
<?php 
	if(isset($_GET['salary'])){
		?>
		<script type="text/javascript">
			// alert("aja");
			showdtl('<?php echo $uid['id']; ?>','<?php echo $uid['month'] ?>','<?php echo $_GET['salary']; ?>');
			show_form('<?php echo $uid['month'] ?>','<?php echo $uid['id']; ?>','<?php echo $_GET['table'];?> ','<?php echo $_GET['salary']; ?>');
		</script>
		<?php 
	}
?>