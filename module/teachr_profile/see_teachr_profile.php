<?php   
    if(isset($_GET['id'])){
        delete('teacher_profile',$_GET['id']);
        ?>
            <script type="text/javascript">
                location.href=root_path+"index/teachr_profile/syn_s_profile/";
            </script>
        <?php
    }
?>
	<div class="col-lg-12 table-responsive">
    <form role="form" class="form-horizontal" enctype="multipart/form-data" method="post">
    		<table class="table table-bordered table-hover">
            	<tr class="active1 table_style" style="font-weight:600;">
                    <td width="200">Faculty ID <input type="text" id="eid" class="form-control" onkeyup="search()"  /></td>
                    <td>Search by Faculty Name <input type="text" id="ename" class="form-control" onkeyup="search()"  /></td>
                    
                    <td>Search by Designation <input type="text" id="edes" class="form-control" onkeyup="search()"  /></td>
                    <td>Search by Mobile No. <input type="text" id="emob" class="form-control" onkeyup="search()"  /></td>
                </tr>
            </table>
            	<table  class="table table-bordered table-hover">
            	<tr class="active1 table_style" style="font-weight:600; text-align:justify;">
                    <td>Total Employees in this Section : </td>
                    <td>See All Faculty</td>
                    <td>Select All <input type="checkbox" /></td>
                    <td>Delete All <img src="images/trash.png" /> </td>
                </tr>
            </table>
            <table id="show" class="table table-bordered table-hover">
                <tr>
                    <td colspan="14"><a href="<?php echo ROOT ?>module/teachr_profile/search_print.php" class="btn btn-primary">Print</a></td>
                </tr>
            	<tr class="active1 table_style" style="font-weight:600;">
                    <td width="50">Sr. No.</td>
                    <td width="80">Faculty ID</td>
                    <td width="200">Employee Name</td>
                    <td width="150">Designation</td>
                    <td width="100">Contact No.</td>
                    <td width="100">Photo</td>
                    <td width="100">Action</td>
                    <td width="100">Add Salary</td>
                    <td width="100">Salary List</td>
                </tr>
                <?php 

                    $url=ROOT."index/teachr_profile/syn_s_profile/";
                    $limit=1;
                    $frmdataget=$_REQUEST;
                    @PaginationWork(10); 
                    $totRslt=mysqli_fetch_assoc(mysqli_query($con,"select count(*) as tot from teacher_profile"));  
                    $teacher_data=fetchAll("select id,faculty_id,faculty_name,desiganation,mobile_self,upload_photo from teacher_profile limit  ".$frmdata['from'].", ".$frmdata['to']);
                    // echo "select id,faculty_id,faculty_name,desiganation,mobile_self,upload_photo from teacher_profile limit  ".$frmdata['from'].", ".$frmdata['to'];
                    $sno=1;
                    foreach ($teacher_data as $teacher_value) {
                ?>
                <tr class="primary1 table_style2">
                    <td><?php echo $sno++; ?></td>
                    <td><?php echo $teacher_value['faculty_id'] ?></td>
                    <td><?php echo $teacher_value['faculty_name'] ?></td>
                    <td><?php echo $teacher_value['desiganation'] ?></td>
                    <td><?php echo $teacher_value['mobile_self'] ?></td>
                    <td><?php  
                        if($teacher_value['upload_photo'] && file_exists($teacher_value['upload_photo'])){ ?>
                        <img src="<?php echo ROOT ?><?php echo $teacher_value['upload_photo']; ?>" height="30" width="30" />
                        <?php }else{echo "N/A";} ?>
                    </td>
                    <td><a href="<?php echo ROOT; ?>index/teachr_profile/syn_a_profile/<?php echo $teacher_value['id']; ?>" title="Edit Profile"><img src="<?php echo ROOT ?>include/images/profile_edit.png" height="20" width="20" /></a> | <a href="#" title="Delete Profile" onclick="del(<?php echo $teacher_value['id']; ?>)"><img src="<?php echo ROOT ?>include/images/trash.png" height="20" width="20" /></a> | <input type="checkbox" /></td>
                    <td><a href="<?php echo ROOT; ?>index/salary/syn_a_salary/<?php echo $teacher_value['faculty_id']; ?>">Add Salary</a></td>
                    <td><a href="<?php echo ROOT; ?>index/salary/syn_salary_list/uid=<?php echo $teacher_value['faculty_id']; ?>">Salary List</a></td>
                </tr>
                <?php } ?>
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
                location.href=root_path+"index/teachr_profile/syn_s_profile/"+did;
            }
          }
      </script>
      <script type="text/javascript">
          function search(){
            var eid = $('#eid').val();
            var ename = $('#ename').val();
            var edes = $('#edes').val();
            var emob = $('#emob').val();
            $.ajax({
                url:root_path+"module/teachr_profile/search.php",
                data:"eid="+eid+"&ename="+ename+"&edes="+edes+"&emob="+emob,
                type:"post",
                success:function(e){
                    $('#show').html(e);
                },error:function(e){
                    alert(e);
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