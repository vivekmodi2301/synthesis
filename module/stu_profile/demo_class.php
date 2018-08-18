<?php 
    $id="";
?>
	<div class="col-lg-12 table-responsive">
            <table class="table table-bordered table-hover">
                <tr class="active1 table_style" style="font-weight:600;">
                    <td width="100">Roll No./ Token No. <input type="text" onkeyup ="search()" id="roll" class="form-control" /></td>
                    <td>Search by Student Name <input type="text" onkeyup="search()" id="stu_name" class="form-control" /></td>
                    <td>Search by Father's Name <input type="text" onkeyup="search()" id="stu_f_name" class="form-control" /></td>
                    <td>Select Class                     <select onchange="show_batch(this.value,'')"  class="form-control"  id="stu_class" name="class_id">
                        <option value="">Please Select Class</option>
                        <?php 
                            $class_data=fetchAll("select id,name from class");
                            foreach ($class_data as $class_value) {
                        ?>
                                <option <?php if((isset($_POST['class_id']) && $_POST['class_id']==$class_value['id']) || ($id && $class_fee_dtl['class_id']==$class_value['id'])){echo "selected";} ?> value="<?php echo $class_value['id']; ?>"><?php echo $class_value['name'] ?></option>
                            <?php }?>
                    </select>
                    </td>
                    <td>Select Batch 
                        <select class="form-control" disabled onchange="search()" id="stu_batch"  name="batch">
                        <option value="">Select Class First</option>
                        </select>
                    </td>
                    <td>
                        Select live at
                        <select id="liveat" onchange="show_pg(this.value)">
                            <option value="">Live at</option>
                            <option value="provided">Provided PG</option>
                            <option value="self">Self House</option>
                            <option value="pg">Other PG</option>
                        </select>
                    </td>
                    <td  id="pg">
                    </td>
                </tr>
            </table>
            <table class="table table-bordered table-hover">
            <tr class="active1 table_style" style="font-weight:600;">
                <td width="100">Inquiry Date From: <input type="date" onchange="search()" id="i_from" class="form-control" />
                </td>
                <td>
                    To: <input type="date" onchange="search()" id="i_to" class="form-control" />
                </td>
                <td>Demo From Date <input type="date" onchange="search()" id="d_from" class="form-control"></td>
                <td>Demo To Date <input type="date" onchange="search()" id="d_to" class="form-control"></td>
                <td>Registration From Date <input type="date" onchange="search()" id="r_from" class="form-control"></td>
                <td>Registration To Date <input type="date" onchange="search()" id="r_to" class="form-control"></td>
                
            </tr>
        </table>
            <table class="table table-bordered table-hover">
              <tr class="active1 table_style" style="font-weight:600; text-align:justify;">
                    <td>Total Students in this Section : <span id="tot_stu" class="profile_chng_color"></span></td>
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
                    <td width="150">Registered by</td>
                    <td width="200">Action</td>
                    <td width="200">Inquiry Date</td>
                    <td width="200">Registered Date</td>
                    <td width="200">Demo From - To Date</td>
                </tr>
                <?php

                    $url=ROOT."index/stu_profile/syn_see_stu_profile/";
                    $limit=1;
                    $frmdataget=$_REQUEST;
                    @PaginationWork(10); 
                    
                    $curr_date=date('Y-m-d');
                    $totRslt=mysqli_fetch_assoc(mysqli_query($con,"select count(*) as tot from stu_profile join class on class_id=class.id join batch on batch_id=batch.id where wheree='demo' and to_date>='$curr_date'"));
                    ?>
                    <script type="text/javascript">
                    $('#tot_stu').html('<?php echo $totRslt[tot] ?>')
                    </script>
                    <?php
                    $student_dtl=fetchAll("select stu_profile.id,stu_profile.name,roll_no,f_name,m_name,class.name as class,batch.name as batch,propic,genrate_token,admission,from_date,to_date,inquiry_date,registration_by,registration_date from stu_profile join class on class_id=class.id join batch on batch_id=batch.id where wheree='demo' and to_date>='$curr_date' limit ".$frmdata['from'].", ".$frmdata['to']);
                    // echo "select stu_profile.id,stu_profile.name,roll_no,f_name,m_name,class.name as class,batch.name as batch,propic,genrate_token,admission from stu_profile join class on class_id=class.id join batch on batch_id=batch.id where wheree='demo' and to_date<='$curr_date' limit ".$frmdata['from'].", ".$frmdata['to'];
                    $sno=1;
                    if(isset($_GET['pageNumber']) && $_GET['pageNumber']>1){
                        $sno = (($_GET['pageNumber']-1)*10)+1;
                    }
                    if($totRslt['tot']==0){
                        echo "<tr><td colspan='16'>No data found</td></tr>";
                    }else{
                        foreach ($student_dtl as  $student_dtl_value) {
                            extract($student_dtl_value);
                            $genrate_token=loginFetchOne("select uname from login where id=$genrate_token");
                            $register=loginFetchOne("select uname from login where id=$registration_by");
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
                        <td><?php echo $register['uname'] ?></td>
                        <td><a href="<?php echo ROOT; ?>index/stu_profile/syn_e_studnt/<?php echo $id; ?>" title="Edit Profile"><img src="<?php echo ROOT; ?>include/images/profile_edit.png" height="20" width="20" /></a> | <a href="#" onclick="del('<?php echo $id; ?>')" title="Delete Profile"><img src="<?php echo ROOT; ?>include/images/trash.png" height="20" width="20" /></a> | <input type="checkbox" class="chk" /></td>

                        <td><?php echo $inquiry_date; ?></td>
                        <td><?php echo $registration_date; ?></td>
                        <td><?php echo $from_date." - ".$to_date; ?></td>
                    </tr>
                    <?php } ?>
                <?php } ?>

                <tr>
                        <td colspan="20">
                            <?php PaginationDisplay($totRslt['tot'],$url.'page=','','10','View More Photos');?>
                        </td>
                </tr>
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

            var i_from=$('#i_from').val();
            var i_to=$('#i_to').val();
            var d_from=$('#d_from').val();
            var d_to=$('#d_to').val();
            var r_from=$('#r_from').val();
            var r_to=$('#r_to').val();
            $.ajax({
                url:root_path+"module/stu_profile/demo_search.php",
                data:"roll="+roll+"&stu_name="+stu_name+"&stu_f_name="+stu_f_name+"&stu_class="+stu_class+"&stu_batch="+stu_batch+"&pg="+pg+"&liveat="+liveat+"&i_from="+i_from+"&i_to="+i_to+"&d_to="+d_to+"&d_from="+d_from+"&r_to="+r_to+"&r_from="+r_from,
                type:"post",
                success:function(e){
                    $('#show').html(e);
                    console.log(e);
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