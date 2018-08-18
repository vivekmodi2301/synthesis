<?php   
    if(isset($_GET['id'])){
        // echo "hi";exit;
        delete('vec',$_GET['id']);
        ?>
            <script type="text/javascript">
                location.href=root_path+"index/vehicl_profile/syn_see/";
            </script>
        <?php
    }
?>
	<div class="col-lg-12 table-responsive">
    <form role="form" class="form-horizontal" enctype="multipart/form-data" method="post">
    			<table class="table table-bordered table-hover">
            	<tr class="active1 table_style" style="font-weight:600;">
                    <td width="200">Driver ID <input type="text" onkeyup="search()" id="id" class="form-control" /></td>
                    <td>Search by Driver Name <input type="text" class="form-control" onkeyup="search()" id="name" /></td>
                    <td>Search by Designation <input type="text" class="form-control" onkeyup="search()" id="des" /></td>
                    <td>Search by Mobile No. <input type="text" class="form-control" onkeyup="search()" id="mobile" /></td>
                </tr>
            </table>
            <table class="table table-bordered table-hover">

            	<tr class="active1 table_style" style="font-weight:600; text-align:justify;">
                    <td>Total Drivers in this Section :<span id="tot_stu"></span> </td>
                    <td>See All Drivers</td>
                    <td>Select All <input type="checkbox" /></td>
                    <td>Delete All <img src="images/trash.png" /> </td>
                </tr>
            </table>
            <table id="show" class="table table-bordered table-hover">
                <tr>
                    <td colspan="12"><a href="<?php echo ROOT ?>module/vehicl_profile/search_print.php" class="btn btn-primary">Print</a></td>
                </tr>
            	<tr class="active1 table_style" style="font-weight:600;">
                    <td width="50">Sr. No.</td>
                    <td width="80">Driver ID</td>
                    <td width="200">Driver Name</td>
                    <td width="150">Designation</td>
                    <td width="100">Contact No.</td>
                    <td width="100">Photo</td>
                    <td width="100" colspan="3">Action</td>
                </tr>
                <?php
                $url=ROOT."index/vehicl_profile/syn_see/";
                $limit=1;
                $frmdataget=$_REQUEST;
                @PaginationWork(10); 
                $totRslt=mysqli_fetch_assoc(mysqli_query($con,"select count(*) as tot from vec"));
                ?>
                <script type="text/javascript">
                    $('#tot_stu').html('<?php echo $totRslt['tot']; ?>')
                </script>
                <?php 
                $sno=1; 
                $vec_data=fetchAll("select id,name,driver_id,f_name,mobile,upload_photo,designation from vec limit ".$frmdata['from'].", ".$frmdata['to']);
                // print_r($vec_data);
                foreach ($vec_data as  $vec_value) {
                ?>
                    <tr class="primary1 table_style2">
                        <td><?php echo $sno++; ?></td>
                        <td><?php echo $vec_value['driver_id']; ?></td>
                        <td><?php echo $vec_value['name']; ?></td>
                        <td><?php echo $vec_value['designation']; ?></td>
                        <td><?php echo $vec_value['mobile']; ?></td>
                        <td>
                            <?php if(file_exists($vec_value['upload_photo'])){ ?>
                            <img src="<?php echo ROOT.$vec_value['upload_photo']; ?>" height="30" width="30" />
                            <?php }else{
                                echo "N/A";
                            } ?>
                        </td>
                        <td><a href="<?php echo ROOT ?>index/vehicl_profile/syn_add/<?php echo $vec_value['id']; ?>" title="Edit Profile"><img src="<?php echo ROOT ?>include/images/profile_edit.png" height="20" width="20" /></a> | <a href="#" title="Delete Profile" onclick="del(<?php echo $vec_value['id']; ?>)"><img src="<?php echo ROOT ?>include/images/trash.png" height="20" width="20" /></a> | <input type="checkbox" /></td>
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
            // alert(did);
            if(confirm("Do you really want to delete")){
                location.href=root_path+"index/vehicl_profile/syn_see/"+did;
            }
          }
      </script>
      <script type="text/javascript">
          function search(){
            var id=$('#id').val();
            // ctrl+shift+d
            var name=$('#name').val();
            var des=$('#des').val();
            var mobile=$('#mobile').val();
            
            $.ajax({
                url:root_path+"module/vehicl_profile/search.php",
                data:"id="+id+"&name="+name+"&des="+des+"&mobile="+mobile,
                type:"post",
                success:function(e){
                    $('#show').html(e);
                },error:function(e){
                    alert(e);
                }
            });
          }
      </script>

      <script type="text/javascript">
        function showpage(where,page){
            // alert(where+page);
            $.ajax({
                url:root_path+'module/vehicl_profile/search.php',
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