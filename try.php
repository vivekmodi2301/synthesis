<?php
session_start();
$phpfiles=glob("include/php/*.php");
foreach ($phpfiles as $phpfile) {
	include_once($phpfile);
}
?>

  <?php
  $cssfiles=glob("include/css/*.css");
  foreach ($cssfiles as $cssfile) 
  {
    if($cssfile=="include/css/style2_loginPage.css"){
      continue;
    }
  ?>
    <link rel="stylesheet" href="<?php echo ROOT.$cssfile;?>">
  <?php
  }
  ?>


  <?php
  $jsfiles=glob("include/js/*.js");
  foreach ($jsfiles as $jsfile) 
  {
  ?>
   <script src="<?php echo ROOT.$jsfile; ?>"></script>
  <?php
  }
  ?>  

<?php 
if(isset($_POST['db'])){
	// echo "hi";exit;
	$data = loginFetchOne("select db,year from dbdata where db='$db' or year='$year'");
	$success = 1;
	if($_POST['db']==''){
		$success = 0;
		$_SESSION['edb'] = "Enter database name";
	}
	elseif($data && $data['db']==$_POST['db']){
		$success = 0;
		$_SESSION['edb'] = "Database alerady exist";
		?>
		<script type="text/javascript">
			$('#edb').html("Database name alerady exist");
			$('#db').val("");
		</script>
		<?php 
	}if($_POST['year']==''){
		$success = 0;
		$_SESSION['eyear'] = "Enter database year";
	}
	elseif($data && $data['year']==$_POST['year']){
		$success = 0;
		$_SESSION['eyear'] = "Database for this year is alerady exist";
		?>
		<script type="text/javascript">
			$('#eyear').html("Database for this year is alerady exist");
			$('#year').val("");

		</script>
		<?php
	}
	if($success){
		$con = mysqli_connect(HOSTNAME,USERNAME,PASSWORD);
		mysqli_query($con,"create database $_POST[db]");
		// echo "create database $_POST[db]";exit;
		loginaddUpdate('dbdata',$_POST);
		// $_SESSION['select_db'] = $_POST['year'];
		// echo  $_SESSION['select_db'];
		// exit;
		// mysqli_close($con);
		$con1 = mysqli_connect(HOSTNAME,USERNAME,PASSWORD,$_POST['db']);

		$templine = '';
		$lines = file("sql.sql");
		foreach ($lines as $line)
		{
			// echo $line;//exit;
			// echo "<br>";
			if (substr($line, 0, 2) == '--' || $line == '')
			    continue;

			$templine .= $line;
			if (substr(trim($line), -1, 1) == ';')
			{
			    mysqli_query($con1,$templine);
			    // echo $templine;exit;
			    $templine = '';
			}
		}
		echo "Tables imported successfully";
		?>
		<script type="text/javascript">
			location.href=root_path+"index/";
		</script>
		<?php 
	}
}
?>
<form method="post">
	<table class="table table-bordered">
		<tr>
			<td>Database Name</td>
			<td><input onkeyup="this.value=this.value.replace(/[^a-z]/g,'');" required onchange="chk()" id="db" type="text" value="<?php if(isset($_POST['db'])){echo $_POST['db']; } ?>" class="form-control" name="db">
			<span id="edb"><?php if(isset($_SESSION['edb'])){ echo $_SESSION['edb']; unset($_SESSION['edb']); } ?></span>
			</td>
		</tr>
		<tr>
			<td>Database Year</td>
			<td><input type="text" onkeyup="this.value=this.value.replace(/[^0-9 -]/g,'');" maxlength="5" value="<?php if(isset($_POST['year'])){echo $_POST['year']; } ?>" required onchange="chk()" id="year" class="form-control" name="year">
			<span id="eyear"><?php if(isset($_SESSION['eyear'])){ echo $_SESSION['eyear']; unset($_SESSION['eyear']); } ?></span>
			</td>
		</tr>
		<tr>
			<td colspan="2"><input  type="submit" class="btn btn-primary" ></td>
		</tr>
	</table>
</form>
<script type="text/javascript">
	function chk(){
		var db = $('#db').val();
		var yearr = $('#year').val();
		$.ajax({
			url:"chk.php",
			data:"db="+db+"&year="+yearr,
			type:"post",
			success:function(e){
				$('#edb').html(e);
			}
		})
	}
</script>