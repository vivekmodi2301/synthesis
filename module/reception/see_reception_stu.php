<?php
// error_reporting(1);
  if(isset($_GET['id'])){
      delete('stu_profile',$_GET['id']);
      ?>
          <script type="text/javascript">
              location.href=root_path+"index/reception/recep_list/";
          </script>
      <?php
  }
?><div class="col-lg-12 table-hover table-responsive" style="margin-left:10px;">

          <table class="table table-bordered table-hover table-responsive">
              <tr class="active1 table_style" style="font-weight:600;">
                    <td width="100">Roll No./ Token No. <input type="text" onkeyup ="search()" id="roll" class="form-control" /></td>
                    <td>Search by Student Name <input type="text" onkeyup="search()" id="stu_name" class="form-control" /></td>
                    <td>Search by Father's Name <input type="text" onkeyup="search()" id="stu_f_name" class="form-control" /></td>
                    <td>Select Class                     <select onchange="show_batch(this.value,'')" tabindex="1" class="form-control"  id="stu_class" name="class_id">
                        <option value="">Please Select Class</option>
                        <?php 
                            $class_data=fetchAll("select id,name from class");
                            foreach ($class_data as $class_value) {
                        ?>
                                <option <?php if((isset($_POST['class_id']) && $_POST['class_id']==$class_value['id']) ){echo "selected";} ?> value="<?php echo $class_value['id']; ?>"><?php echo $class_value['name'] ?></option>
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
        <table class="table table-bordered table-hover">
            <tr class="active1 table_style" style="font-weight:600;">
                <td>Inquiry Date From: <input type="date" onchange="search()" id="i_from" class="form-control" />
                </td>
                <td>
                    To: <input type="date" onchange="search()" id="i_to" class="form-control" />
                </td>        
            </tr>
        </table>
        <table class="table table-bordered table-hover">
              <tr class="active1 table_style" style="font-weight:600; text-align:justify;">
                    <td>Total Students in this Section : <span id="tot_stu" class="profile_chng_color"></span></td>
                    <td class="profile_chng_color">You are here at : See All Token Details</td>
                    <td>Select All <input id="selectAll" type="checkbox" /></td>
                     <td><button name="" id="" class="btn btn-success btn-sm btn-block" style="font-family:'Century Gothic'; font-size:14px; font-weight:bold;" data-toggle="modal" data-target="#myModal" onclick="sendMsg()">SEND REMINDER MSG</button></td>
                     
                </tr>
        </table>
        <table id="show" class="table table-bordered table-hover table-responsive">
            <tr>
                <td colspan="14"><a href="<?php echo ROOT ?>module/reception/search_print.php" class="btn btn-primary">Print</a></td>
            </tr>
            <tr class="active1 table_style" style="font-weight:600;">
                <td width="100">Sr. No.</td>
                <td width="100">Token No</td>
                <td width="300">Student Name</td>
                <td width="300">Father Name</td>
                <!--<td width="300">Mother Name</td>-->
                <td width="300">Class</td>
                <td width="300">Mobile No (Father)</td>
                <!--<td width="300">Gender</td>-->
                <td width="300">Intersted In</td>
                <td width="300">Refer To</td>
                <?php if(isset($_SESSION['logindtl']['dept']) && ($_SESSION['logindtl']['dept']=='masteradmin' || $_SESSION['logindtl']['dept']=='accountant')){ ?>
                    <td width="200">Admission</td>
                <?php } ?>
                <td width="300">Date</td>
                <!--<td width="300">Action</td>-->
                <td width="300">Print</td>
                <td width="200">Submited by</td>
                <td width="200">See Detail</td>    
                <td width="200">Send Msg</td>    
            </tr>

            <?php
                $url=ROOT."index/reception/recep_list/";
                    $limit=1;
                    $frmdataget=$_REQUEST;
                    // print_r($frmdataget);
                    
                    @PaginationWork(10); 
                    $totRslt=mysqli_fetch_assoc(mysqli_query($con,"select count(*) as tot from stu_profile left join office_staff on refer_to=office_staff.id join class on class_id=class.id where wheree='inquiry' order by stu_profile.id "));
                    
                    ?>
                    <script type="text/javascript">
                    $('#tot_stu').html('<?php echo $totRslt[tot] ?>')
                    </script>
                    <?php
                    if($totRslt['tot']==0){
                        echo "<tr><td colspan='16'>No data found</td></tr>";
                    }else{
                        $sno=1;
                        if(isset($_GET['pageNumber']) && $_GET['pageNumber']>1){
                            $sno = (($_GET['pageNumber']-1)*10)+1;
                        }
                        $stu_recp_data=fetchAll("Select stu_profile.id, stu_profile.name,f_name,m_name,office_staff.name as staff,f_mobile,gender,send_to,refer_to,token_no,class.name as class,genrate_token,inquiry_date from stu_profile left join office_staff on refer_to=office_staff.id join class on class_id=class.id where wheree='inquiry' order by stu_profile.id limit ".$frmdata['from'].", ".$frmdata['to']);
?>
<?php 
                        foreach ($stu_recp_data as $stu_recp_value) {
                    ?>
                            <tr class="primary1 table_style2">
                                <td><?php echo $sno++; ?></td>
                                <td><?php echo $stu_recp_value['token_no']; ?></td>
                                <td><?php echo $stu_recp_value['name'] ?></td>
                                <td><?php echo $stu_recp_value['f_name']; ?></td>
                                <?php /*?><td><?php echo $stu_recp_value['m_name'] ?></td><?php */?>
                                <td><?php echo $stu_recp_value['class']; ?></td>
                                <td><?php echo $stu_recp_value['f_mobile']; ?></td>
                                <?php /*?><td><?php echo $stu_recp_value['gender'] ?></td><?php */?>
                                <td><?php echo $stu_recp_value['send_to']; ?></td>
                                <td><?php echo $stu_recp_value['staff'] ?></td>
                                <?php if(isset($_SESSION['logindtl']['dept']) && ($_SESSION['logindtl']['dept']=='masteradmin' || $_SESSION['logindtl']['dept']=='accountant')){ ?>
                                
                                <td><a href="<?php echo ROOT; ?>index/stu_profile/syn_e_studnt/<?php echo $stu_recp_value['id']; ?>">Take Admission/Registration</a></td>
                                <?php } ?>
                                <td><?php $stu_recp_value['inquiry_date']=explode('-',$stu_recp_value['inquiry_date']);
        						 krsort($stu_recp_value['inquiry_date']); 
        						 $stu_recp_value['inquiry_date']=implode("-",$stu_recp_value['inquiry_date']); 
        						 echo $stu_recp_value['inquiry_date']; ?></td>
                                <?php /*?><td><a href="<?php echo ROOT; ?>index/reception/recep_edit/<?php echo $stu_recp_value['id']; ?>"><img src="<?php echo ROOT; ?>include/images/profile_edit.png" height="20" width="20" /></a> | <a href="#" onclick="del(<?php echo $stu_recp_value['id'];?>)"><img src="<?php echo ROOT; ?>include/images/trash.png" height="20" width="20" /></a></td><?php */?>
                                <td><a href="<?php echo ROOT; ?>print_token/<?php echo $stu_recp_value['id']; ?>"><img src="<?php echo ROOT; ?>include/images/icon_print.png" height="20" width="20" /></a></td>
                                <td><?php $genrate_by=loginFetchOne("select uname from login where id=$stu_recp_value[genrate_token]"); echo $genrate_by['uname']; ?></td>
                                <td><a href="<?php echo ROOT; ?>index/fee_dtl/syn_pdc_fee/<?php echo $stu_recp_value[token_no]; ?>">See Detail</a></td>
                                <td><input class="chk" type="checkbox" value="<?php echo $stu_recp_value['id'] ?>" id="<?php echo $stu_recp_value['id']; ?>">
                            </td>
                            </tr>
                        <?php }?>
                    <?php } ?>

                <tr>
                        <td colspan="20">
                            <?php PaginationDisplay($totRslt['tot'],$url.'page=','','10','View More Photos');?>
                        </td>
                </tr>
        </table>

  </div>
    <script type="text/javascript">
        $('#selectAll').on('change', function() {
            $('.chk:checkbox').prop('checked', $(this).is(":checked"));
        });
    </script>
  <script type="text/javascript">
      function del(did){
        if(confirm("Do you really want to delete")){
            location.href=root_path+"index/reception/recep_list/"+did;
        }
      }
  </script>

      <script type="text/javascript">
          function search(){
            //now lets fetch value of every input here
            var roll=$('#roll').val();
            // ctrl+shift+d
            var stu_name=$('#stu_name').val();
            var stu_f_name=$('#stu_f_name').val();
            var stu_class=$('#stu_class').val();
            var stu_batch=$('#stu_batch').val();
            var i_from=$('#i_from').val();
            var i_to=$('#i_to').val();
            var data=$('#data').val();
            $.ajax({
                url:root_path+"module/reception/search.php",
                data:"roll="+roll+"&stu_name="+stu_name+"&stu_f_name="+stu_f_name+"&stu_class="+stu_class+"&i_to="+i_to+"&i_from="+i_from+"&data="+data,
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
        function sendMsg(){
            // alert(statuss);
            var yourArray = $(".chk:checked").map(function(){return $(this).val()}).get();
            alert(yourArray);
        }
    </script>
    <script type="text/javascript">
        function showpage(where,page){
            // alert(where);
            $.ajax({
                url:root_path+'module/reception/search.php',
                data:"where="+where+"&pageNumber="+page,
                type:'post',
                success:function(e){
                    $('#show').html(e);

                }
            });
        }
    </script>
    <script type="text/javascript">
        function explode(qry){
            location.href=root_path+"module/reception/explode.php";
        }
    </script>