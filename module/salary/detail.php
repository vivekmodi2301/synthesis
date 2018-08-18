<?php
    $phpfiles=glob("../../include/php/*.php");
    foreach ($phpfiles as  $phpfile) {
        include_once($phpfile);
    }
    $success = '';
    extract($_POST);
    ?>
    <script type="text/javascript">
       $('#unique_id').val('<?php echo $uid; ?>');
    </script>
    <?php 
   	$data = fetchOne("select * from employee_profile where emp_id='$uid'");
   	if($data){
   		$success = "employee_profile";
   	}else{
   		$data = fetchOne("select * from teacher_profile where faculty_id='$uid'");
   		if($data){
   			$success = "teacher_profile";
   		}
   	}	
      // echo $success;
   	if($success == ''){
   		?>
   		<script type="text/javascript">
   			alert("Invalid id");
   		</script>
   		<?php 
   	}else{
         // print_r($data);
   		if($success=='employee_profile'){
   			// print_r($data);
   			?>
   			<table class="table table-bordered">
   				<tr>
   					<td>Name</td>
   					<td>Degination</td>
   					<td>Mobile</td>
   					<td>Gender</td>
   					<td>Salary</td>
   					<td>Working Hours</td>
   					<td>Office Time In</td>
   					<td>Office Time Out</td>
   				</tr>
   				<tr>
   					<td><?php echo $data['emp_name']; ?></td>
   					<td><?php echo $data['degination']; ?></td>
   					<td><?php echo $data['self_mobile']; ?></td>
   					<td><?php echo $data['gender']; ?></td>
   					<td><?php echo $data['salary']; ?></td>
   					<td><?php echo $data['working_hour']; ?></td>
   					<td><?php echo $data['office_time_in']; ?></td>
   					<td><?php echo $data['office_time_out']; ?></td>
   				</tr>
   			</table>
   			<?php
   		} elseif($success == 'teacher_profile'){
   			// print_r($data);
   			?>
   			<table class="table table-bordered">
   				<tr>
   					<td>Name</td>
   					<td>Degination</td>
   					<td>Mobile</td>
   					<td>Gender</td>
   					<td>Salary</td>
   					<td>Working Hours</td>
   					<td>Office Time In</td>
   					<td>Office Time Out</td>
   				</tr>
   				<tr>
   					<td><?php echo $data['faculty_name']; ?></td>
   					<td><?php echo $data['desiganation']; ?></td>
   					<td><?php echo $data['mobile_self']; ?></td>
   					<td><?php echo $data['gender']; ?></td>
   					<td><?php echo $data['salary']; ?></td>
   					<td><?php echo $data['working_hour']; ?></td>
   					<td><?php echo $data['office_time_in']; ?></td>
   					<td><?php echo $data['office_time_out']; ?></td>
   				</tr>
   			</table>
   			<?php 
   		}
   		?>
         <script type="text/javascript">
            show_form('4','<?php echo $uid; ?>','<?php echo $success; ?>','<?php echo $sid;?>');
         </script>
   		<div id="form"></div>
   		<?php 
   	}

?>
