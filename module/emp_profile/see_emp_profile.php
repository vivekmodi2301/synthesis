<?php   
    if(isset($_GET['id'])){
        delete('employee_profile',$_GET['id']);
        ?>
            <script type="text/javascript">
                location.href=root_path+"index/emp_profile/syn_s_employee/";
            </script>
        <?php
    }
?>
	<div class="col-lg-12 table-responsive">
    <form role="form" class="form-horizontal" enctype="multipart/form-data" method="post">
	<table class="table table-bordered table-hover">
    	<tr class="active1 table_style" style="font-weight:600;">
            <td width="200">Employee ID <input type="text" class="form-control" onkeyup="search()" id="emp_id" /></td>
            <td>Search by Employee Name <input type="text" class="form-control" onkeyup="search()" id="emp_name" /></td>
            <td>Search by Designation <input type="text" class="form-control" onkeyup="search()" id="emp_designation" /></td>
            <td>Search by Mobile No. <input type="text" class="form-control" onkeyup="search()" id="emp_mob" /></td>
        </tr>
    </table>
	<table class="table table-bordered table-hover">
    	<tr class="active1 table_style" style="font-weight:600; text-align:justify;">
            <td>Total Employees in this Section : </td>
            <td>See All Employees</td>
            <td>Select All <input type="checkbox" /></td>
            <td>Delete All <img src="images/trash.png" /> </td>
        </tr>
    </table>
    <table id="show" class="table table-bordered table-hover">
        <tr>
            <td colspan="14"><a href="<?php echo ROOT ?>module/emp_profile/search_print.php" class="btn btn-primary">Print</a></td>
        </tr>
    	<tr class="active1 table_style" style="font-weight:600;">
            <td width="50">Sr. No.</td>
            <td width="80">Employee ID</td>
            <td width="200">Employee Name</td>
            <td width="150">Designation</td>
            <td width="100">Contact No.</td>
            <td width="100">Photo</td>
            <td width="100">Action</td>
            <td width="100">Add Salary</td>
            <td width="100">Salary List</td>
        </tr>
        <?php
            $url=ROOT."index/emp_profile/syn_s_employee/";
            $limit=1;
            $frmdataget=$_REQUEST;
            @PaginationWork(10); 
            $totRslt=mysqli_fetch_assoc(mysqli_query($con,"select count(*) as tot from employee_profile"));  
            $sno=1;
            $emp_data=fetchAll("select id,emp_id,emp_name,degination,self_mobile,upload_photo from employee_profile limit ".$frmdata['from'].", ".$frmdata['to']);
            foreach ($emp_data as  $emp_value) {
        ?>
        <tr class="primary1 table_style2">
            <td><?php   echo $sno++; ?></td>
            <td><?php   echo $emp_value['emp_id']; ?></td>
            <td><?php   echo $emp_value['emp_name']; ?></td>
            <td><?php   echo $emp_value['degination']; ?></td>
            <td><?php   echo $emp_value['self_mobile']; ?></td>
            <td>
                <?php   if($emp_value['upload_photo'] && file_exists("$emp_value[upload_photo]")){ ?>
                <img src="<?php echo ROOT; ?><?php echo $emp_value['upload_photo'];  ?>" height="30" width="30" />
                <?php  } else { echo "N/A"; } ?>
            </td>
            <td><a href="<?php  echo ROOT; ?>index/emp_profile/syn_a_employee/<?php    echo $emp_value['id']; ?>" title="Edit Profile"><img src="<?php echo ROOT; ?>include/images/profile_edit.png" height="20" width="20" /></a> | <a href="#" title="Delete Profile" onclick="del(<?php  echo $emp_value['id']; ?>)"><img src="<?php echo ROOT; ?>include/images/trash.png" height="20" width="20" /></a> | <input type="checkbox" /></td>
            <td><a href="<?php echo ROOT; ?>index/salary/syn_a_salary/<?php echo $emp_value['emp_id']; ?>">Add Salary</a></td>
            <td><a href="<?php echo ROOT; ?>index/salary/syn_salary_list/uid=<?php echo $emp_value['emp_id']; ?>">Salary List</a></td>
        </tr>
        <?php   } ?>
        <tr>
            <td colspan="20">
                <?php PaginationDisplay($totRslt['tot'],$url.'page=','',10,'View More Photos');?>
            </td>
        </tr>
    </table>
                            
    </form>
      </div>
      <script type="text/javascript">
          function del(did){
            if(confirm("Do you really want to delete")){
                location.href=root_path+"index/emp_profile/syn_s_employee/"+did;
            }
          }
      </script>
      <script type="text/javascript">
          function search(){
            var eid = $('#emp_id').val();
            var ename = $('#emp_name').val();
            var edes = $('#emp_designation').val();
            var emob = $('#emp_mob').val();
            $.ajax({
                url:root_path+"module/emp_profile/search.php",
                data:"eid="+eid+"&ename="+ename+"&edes="+edes+"&emob="+emob,
                type:"post",
                success:function(e){
                    $('#show').html(e);
                }
            })
          }
      </script>
      <script type="text/javascript">
        function showpage(where,page){
            // alert(where+page);
            $.ajax({
                url:root_path+'module/emp_profile/search.php',
                data:"where="+where+"&pageNumber="+page,
                type:'post',
                success:function(e){
                    $('#show').html(e);

                },error:function(e){
                    alert(e);
                }
            });
        }
    </script>