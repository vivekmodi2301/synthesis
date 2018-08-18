<?php 
    if(isset($_GET['id'])){
        delete('class',$_GET['id']);
        ?>
            <script type="text/javascript">
                location.href=root_path+"index/class/syn_s_class/";
            </script>
        <?php
    }
?>
<div class="col-lg-12 table-responsive">
        <table class="table table-bordered table-hover">
    	    <tr class="active1 table_style" style="font-weight:600;">
                <td width="100">Sr. No.</td>
                <td width="400">Class Name</td>
                <td width="200" colspan="2">Action</td>
            </tr>
        <?php
            $sno=1; 
            $data=fetchAll("select id,name from class");
            foreach ($data as $value) 
            {
            
        ?>
                <tr class="primary1 table_style2">
                    <td><?php echo $sno++; ?></td>
                    <td><?php echo $value['name'];?></td>
                    <td><a href="<?php echo ROOT; ?>index/class/syn_e_class/<?php echo $value['id']; ?>" title="Edit Class"><img src="<?php echo ROOT; ?>include/images/profile_edit.png" height="20" width="20" /></a> | <a href="#" onclick="del(<?php echo $value['id'];?>)" title="Delete Class"><img src="<?php echo ROOT; ?>include/images/trash.png" height="20" width="20" /></a></td>
                </tr>
        <?php
            }
        ?>
    </table>
      </div>
      <script type="text/javascript">
          function del(did){
            if(confirm("Do you really want to delete")){
                location.href=root_path+"index/class/syn_s_class/"+did;
            }
          }
      </script>