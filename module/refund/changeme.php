<?php
	$phpfiles=glob("../../include/php/*.php");
	foreach ($phpfiles as  $phpfile) {
		include_once($phpfile);
	}
	$id=$_POST['roll'];
	$roll=fetchOne("select roll_no,last_where from stu_profile where id=$id");
	echo "<tr><td>select roll_no,last_where from stu_profile where id=$id</td></tr>";
	$change_where=array('wheree'=>$roll['last_where']);
	addUpdate('stu_profile',$change_where,$id);
	mysqli_query($con,"delete from fee where roll=$roll[roll_no] and refund='y'");
	mysqli_query($con,"update pdc set refund='n' where roll=$roll[roll_no]");
?>
