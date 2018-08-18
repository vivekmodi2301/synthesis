	<?php 
    if(isset($_GET['id'])){
        delete('batch',$_GET['id']);
        ?>
            <script type="text/javascript">
                location.href=root_path+"index/class/syn_s_batch/";
            </script>
        <?php
    }
?>
    <div class="col-lg-12 table-responsive" style="margin-left:10px; font-family:'Century Gothic';">
    
                <table class="table table-bordered table-hover">
            	<tr class="active1 table_style" style="font-weight:600;">
                    <td width="100">Sr. No.</td>
                    <td width="300">Class Name</td>
                    <td width="300">Batch Name</td>
                    <td width="200" colspan="2">Action</td>
                </tr>
                <?php 
                    $sno=1;
                    $batch_data=fetchAll("select batch.id,batch.name as batch,class.name as class from batch join class on class_id=class.id");
                    foreach ($batch_data as $batch_value) {
                ?>
                        <tr class="primary1 table_style2">
                            <td><?php echo $sno++; ?></td>
                            <td><?php echo $batch_value['batch'] ?></td>
                            <td><?php echo $batch_value['class']; ?></td>
                            <td><a href="<?php echo ROOT; ?>index/class/syn_e_batch/<?php echo $batch_value['id']; ?>" title="Edit Class"><img src="<?php echo ROOT; ?>include/images/profile_edit.png" height="20" width="20" /></a> | <a href="#" onclick="del(<?php echo $batch_value['id'];?>)" title="Delete Class"><img src="<?php echo ROOT; ?>include/images/trash.png" height="20" width="20" /></a></td>
                        </tr>
                    <?php }?>
            </table>
           
      </div>

      <script type="text/javascript">
          function del(did){
            if(confirm("Do you really want to delete")){
                location.href=root_path+"index/class/syn_s_batch/"+did;
            }
          }
      </script>