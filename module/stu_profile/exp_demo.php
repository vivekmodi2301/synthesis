<?php 
    $id="";
?>
	<div class="col-lg-12 table-responsive">
    
            <table class="table table-bordered table-hover">
              <tr class="active1 table_style" style="font-weight:600; text-align:justify;">
                    <td>Total Students in this Section : </td>
                    <td>See All Students<span id="tot_stu"></span></td>
                    <td>Select All <input type="checkbox" id="selectAll"  /></td>
                    <td><a href="#" onclick="printPage()">Print I-card</a></td>
                </tr>
            </table>
                <table id="show" class="table table-bordered table-hover">
            	<tr class="active1 table_style" style="font-weight:600;">
                    <td width="50">Sr. No.</td>
                    <td width="80">Roll No.</td>
                    <td width="200">Student Name</td>
                    <td width="150">Father Name</td>
                    <td width="100">Class</td>
                    <td width="100">Batch</td>
                    <td width="100">Photo</td>
                    <td width="150">Token by</td>
                    <td width="150">Admmission by</td>
                    <td width="200">Action</td>
                </tr>
                <?php

                    $url=ROOT."index/stu_profile/syn_see_stu_profile/";
                    $limit=1;
                    $frmdataget=$_REQUEST;
                    @PaginationWork(10); 
                    $totRslt=mysqli_fetch_assoc(mysqli_query($con,"select count(*) as tot from stu_profile join class on class_id=class.id join batch on batch_id=batch.id where wheree='demo' and to_date<='$curr_date'"));
                    ?>
                    <script type="text/javascript">
                    $('#tot_stu').html('<?php echo $totRslt[tot] ?>')
                    </script>
                    <?php
                    $curr_date=date('Y-m-d');
                    $student_dtl=fetchAll("select stu_profile.id,stu_profile.name,roll_no,f_name,m_name,class.name as class,batch.name as batch,propic,genrate_token,admission from stu_profile join class on class_id=class.id join batch on batch_id=batch.id where wheree='demo' and to_date<'$curr_date' limit ".$frmdata['from'].", ".$frmdata['to']);
                    // echo "select stu_profile.id,stu_profile.name,roll_no,f_name,m_name,class.name as class,batch.name as batch,propic,genrate_token,admission from stu_profile join class on class_id=class.id join batch on batch_id=batch.id where wheree='demo' and to_date<='$curr_date' limit ".$frmdata['from'].", ".$frmdata['to'];
                    $sno=1;
                    if(!empty($student_dtl)){
                        foreach ($student_dtl as  $student_dtl_value) {
                            extract($student_dtl_value);
                            $genrate_token=loginFetchOne("select uname from login where id=$genrate_token");
                            $addmission=loginFetchOne("select uname from login where id=$admission");
                    ?>
                    <tr class="primary1 table_style2">
                        <td><?php echo $sno++; ?></td>
                        <td><?php echo $roll_no; ?></td>
                        <td><?php echo $name ?></td>
                        <td><?php echo $f_name ?></td>
                        <td><?php echo $class ?></td>
                        <td><?php echo $batch ?></td>
                        <td>
                        <?php 
                        $path=ROOT.$propic;
                        if($propic){
                        ?>
                            <img src="<?php echo ROOT.$propic; ?>" alt="N/A" height="30" width="30" />
                            <?php }else{echo "N/A";}?>
                        </td>
                        <td><?php echo $genrate_token['uname'] ?></td>
                        <td><?php echo $addmission['uname'] ?></td>
                        <td><a href="<?php echo ROOT; ?>index/stu_profile/syn_e_studnt/<?php echo $id; ?>" title="Edit Profile"><img src="<?php echo ROOT; ?>include/images/profile_edit.png" height="20" width="20" /></a> | <a href="#" onclick="del('<?php echo $id; ?>')" title="Delete Profile"><img src="<?php echo ROOT; ?>include/images/trash.png" height="20" width="20" /></a> | <input type="checkbox" class="chk" /></td>
                    </tr>
                    <?php } ?>

                    <tr>
                            <td colspan="20">
                                <?php PaginationDisplay($totRslt['tot'],$url.'page=','','10','View More Photos');?>
                            </td>
                    </tr>
                <?php }else{echo "<tr><td colspan='10'>No data founds</td></tr>";} ?>
            </table>
                            
    </form>
      </div>
      <script type="text/javascript">
          $('#selectAll').on('change', function() {
            $('.chk:checkbox').prop('checked', $(this).is(":checked"));
        });
      </script>
    <script type="text/javascript">
        function del(did){
            if(confirm("Do you really want to delete")){
                location.href=root_path+"index/stu_profile/syn_del_stu/"+did;
            }
        }
    </script>
      <script type="text/javascript">
          function search(){
            //now lets fetch value of every input here
            // alert($('#pg').html());
            var roll=$('#roll').val();
            if($('#pg_name').val()){
                var pg=$('#pg_name').val();
            }
            // ctrl+shift+d
            var stu_name=$('#stu_name').val();
            var stu_f_name=$('#stu_f_name').val();
            var stu_class=$('#stu_class').val();
            var stu_batch=$('#stu_batch').val();
            var liveat=$('#liveat').val();
            $.ajax({
                url:root_path+"module/stu_profile/search.php",
                data:"roll="+roll+"&stu_name="+stu_name+"&stu_f_name="+stu_f_name+"&stu_class="+stu_class+"&stu_batch="+stu_batch+"&pg="+pg+"&liveat="+liveat,
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
    function show_batch(class_id,batch_id){
        if(class_id){
            $.ajax({
                url:root_path+"module/fee_dtl/show_batch.php",
                data:"class_id="+class_id+"&batch_id="+batch_id,
                type:"post",
                success:function(e){
                    $('#stu_batch').html(e);
                    $('#stu_batch').removeAttr('disabled');
                    search();
                }
            });
        }else{
            $('#stu_batch').attr('disabled','disabled');
            $('#stu_batch').html("<option value=''>Select Class First</option>");
            search();
        }
    }
    function show_pg(liveat){
        if(liveat){
            $.ajax({
                url:root_path+"module/stu_profile/pg_name.php",
                data:"liveat="+liveat,
                type:"post",
                success:function(e){
                    $('#pg').html(e);
                    search();
                }
            });
        }else{
            $('#pg').html('');
        }
    }
    </script>