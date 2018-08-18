	<?php 
    if(isset($_GET['id'])){
        delete('office_staff',$_GET['id']);
        ?>
            <script type="text/javascript">
                location.href=root_path+"index/office_staff/syn_s_office/";
            </script>
        <?php
    }
?>
    <div class="col-lg-12 table-responsive" style="margin-left:10px; font-family:'Century Gothic';">
    
                <table class="table table-bordered table-hover">
            	<tr class="active1 table_style" style="font-weight:600;">
                    <td width="100">Sr. No.</td>
                    <td width="300">Name</td>
                    <td width="250">Department</td>
                    <td width="200">Mobile No.</td>
                    <td width="200">Action</td>
                </tr>
                <?php 
                    $sno=1;
                    $ofc_data=fetchAll("select id,name,department,mobile_no from office_staff");
                    foreach ($ofc_data as $ofc_value) {
                ?>
                        <tr class="primary1 table_style2">
                            <td><?php echo $sno++; ?></td>
                            <td><?php echo $ofc_value['name'] ?></td>
                            <td><?php echo $ofc_value['department']; ?></td>
                            <td><?php echo $ofc_value['mobile_no']; ?></td>
                            <td><a href="<?php echo ROOT; ?>index/office_staff/syn_e_office/<?php echo $ofc_value['id']; ?>"><img src="<?php echo ROOT; ?>include/images/profile_edit.png" height="20" width="20" /></a> | <a href="#" onclick="del(<?php echo $ofc_value['id'];?>)"><img src="<?php echo ROOT; ?>include/images/trash.png" height="20" width="20" /></a></td>
                        </tr>
                    <?php }?>
            </table>
           
      </div>

      <script type="text/javascript">
          function del(did){
            if(confirm("Do you really want to delete")){
                location.href=root_path+"index/office_staff/syn_s_office/"+did;
            }
          }
      </script>