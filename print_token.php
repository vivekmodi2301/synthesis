<?php 
session_start();
$phpfiles=glob("include/php/*.php");
foreach ($phpfiles as $phpfile) {
  include_once($phpfile);
}
$id=$_GET['id'];
$data=fetchOne("select stu_profile.name as stu,office_staff.name as office,f_name,class.name as class,token_no,f_mobile,send_to,refer_to,genrate_token,inquiry_date from stu_profile join class on class_id=class.id left join office_staff on refer_to=office_staff.id  where stu_profile.id=$id");
$data=array_map('ucfirst',$data);
// print_r($data);

?>
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<link rel="stylesheet" type="text/css" href="<?php echo ROOT; ?>include/css/bootstrap.min.css">
	<style type="text/css">
		.box{
			border: 1px solid black;
			min-height: 300px;
			width: 40%;
			padding: 10px;
			margin: 0; 
		}
		.title{
			border-bottom: 1px solid black;
			height: 100px;
			font-size: 20px;
			padding: 5px;
			text-align: center;
		}
	</style>
</head>
<body>
	<div class="box">
		<div class="title">
			Synthesis Bikaner
		</div>
		<div class="detail">
			<table class="table">
				<tr>
					<td width="25%">Name</td>
					<td width="5%">:</td>
					<td width="50%;"><?php echo $data['stu']; ?></td>
				</tr>
				<tr>
					<td>Enquiry for class</td>
					<td>:</td>
					<td><?php echo $data['class']; ?></td>
				</tr>
				<tr>
					<td>Token No.</td>
					<td>:</td>
					<td><?php echo $data['token_no']; ?></td>
				</tr>
				<tr>
					<td>Mobile No.</td>
					<td>:</td>
					<td><?php echo $data['f_mobile'] ?></td>
				</tr>
				<tr>
					<td>Intrested In</td>
					<td>:</td>
					<td><?php echo $data['send_to'] ?></td>
				</tr>
				<tr>
					<td>Refer To</td>
					<td>:</td>
					<td><?php echo $data['office']; ?></td>
				</tr>
				<tr>
					<td>Enquired By</td>
					<td>:</td>
					<td>
						<?php 
						$login_name = loginFetchOne("select uname from login where id=$data[genrate_token]");
						echo $login_name['uname'];?>
					</td>
				</tr>
				<tr>
					<td>Date</td>
					<td>:</td>
					<td><?php echo $data['inquiry_date']; ?></td>
				</tr>

			</table>
		</div>
	</div>
</body>
</html>