<?php
$id="";
if(isset($_GET['id'])){
  $id=$_GET['id'];
  $stu_rec_dtl=fetchOne("select token_no,name,f_name,m_name,category,class_id,batch_id,propic,s_mobile,f_mobile,m_mobile,gender,note from stu_profile where id=$id");
  // print_r($stu_rec_dtl);
}
// session_destroy();
if(isset($_POST['token_no']))
{
    // if(isset($_FILES['propic']['name']) && $_FILES['propic']['name'])
    // {
    //     if($_FILES['propic']['type']=='image/jpeg'||$_FILES['propic']['type']='image/png'){
    //       // echo "hi";exit;
    //       if($id && $stu_data['propic']){
            
    //           unlink($stu_data['propic']);
            
    //       }

    //       $upload_dir = "include/student_propic/"; 
    //       $file_name = time().$_FILES["propic"]["name"];
    //       // echo $file_name;exit;
    //       $upload_file = $upload_dir.$file_name;    
    //       if(move_uploaded_file($_FILES['propic']['tmp_name'],$upload_file)){        

    //          $source_image = $upload_file;
    //          $image_destination = $upload_dir."min-".$file_name;
    //          // echo $image_destination;exit;
    //          $compress_images = compressImage($source_image, $image_destination);
    //          $_POST['propic']=$image_destination;      
    //       }
    //          unlink($upload_file);

    //     }
        
    // }
    // elseif(isset($_SESSION['image_upload'])){

    //         if($id && $stu_data['propic']){
              
    //             unlink(ROOT.$stu_data['propic']);
              
    //         }
    //         $_POST['propic']=$_SESSION['image_upload'];
    //         unset($_SESSION['image_upload']);
    //     }
  $success=1;
if( $_POST['name']=="")
{
  $_SESSION['ename']="Enter Your Name";
  $success=0;
}
if($_POST['f_name']=="")
{
  $_SESSION['fname']="Enter Your Father Name";
  $success=0;
}
if($_POST['m_name']=="")
{
  $_SESSION['mname']="Enter Your Mother Name";
  $success=0;
}
if($_POST['f_mobile']==""){
  $_SESSION['fmobile']="Enter student father mobile no";
  $success=0; 
}
if($_POST['class_id']==""){
  $_SESSION['eclass_id']="Select class";
  $success=0; 
}
if($id==''){
  if(!isset($_POST['send_to']) || $_POST['send_to']=="")
  {
    $_SESSION['sendto']="Select a name";
    $success=0;
  }
  if(!isset($_POST['refer_to']) || $_POST['refer_to']=="")
  {
    $_SESSION['referto']="Select reference";
    $success=0;
  }
}
if(!isset($_POST['category']) || $_POST['category']=="")
{
  $_SESSION['category']="Select category";
  $success=0;
}
if(!isset($_POST['gender']) || $_POST['gender']=="")
{
  $_SESSION['gender']="Select gender";
  $success=0;
}
if($success)
{
  // echo "hi";exit;
  $_POST['inquiry_date']=date('Y-m-d');
  $_POST['genrate_token']=$_SESSION['logindtl']['id'];
  addUpdate('stu_profile',$_POST,$id);
// exit;
extract($_POST);
  //sending msg to student father
if($id==''){
$class_name=fetchOne("select name from class where id=$class_id");
  $number = $_POST['f_mobile'];
  $message = rawurlencode("Dear Student/Parent, thank you for inquiry. Your details are:- Student Name:- $_POST[name], Token No:-$token_no, Class for inquiry :- $class_name[name]. Thank you Team Synthesis");
  $ch=curl_init('http://dnd.saakshisoftware.in/api/mt/SendSMS?APIKEY='.user.'&senderid='.senderid.'&channel='.channel.'&DCS='.DCS.'&flashsms='.flashsms.'&number='.$number.'&text='.$message.'&route='.route.'');
  $data = curl_exec($ch);



  //sending msg to office staff
  $refer_to_mobile=fetchOne("select mobile_no from office_staff where id=$_POST[refer_to]");
  // echo "select mobile_no from office_staff where id=$_POST[refer_to]";
  $number = $refer_to_mobile['mobile_no'];
  $message = rawurlencode("New inquiry detail. Name:- $name Class:-$class_name[name] ,Token No:-$token_no Phone No.:- $_POST[f_mobile]");
  $ch=curl_init('http://dnd.saakshisoftware.in/api/mt/SendSMS?APIKEY='.user.'&senderid='.senderid.'&channel='.channel.'&DCS='.DCS.'&flashsms='.flashsms.'&number='.$number.'&text='.$message.'&route='.route.'');
  $data = curl_exec($ch);  
  // exit; 
}
  ?>
  <script>
  location.href=root_path+"index/reception/recep_list";
  </script>
<?php }
} ?>

<div class="col-lg-12" style="border:1px dotted #CCC;">
<form role="form" class="form-horizontal" enctype="multipart/form-data" method="post">
  <div class="col-lg-6"> <span class="star">star (*) fields are mandatory</span>
              <div class="form-group">
                  <label class="col-lg-4 control-label">Token No.</label>
                    <div class="col-lg-8">
                      <?php
                        $last_token_no=fetchOne("Select token_no from stu_profile where token_no!='' and token_no>1 order by token_no desc");
                        if($id){
                          $token_no=$stu_rec_dtl['token_no'];
                        }
                        elseif($last_token_no['token_no'])
                          $token_no=$last_token_no['token_no']+1;
                        else
                          $token_no=1234567;
                      ?>
                    <input readonly type="text" required class="form-control" value="<?php echo $token_no; ?>" id="roll" name="token_no" value=""  onkeyup="this.value=this.value.replace(/[^0-9]/g,'');" style="text-transform:capitalize;">
                    </div>
                </div>
                <div class="form-group">
                  <label class="col-lg-4 control-label">Student Name <span class="star">*</span></label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" required id="s_name" name="name" value="<?php if($id){echo $stu_rec_dtl['name'];} ?>" style="text-transform:capitalize;">
                    </div>
                    <?php if(isset($_SESSION['ename'])){echo $_SESSION['ename']; unset($_SESSION['ename']);} ?>
                </div>
                <div class="form-group">
                  <label class="col-lg-4 control-label">Father Name <span class="star">*</span></label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="f_name" required name="f_name" value="<?php if($id){echo $stu_rec_dtl['f_name'];} ?>" style="text-transform:capitalize;">
                    </div>
                    <?php if(isset($_SESSION['fname'])){echo $_SESSION['fname']; unset($_SESSION['fname']);} ?>
                </div>

                <div class="form-group">
                  <label class="col-lg-4 control-label">Mother Name <span class="star">*</span></label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="m_name" name="m_name"  required value="<?php if($id){echo $stu_rec_dtl['m_name'];} ?>" style="text-transform:capitalize;">
                    </div>
                    <?php if(isset($_SESSION['mname'])){echo $_SESSION['mname']; unset($_SESSION['mname']);} ?>
                </div>

                <div class="form-group">
                  <label class="col-lg-4 control-label">Category <span class="star">*</span></label>
                    <div class="col-lg-8">
                    <select class="form-control" id="cat" name="category" required>
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
                  <label class="col-lg-4 control-label">Select Class <span class="star">*</span></label>
                    <div class="col-lg-8">
                    <select onchange="show_batch(this.value,'')"  class="form-control"  required id="" name="class_id">
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
                    <select id="batch" class="form-control" id="stu_batch"  name="batch_id"  disabled="disabled">
                        <option value="">Select class first</option>
                    </select>
                    <?php if(isset($_SESSION['ebatch_id'])){echo $_SESSION['ebatch_id']; unset($_SESSION['ebatch_id']);} ?>
                    </div>
                </div>
                
                <div class="form-group">
                  <label class="col-lg-4 control-label">Mobile No. (Student)</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="s_mobile" name="s_mobile" value="<?php echo $stu_rec_dtl['s_mobile']; ?>" pattern=".{10}" maxlength="10" onkeyup="this.value=this.value.replace(/[^0-9]/g,'');" style="text-transform:capitalize;">
                    </div>
                      <?php if(isset($_SESSION['smobile'])){echo $_SESSION['smobile']; unset($_SESSION['smobile']);} ?>
                </div>
                <div class="form-group">
                  <label class="col-lg-4 control-label">Mobile No. (Father) <span class="star">*</span></label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="f_mobile" name="f_mobile" required value="<?php echo $stu_rec_dtl['f_mobile']; ?>" pattern=".{10}" maxlength="10" onkeyup="this.value=this.value.replace(/[^0-9]/g,'');" style="text-transform:capitalize;">
                    </div>
                      <?php if(isset($_SESSION['fmobile'])){echo $_SESSION['fmobile']; unset($_SESSION['fmobile']);} ?>
                </div>
                <div class="form-group">
                  <label class="col-lg-4 control-label">Mobile No. (Mother)</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="m_mobile" name="m_mobile" value="<?php echo $stu_rec_dtl['m_mobile']; ?>" pattern=".{10}" maxlength="10" onkeyup="this.value=this.value.replace(/[^0-9]/g,'');" style="text-transform:capitalize;">
                    </div>
                      <?php if(isset($_SESSION['mmobile'])){echo $_SESSION['mmobile']; unset($_SESSION['mmobile']);} ?>
                </div>
                <div class="form-group">
                  <label class="col-lg-4 control-label">Gender <span class="star">*</span></label>
                    <div class="col-lg-8">
                    <select class="form-control" id="gender" name="gender" required>
                      <option></option>
                        <option <?php if($id && $stu_rec_dtl['gender']=='male'){echo "selected";} ?>>Male</option>
                        <option <?php if($id && $stu_rec_dtl['gender']=='female'){echo "selected";} ?>>Female</option>
                    </select>
                    </div>
                      <?php if(isset($_SESSION['gender'])){echo $_SESSION['gender']; unset($_SESSION['gender']);} ?>
                </div>
                <?php if($id==''){ ?>
                <div class="form-group">
                  <label class="col-lg-4 control-label">Interested In : <span class="star">*</span></label>
                    <div class="col-lg-8">
                    <select onchange="show(this.value)" class="form-control" required id="batch" name="send_to">
                      <option value=""></option>
                        <option value="enquiry" <?php if(isset($_POST['department']) && ($_POST['department'] =='enquiry') || (isset($data['department']) && ($data['department']=='enquiry') )) { ?> selected <?php } ?>>Enquiry/Reception</option> 
                        <option value="accountant" <?php if(isset($_POST['department']) && ($_POST['department'] =='accountant') || (isset($data['department']) && ($data['department']=='accountant') )){ ?> selected <?php } ?>>Admission/Accountant</option>
                        <option value="cao" <?php if(isset($_POST['department']) && ($_POST['department'] =='cao') || (isset($data['department']) && ($data['department']=='cao') )){ ?> selected <?php } ?>>CAO</option>
                        <option value="director" <?php if(isset($_POST['department']) && ($_POST['department'] =='director') || (isset($data['department']) && ($data['department']=='director') )){ ?> selected <?php } ?>>Director</option>
                        <option value="other" <?php if(isset($_POST['department']) && ($_POST['department'] =='other') || (isset($data['department']) && ($data['department']=='other') )){ ?> selected <?php } ?>>Other</option>
                        <option value="test series" <?php if(isset($_POST['department']) && ($_POST['department'] =='test series') || (isset($data['department']) && ($data['department']=='test series') )){ ?> selected <?php } ?>>Test Series</option>
                    </select>
                    </div>
                    <?php if(isset($_SESSION['sendto'])){echo $_SESSION['sendto']; unset($_SESSION['sendto']);} ?>
                </div>

                <div class="form-group">
                  <label class="col-lg-4 control-label">Refers To : <span class="star">*</span></label>
                    <div class="col-lg-8">
                    <select class="form-control" disabled id="refer" required name="refer_to">
                      <option value=""></option>

                    </select>
                    </div>
                    <?php if(isset($_SESSION['referto'])){echo $_SESSION['referto']; unset($_SESSION['referto']);} ?>
                </div>
                <?php } ?>
                <div class="form-group">
                  <label class="col-lg-4 control-label">Note</label>
                    <div class="col-lg-8">
                      <textarea name="note" class="form-control"><?php if($id){echo $stu_rec_dtl['note'];} ?></textarea>
                    </div>
                    <?php if(isset($_SESSION['note'])){echo $_SESSION['note']; unset($_SESSION['note']);} ?>
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
                    $('#batch').removeAttr('disabled');
                }
            });
        }else{
            $('#batch').attr('disabled','disabled');
            $('#batch').html("<option value=''>Select Class First</option>")
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