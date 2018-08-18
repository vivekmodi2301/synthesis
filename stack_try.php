<?php 
	$con=mysql_connect('localhost','root','');
	mysql_select_db('try');
	mysql_query("insert into users set name='vivek'");
?>