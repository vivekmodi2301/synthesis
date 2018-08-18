	<?php 
    if(isset($_GET['id'])){
        delete('scholarship',$_GET['id']);
        ?>
            <script type="text/javascript">
                location.href=root_path+"index/scholar/syn_s_reson/";
            </script>
        <?php
    }
?>
    <div class="col-lg-12 table-responsive" style="margin-left:10px; font-family:'Century Gothic';">
    
                <table class="table table-bordered table-hover">
            	<tr class="active1 table_style" style="font-weight:600;">
                    <td width="100">Sr. No.</td>
                    <td width="300">Scholar Reason</td>
                    <td width="250">Scholar Sub Reason</td>
                    <td width="200">Action</td>
                </tr>
                <?php 
                    $sno=1;
                    $sch_data=fetchAll("select id,scholar_reason,scholar_subreason from scholarship");
                    foreach ($sch_data as $sch_value) {
                ?>
                        <tr class="primary1 table_style2">
                            <td><?php echo $sno++; ?></td>
                            <td><?php echo $sch_value['scholar_reason'] ?></td>
                            <td><?php echo $sch_value['scholar_subreason']; ?></td>
                            <td><a href="<?php echo ROOT; ?>index/scholar/syn_e_reson/<?php echo $sch_value['id']; ?>"><img src="<?php echo ROOT; ?>include/images/profile_edit.png" height="20" width="20" /></a> | <a href="#" onclick="del(<?php echo $sch_value['id'];?>)"><img src="<?php echo ROOT; ?>include/images/trash.png" height="20" width="20" /></a></td>
                        </tr>
                    <?php }?>
            </table>
           
      </div>

      <script type="text/javascript">
          function del(did){
            if(confirm("Do you really want to delete")){
                location.href=root_path+"index/scholar/syn_s_reson/"+did;
            }
          }
      </script>