<?php 
	if(isset($_GET['id'])){
		$id=$_GET['id'];
		loginDelete('login',$id);
		?>
		<script type="text/javascript">
			location.href=root_path+"index/users/syn_s_users";
		</script>
		<?php
	}
?>
<table class="table table-bordered">
	<tr>
		<th>S.No.</th>
		<th>Name</th>
		<th>Department</th>
		<th>Action</th>
	</tr>
	<?php
	$sno=1; 
		$users=loginFetchAll("select id,uname,dept from login");
		foreach ($users as  $user) {
			$user['dept']=ucfirst($user['dept']);
			if($user['dept']=='Masteradmin'){
				$user['dept']="Master Admin";
			}
			elseif($user['dept']=='Inquiry'){
				$user['dept']='Enquiry';
			}
			elseif($user['dept']=='Recption'){
				$user['dept']='Reception';
			}elseif($user['dept']=='icard'){
				$user['dept']='other';
			}
	?>
	<tr>
		<td><?php echo $sno++; ?></td>
		<td><?php echo $user['uname'] ?></td>
		<td><?php echo $user['dept'] ?></td>
		<td><a href="<?php echo ROOT; ?>index/users/syn_a_users/<?php echo $user['id']; ?>" title="Edit Fee"><img src="<?php echo ROOT; ?>include/images/profile_edit.png" height="20" width="20" /></a> | <a href="#" onclick="del(<?php echo $user['id'];?>)" title="Delete Fee"><img src="<?php echo ROOT; ?>include/images/trash.png" height="20" width="20" /></a>  </td>
	</tr>
	<?php } ?>
</table>

      <script type="text/javascript">
          function del(did){
            if(confirm("Do you really want to delete")){
                location.href=root_path+"index/users/syn_s_users/"+did;
            }
          }
          
      </script>