<?php 
	if(isset($_POST['password'])){
		$loginId = $_SESSION['logindtl']['id'];
		$_POST['password'] = md5($_POST['password']);
		loginAddUpdate('login',$_POST,$loginId);
		?>
		<script type="text/javascript">
			alert("Password Changed");
			location.href=root_path+"index/";
		</script>
		<?php  
	}
?>
<form method="post">
	<table class="table table-bordered">
		<tr>
			<th colspan="2" style="text-align: center;">Change Password Form</th>
		</tr>
		<tr>
			<td>Old Password</td>
			<td><input type="password" class="form-control" onchange="chk_password(this.value)" ></td>
		</tr>
		<tr>
			<td>New Password</td>
			<td><input type="password" class="form-control" name="password" id="new_pass" disabled></td>
		</tr>
		<tr>
			<td colspan="2"><input disabled id="submit" type="submit" value="Submit" class="btn btn-primary"></td>
		</tr>
</table>
</form>
<div id="show" ></div>
<script type="text/javascript">
	function chk_password(o_pass){
		$.ajax({
			url:root_path+"module/login/chk_pass.php",
			data:"o_pass="+o_pass,
			type:"post",
			success:function(e){
				$('#show').html(e);
			},error:function(e){
				alert(e);
			}
		})
	}
</script>