<?php 
	$id="";
	if(isset($_GET['id'])){
		$id=$_GET['id'];
		$user_dtl=loginFetchOne("select id,uname,dept from login where id=$id");
	}
	if(isset($_POST['uname'])){
		$_POST['password']=md5($_POST['password']);
		loginAddUpdate('login',$_POST,$id);
		?>
		<script type="text/javascript">
			location.href=root_path+"index/users/syn_s_users";
		</script>
		<?php
	}
?>
<form method="post">
<p class="profile_chng_color">You are here at : Create New User and Define Their Role</p>
<table class="table table-borederd">
	<tr>
		<td>Username</td>
		<td><input type="text" required="" value="<?php if($id){ echo $user_dtl['uname']; } ?>" class="form-control" name="uname"></td>
	</tr>
	<tr>
		<td>Password</td>
		<td><input type="password" <?php if($id==''){echo "required";} ?> class="form-control" name="password" required="required"></td>
	</tr>
	<tr>
		<td>Department</td>
		<td>
			<select name="dept" required class="form-control">
				<option value="">Please Select User's Role</option>
				<option <?php if($id && $user_dtl['dept']=='masteradmin'){echo "selected";} ?> value="masteradmin">Master Admin</option>
				<option <?php if($id && $user_dtl['dept']=='accountant'){echo "selected";} ?> value="accountant">Accountant</option>
				<option <?php if($id && $user_dtl['dept']=='inquiry'){echo "selected";} ?> value="inquiry">Inquiry</option>
				<option <?php if($id && $user_dtl['dept']=='recption'){echo "selected";} ?> value="recption">Recption</option>
				<option <?php if($id && $user_dtl['dept']=='icard'){echo "selected";} ?> value="icard">I-card and other</option>
			</select>
		</td>
	</tr>
	<tr>
		<td></td><td><input type="submit" value="Submit" class="form-control btn-danger"></td>
	</tr>
</table>
</form>