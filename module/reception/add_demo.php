<?php
$id="";
if(isset($_GET['id'])){
  $id=$_GET['id'];
  $stu_rec_dtl=fetchOne("select token_no,name,f_name,m_name,category,class_id,batch_id,propic,s_mobile,f_mobile,m_mobile,gender,note from stu_profile where id=$id");
  // print_r($stu_rec_dtl);
}
print_r($_POST);
if(isset($_POST['from_date']))
{
  $_POST['demo_class']=$_SESSION['logindtl']['id'];
  $_POST['wheree']='demo';
  addUpdate('stu_profile',$_POST,$id);

  ?>
  <script>
  location.href=root_path+"index/reception/recep_list";
  </script>
<?php 
} ?>

<div class="col-lg-12" style="border:1px dotted #CCC;">
<form role="form" class="form-horizontal" enctype="multipart/form-data" method="post">
  <div class="col-lg-6">
              <div class="form-group">
                  <label class="col-lg-4 control-label">Token No.</label>
                    <div class="col-lg-8">
                      <?php
                        $last_token_no=fetchOne("Select token_no from stu_profile order by token_no desc");
                        if($id){
                          $token_no=$stu_rec_dtl['token_no'];
                        }
                        elseif($last_token_no)
                          $token_no=$last_token_no['token_no']+1;
                        else
                          $token_no=1234567;
                      ?>
                    <input readonly type="text"   class="form-control" value="<?php echo $token_no; ?>" id="roll"  value=""  onkeyup="this.value=this.value.replace(/[^0-9]/g,'');" style="text-transform:capitalize;">
                    </div>
                </div>
                <div class="form-group">
                  <label class="col-lg-4 control-label">Student Name</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" disabled   id="s_name"  value="<?php if($id){echo $stu_rec_dtl['name'];} ?>" style="text-transform:capitalize;">
                    </div>
                    <?php if(isset($_SESSION['ename'])){echo $_SESSION['ename']; unset($_SESSION['ename']);} ?>
                </div>
                <div class="form-group">
                  <label class="col-lg-4 control-label">Father Name</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="f_name"   disabled value="<?php if($id){echo $stu_rec_dtl['f_name'];} ?>" style="text-transform:capitalize;">
                    </div>
                    <?php if(isset($_SESSION['fname'])){echo $_SESSION['fname']; unset($_SESSION['fname']);} ?>
                </div>

                <div class="form-group">
                  <label class="col-lg-4 control-label">Mother Name</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="m_name" disabled    value="<?php if($id){echo $stu_rec_dtl['m_name'];} ?>" style="text-transform:capitalize;">
                    </div>
                    <?php if(isset($_SESSION['mname'])){echo $_SESSION['mname']; unset($_SESSION['mname']);} ?>
                </div>

                <div class="form-group">
                  <label class="col-lg-4 control-label">Category</label>
                    <div class="col-lg-8">
                    <select class="form-control" id="cat"    disabled>
                      <option></option>
                    <option <?php if(isset($_POST['category']) && ($_POST['category'] =='GEN') || ($id && $stu_rec_dtl['category']=='GEN')){?> selected<?php }?> >GEN</option>
                    <option <?php if(isset($_POST['category']) && ($_POST['category']=='OBC')||($id && $stu_rec_dtl['category']=='OBC')){?> selected<?php }?> >OBC</option>
                    <option <?php if(isset($_POST['category'])  && ($_POST['category']=='SC')||($id && $stu_rec_dtl['category']=='SC')){?> selected<?php }?> >SC</option>
                    <option <?php if(isset($_POST['category']) && ($_POST['category']=='ST')||($id && $stu_rec_dtl['category']=='ST')){?> selected<?php }?> >ST</option>
                    </select>
                    </div>
                    <?php if(isset($_SESSION['category'])){echo $_SESSION['category']; unset($_SESSION['category']);} ?>
                    
                </div>
                <div class="form-group">
                  <label class="col-lg-4 control-label">Select Class</label>
                    <div class="col-lg-8">
                    <select onchange="show_batch(this.value,'')"  class="form-control"  disabled   id="" >
                        <option value="">Please Select Class</option>
                        <?php 
                            $class_data=fetchAll("select id,name from class");
                            foreach ($class_data as $class_value) {
                        ?>
                                <option <?php if((isset($_POST['class_id']) && $_POST['class_id']==$class_value['id']) || ($id && $stu_rec_dtl['class_id']==$class_value['id'])){echo "selected";} ?> value="<?php echo $class_value['id']; ?>"><?php echo $class_value['name'] ?></option>
                            <?php }?>
                    </select>
                    <?php if(isset($_SESSION['eclass_id'])){echo $_SESSION['eclass_id']; unset($_SESSION['eclass_id']);} ?>
                    </div>
                </div>
                <div class="form-group">
                  <label class="col-lg-4 control-label">Select Batch</label>
                    <div  class="col-lg-8">
                    <select id="batch" class="form-control" id="stu_batch"     disabled="disabled">
                        <option value="">Select class first</option>
                    </select>
                    <?php if(isset($_SESSION['ebatch_id'])){echo $_SESSION['ebatch_id']; unset($_SESSION['ebatch_id']);} ?>
                    </div>
                </div>
                
                <div class="form-group">
                  <label class="col-lg-4 control-label">Mobile No. (Student)</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="s_mobile"  disabled value="<?php echo $stu_rec_dtl['s_mobile']; ?>" pattern=".{10}" maxlength="10" onkeyup="this.value=this.value.replace(/[^0-9]/g,'');" style="text-transform:capitalize;">
                    </div>
                      <?php if(isset($_SESSION['smobile'])){echo $_SESSION['smobile']; unset($_SESSION['smobile']);} ?>
                </div>
                <div class="form-group">
                  <label class="col-lg-4 control-label">Mobile No. (Father)</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="f_mobile"  disabled   value="<?php echo $stu_rec_dtl['f_mobile']; ?>" pattern=".{10}" maxlength="10" onkeyup="this.value=this.value.replace(/[^0-9]/g,'');" style="text-transform:capitalize;">
                    </div>
                      <?php if(isset($_SESSION['fmobile'])){echo $_SESSION['fmobile']; unset($_SESSION['fmobile']);} ?>
                </div>
                <div class="form-group">
                  <label class="col-lg-4 control-label">Mobile No. (Mother)</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="m_mobile" disabled value="<?php echo $stu_rec_dtl['m_mobile']; ?>" pattern=".{10}" maxlength="10" onkeyup="this.value=this.value.replace(/[^0-9]/g,'');" style="text-transform:capitalize;">
                    </div>
                      <?php if(isset($_SESSION['mmobile'])){echo $_SESSION['mmobile']; unset($_SESSION['mmobile']);} ?>
                </div>
                <div class="form-group">
                  <label class="col-lg-4 control-label">Gender</label>
                    <div class="col-lg-8">
                    <select class="form-control" id="gender" disabled  >
                      <option></option>
                        <option <?php if($id && $stu_rec_dtl['gender']=='male'){echo "selected";} ?>>Male</option>
                        <option <?php if($id && $stu_rec_dtl['gender']=='female'){echo "selected";} ?>>Female</option>
                    </select>
                    </div>
                      <?php if(isset($_SESSION['gender'])){echo $_SESSION['gender']; unset($_SESSION['gender']);} ?>
                </div>

                <div class="form-group">
                  <label class="col-lg-4 control-label">From Date</label>
                    <div class="col-lg-8">
                    <input type="date" class="form-control" value="<?php echo date('Y-m-d'); ?>"   name="from_date" required  value="<?php echo $stu_rec_dtl['from_date']; ?>" pattern=".{10}" maxlength="10"  style="text-transform:capitalize;">
                    </div>
                </div>


                <div class="form-group">
                  <label class="col-lg-4 control-label">To Date</label>
                    <div class="col-lg-8">
                    <input type="date" class="form-control"   name="to_date" required  value="<?php echo $stu_rec_dtl['to_date']; ?>" pattern=".{10}" maxlength="10"  style="text-transform:capitalize;">
                    </div>
                </div>


                <div class="form-group">
                      <div class="col-lg-8 col-lg-offset-4">
                        <button type="submit"  id="submit" class="btn btn-danger btn-sm btn-block" style="font-family:'Century Gothic'; font-size:14px; font-weight:bold;">SUBMIT & GENERATE TOKEN</button>
                        </div>
                    </div>
              </div></form></div>
                <script type="text/javascript">
                  function show(option){
                    $.ajax({
                      url:root_path+"module/reception/show_name.php",
                      data:"option="+option,
                      type:"post",
                      success:function(e){
                        $('#refer').html(e);
                        $('#refer').removeAttr('disabled');
                      } 
                    })
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
                    $('#batch').html(e);
                }
            });
        }
    }
</script>
<?php 
    if($id){
      // print_r($stu_data);
        ?>
        <script type="text/javascript">
          // alert("aja");
        show_batch('<?php echo $stu_rec_dtl['class_id'];?>','<?php echo $stu_rec_dtl['batch_id'];?>');
        </script>
<?php } ?>