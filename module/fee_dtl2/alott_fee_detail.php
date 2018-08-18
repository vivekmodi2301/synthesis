	<?php 
    if(isset($_GET['id'])){
        delete('class_fee_dtl',$_GET['id']);
        ?>
            <script type="text/javascript">
                location.href=root_path+"index/fee_dtl/syn_al_fee_list/";
            </script>
        <?php
    }
?>
    <div class="col-lg-12 table-responsive" style="margin-left:10px; font-family:'Century Gothic';">
    
                <table class="table table-bordered table-hover">
            	<tr class="active1 table_style" style="font-weight:600;">
                    <td width="100">Sr. No.</td>
                    <td width="300">Class Name</td>
                    <td width="300">Registration Fees</td>
                    <td width="300">Tution Fees</td>
                    <td width="300">Test Series Fees</td>
                    <td width="300">Study Material Fees</td>
                    <td width="300">GST %</td>
                    <td width="300">GST Value</td>
                    <td width="300">Total Fee</td>
                    <td width="200" colspan="2">Action</td>
                </tr>
                <?php 
                    $sno=1;
                    $class_fee_data=fetchAll("select class.name as class,class_fee_dtl.id,reg_fee,tution_fee,test_series_fees,study_matirial_fee,gst_per,gst_value,total_fee from class_fee_dtl join class on class_id=class.id ");
                    foreach ($class_fee_data as $class_fee_value) {
                ?>
                        <tr class="primary1 table_style2">
                            <td><?php echo $sno++; ?></td>
                            <td><?php echo $class_fee_value['class']; ?></td>
                            <td><?php echo $class_fee_value['reg_fee'] ?></td>
                            <td><?php echo $class_fee_value['tution_fee']; ?></td>
                            <td><?php echo $class_fee_value['test_series_fees'] ?></td>
                            <td><?php echo $class_fee_value['study_matirial_fee']; ?></td>
                            <td><?php echo $class_fee_value['gst_per'] ?></td>
                            <td><?php echo $class_fee_value['gst_value']; ?></td>
                            <td><?php echo $class_fee_value['total_fee'] ?></td>
                            <td><a href="<?php echo ROOT; ?>index/fee_dtl/syn_al_fee/<?php echo $class_fee_value['id']; ?>" title="Edit Class"><img src="<?php echo ROOT; ?>include/images/profile_edit.png" height="20" width="20" /></a> | <a href="#" onclick="del(<?php echo $class_fee_value['id'];?>)" title="Delete Class"><img src="<?php echo ROOT; ?>include/images/trash.png" height="20" width="20" /></a></td>
                        </tr>
                    <?php }?>
            </table>
           
      </div>

      <script type="text/javascript">
          function del(did){
            if(confirm("Do you really want to delete")){
                location.href=root_path+"index/fee_dtl/syn_al_fee_list/"+did;
            }
          }
      </script>