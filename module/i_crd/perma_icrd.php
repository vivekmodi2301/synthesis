<?php 
    $id="";
?>

  <div class="col-lg-12 table-responsive">
    <form role="form" class="form-horizontal" enctype="multipart/form-data" method="post">
          <table class="table table-bordered table-hover">
              <tr class="active1 table_style" style="font-weight:600;">
                    <td width="100">Roll No./ Token No. <input type="text" onkeyup ="search()" id="roll" class="form-control" /></td>
                    <td>Search by Student Name <input type="text" onkeyup="search()" id="stu_name" class="form-control" /></td>
                    <td>Search by Father's Name <input type="text" onkeyup="search()" id="stu_f_name" class="form-control" /></td>
                    <td>Select Class<select onchange="show_batch(this.value,'')"  class="form-control"  id="stu_class" name="class_id">
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
                    No. of data
                    <select class="form-control" id="data" onchange="search()">
                        <option>10</option>
                        <option>20</option>
                        <option>30</option>
                        <option>50</option>
                        <option>60</option>
                        <option>70</option>
                        <option>80</option>
                        <option>90</option>
                        <option>100</option>
                    </select>
                </td>
                </tr>
            </table>
            <p class="profile_chng_color">You are here at : Permanent I-Card Details</p>
            <table class="table table-bordered table-hover">
              <tr class="active1 table_style" style="font-weight:600; text-align:justify;">
                    <td>Total Students in this Section : <span id="tot_stu"></span></td>
                    <td>See All Students<span id="tot_stu"></span></td>
                    <td>Select All <input type="checkbox" id="selectAll"  /></td>
                    <td><a href="#" onclick="printOrangePage()">Print Synthesis I-card</a></td>
                    <td><a href="#" onclick="printGreenPage()">Print Synjee I-card</a></td>
                </tr>
            </table>
            <table id="show" class="table table-bordered table-hover">
              <tr class="active1 table_style" style="font-weight:600;">
                    <td width="50">Sr. No.</td>
                    <td width="80">Roll No.</td>
                    <td width="200">Student Name</td>
                    <td width="150">Father Name</td>
                    <td width="100">Class</td>
                    <td width="100">Status</td>
                    <td width="100">Batch</td>
                    <td width="100">Photo</td>
                    <td width="100" colspan="3">Action</td>
                </tr>
                <?php

                    $url=ROOT."index/i_crd/syn_i_per/";
                    $limit=1;
                    $frmdataget=$_REQUEST;
                    @PaginationWork(10); 
                    $totRslt=mysqli_fetch_assoc(mysqli_query($con,"select count(*) as tot from stu_profile join class on class_id=class.id join batch on batch_id=batch.id where roll_no!=''"));

                    ?>
                    <script type="text/javascript">
                    $('#tot_stu').html('<?php echo $totRslt['tot'] ?>')
                    </script>
                <?php 
                    $student_dtl=fetchAll("select stu_profile.id,stu_profile.name,roll_no,f_name,m_name,class.name as class,batch.name as batch,propic,f_mobile,wheree from stu_profile join class on class_id=class.id join batch on batch_id=batch.id where roll_no!='' limit ".$frmdata['from'].", ".$frmdata['to']);
                    $sno=1;
                    foreach ($student_dtl as  $student_dtl_value) {
                        extract($student_dtl_value);
                ?>
                <tr class="primary1 table_style2">
                    <td><?php echo $sno++; ?></td>
                    <td><?php echo $roll_no; ?></td>
                    <td><?php echo $name ?></td>
                    <td><?php echo $f_name ?></td>
                    <td><?php echo $class ?></td>
                    <td><?php echo $wheree ?></td>
                    <td><?php echo $batch ?></td>
                    <td>
                    <?php 
                    $path=ROOT.$propic;
                    if($propic){
                    ?>
                        <img src="<?php echo ROOT.$propic; ?>" alt="N/A" height="30" width="30" />
                        <?php }else{echo "N/A";}?>
                    </td>
                    <td><input type="checkbox" class="chk" value="<?php echo $id; ?>" /></td>
                </tr>
                <?php } ?>

                 <tr>
                        <td colspan="20">
                            <?php PaginationDisplay($totRslt['tot'],$url.'page=','','10','View More Photos');?>
                        </td>
                </tr>
            </table>
                            
    </form>
      </div>
      <div id="showSession" ></div>
    <script type="text/javascript">
        function del(did){
            if(confirm("Do you really want to delete")){
                location.href=root_path+"index/stu_profile/syn_del_stu/"+did;
            }
        }
    </script>
      <script type="text/javascript">
          function search(){
            // alert("aja");      
            var roll=$('#roll').val();
            // ctrl+shift+d
            var stu_name=$('#stu_name').val();
            var stu_f_name=$('#stu_f_name').val();
            var stu_class=$('#stu_class').val();
            
            var stu_batch=$('#stu_batch').val();
            $.ajax({
                url:root_path+"module/i_crd/search.php",
                data:"roll="+roll+"&stu_name="+stu_name+"&stu_f_name="+stu_f_name+"&stu_class="+stu_class+"&stu_batch="+stu_batch,
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
    
    
    </script>
    <script type="text/javascript">
        $('#selectAll').on('change', function() {
            $('.chk:checkbox').prop('checked', $(this).is(":checked"));
        });
        function printOrangePage(){
            var yourArray = $(".chk:checked").map(function(){return $(this).val()}).get();
            if(yourArray.length>0){
                location.href=root_path+"icard.php?id="+yourArray+"&card=permanent";
            }
        }
        function printGreenPage(){
            var yourArray = $(".chk:checked").map(function(){return $(this).val()}).get();
            if(yourArray.length>0){
                location.href=root_path+"icard2.php?id="+yourArray+"&card=permanent";
            }
        }
        printGreenPage
    </script>
    <!-- 
            var yourArray = $(".chk:checked").map(function(){return $(this).val()}).get();
            if(yourArray.length>0){
                $.ajax({
                    url:root_path+"genrate_session.php",
                    data:"chk="+yourArray,
                    type:"post",
                    success:function(e){
                        $('#showSession').html(e);
                    },error:function(e){
                        alert(e);
                    }
                });
            }
 -->
 
    <script type="text/javascript">
        function showpage(where,page){
            // alert(where+page);
            $.ajax({
                url:root_path+'module/stu_profile/search.php',
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