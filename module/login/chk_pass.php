<?php 
	session_start();
	$phpfiles=glob("../../include/php/*.php");
	foreach ($phpfiles as  $phpfile) {
		include_once($phpfile);
	}
	extract($_POST);
	$loginid = $_SESSION['logindtl']['id'];
	$pass =  loginFetchOne("select password from login where id=$loginid");
	$o_pass = md5($o_pass);
	if($pass['password']==$o_pass){
		?>
		<script type="text/javascript">
			$('#new_pass').removeAttr('disabled');
			$('#submit').removeAttr('disabled');
			// alert("aja");
		</script>
		<?php 
	}else{
		?>
		<script type="text/javascript">
			$('#new_pass').attr('disabled','disabled');
			$('#submit').attr('disabled','disabled');
		</script>
		<?php 
	}
?>
