<?php 

$id="";
if(isset($_GET['id'])){
  $id=$_GET['id'];
  $stu_data=fetchOne("select id,name,token_no,f_name,m_name,f_mobile,m_mobile,s_mobile,class_id,batch_id,email,roll_no,gender,category,dob,ll_no,c_address,c_city,c_tehsil,c_district,c_pin,c_state,p_address,p_city,p_state,p_tehsil,p_district,p_pin,x_roll,x_pcent,x_schl_name,x_board,xii_roll,xii_pcent,xii_schl_name,xii_board,aipmt_roll,aiims_roll,aipvt_roll,icar_roll,rpvt_roll,jeem_roll,jeea_roll,send_to,refer_to,feedback,leave_at,pg_name,remark,propic,scholarship,scholar_reason,scholar_subreason,note,wheree,genrate_token,wheree,from_date,to_date,black_list,old_student from stu_profile where id=$id");
  // print_r($stu_data);
  $genrate_token_name=loginFetchOne("select uname from login where id=$stu_data[genrate_token]");
}

if(isset($_POST['name']))
{
  // print_r($_FILES);
  if(isset($_FILES['propic']['name']) && $_FILES['propic']['name'])
    {
        if($_FILES['propic']['type']=='image/jpeg'||$_FILES['propic']['type']='image/png'){
          // echo "hi";exit;
          if($id && $stu_data['propic']){
            
              // unlink($stu_data['propic']);
            
          }

          $upload_dir = "include/student_propic/"; 
          $file_name = time().$_FILES["propic"]["name"];
          // echo $file_name;exit;
          $upload_file = $upload_dir.$file_name;    
          if(move_uploaded_file($_FILES['propic']['tmp_name'],$upload_file)){        

             $source_image = $upload_file;
             $image_destination = $upload_dir."min-".$file_name;
             // echo $image_destination;exit;
             $compress_images = compressImage($source_image, $image_destination);
             $_POST['propic']=$image_destination;      
          }
             unlink($upload_file);

        }
        
    }
    elseif(isset($_SESSION['image_upload'])){

            if($id && $stu_data['propic']){
              
                unlink(ROOT.$stu_data['propic']);
              
            }
            $_POST['propic']=$_SESSION['image_upload'];
            unset($_SESSION['image_upload']);
        }

  $success=1;
if($_POST['roll_no']==""){
  $_SESSION['eroll']="Enter Roll No.";
}

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

if(!isset($_POST['class_id']) || $_POST['class_id']=="")
{
  $_SESSION['class']="Enter Your Class";
  $success=0;
}
if(!isset($_POST['batch_id']) || $_POST['batch_id']=="")
{
  $_SESSION['batch']="Enter Your Batch";
  $success=0;
}

if($_POST['f_mobile']=="")
{
  $_SESSION['fmobile']="Enter Your Father Mobile no.";
  $success=0;
}
if( $_POST['c_address']=="")
{
  $_SESSION['cadd']="Enter Your Address";
  $success=0;
}
if( $_POST['c_state']=="")
{
  $_SESSION['cstate']="Enter Your state";
  $success=0;
}
if( $_POST['c_district']=="")
{
  $_SESSION['cdistrict']="Enter Your District";
  $success=0;
}
if( $_POST['c_city']=="")
{
  $_SESSION['ccity']="Enter Your City";
  $success=0;
}
if( $_POST['c_pin']=="")
{
  $_SESSION['cpin']="Enter Your Pincode";
  $success=0;
}
if( $_POST['p_address']=="")
{
  $_SESSION['padd']="Enter Your Address";
  $success=0;
}
if( $_POST['p_state']=="")
{
  $_SESSION['pstate']="Enter Your state";
  $success=0;
}
if( $_POST['p_district']=="")
{
  $_SESSION['pdistrict']="Enter Your District";
  $success=0;
}
if( $_POST['p_city']=="")
{
  $_SESSION['pcity']="Enter Your City";
  $success=0;
}
if( $_POST['p_pin']=="")
{
  $_SESSION['ppin']="Enter Your Pincode";
  $success=0;
}
if( $_POST['scholarship']=="")
{
  $_SESSION['escholarship']="Enter Your Scholarship";
  $success=0;
}
//if( $_POST['scholar_reason']=="")
//{
  //$_SESSION['escholar']="Enter Your Scholarship Reason";
  //$success=0;
//}
// if( $_POST['x_roll']=="")
// {
//   $_SESSION['xroll']="Enter Your Roll No.";
//   $success=0;
// }
// if( $_POST['x_pcent']=="")
// {
//   $_SESSION['xpcent']="Enter Your Percent/CGPA of class 10th" ;
//   $success=0;
// }


if(!isset($_POST['leave_at']) || $_POST['leave_at']=="")
{
  $_SESSION['leaveat']="Select This Dropdown";
  $success=0;

}
// if(!isset($_POST['pg_name']) || $_POST['pg_name']=="")
// {
//   $_SESSION['pgname']="Select This Dropdown";
//   $success=0;
// }

if($success)
{
  $old_where=fetchOne("select wheree from stu_profile where id=$id");
  // print_r($old_where);exit;
  // $_POST['wheree']='addmission';
  // if($_POST['wheree']=='addmission'){
  //   $_POST['admission']=$_SESSION['logindtl']['id'];
  // }
  // $_POST['addmission_date']=date('Y-m-d');

  if(isset($_POST['id'])){
    $id=$_POST['id'];
    unset($_POST['id']);
  }
  if($old_where['wheree']=='inquiry' || $old_where['wheree']==''){
    $_POST['wheree']='demo';
    $_POST['from_date']=date('Y-m-d');
    $current_time=time();
    $demo_time=$current_time+(7*24*60*60);
    $_POST['to_date']=date('Y-m-d',$demo_time);
    $_POST['demo_class']=$_SESSION['logindtl']['id'];
    $number = $_POST['f_mobile'];
    $class_name=fetchOne("select name from class where id=$_POST[class_id]");
    $message = rawurlencode("Dear Student/Parent, thank you for registration. Your details are:- Student Name:- $_POST[name] Token No:-$_POST[token_no], Class for inquiry :- $class_name[name]. Thank you Team Synthesis");
    $ch=curl_init('http://dnd.saakshisoftware.in/api/mt/SendSMS?APIKEY='.user.'&senderid='.senderid.'&channel='.channel.'&DCS='.DCS.'&flashsms='.flashsms.'&number='.$number.'&text='.$message.'&route='.route.'');
    $data = curl_exec($ch);
    $_POST['registration_date']=date('Y-m-d');
    $_POST['registration_by']=$_SESSION['logindtl']['id'];
  }
  // print_r($_POST);exit;
  addUpdate('stu_profile',$_POST,$id);
  if($old_where['wheree']=='inquiry' || $old_where['wheree']==''){
    $class_fee=fetchOne("select reg_fee from class_fee_dtl where class_id=$_POST[class_id]");
    $cur_date=date('Y-m-d');
    $last_recipt_no=fetchOne("select recipt_no from fee order by recipt_no desc limit 0,1");
    // print_r($last_recipt_no);
    // echo "hi";exit;
    if(!$last_recipt_no['recipt_no']){
      $last_recipt_no['recipt_no']=1;
    }else{
      $last_recipt_no['recipt_no']++;
    }
    $fee_data=array('roll'=>$_POST['roll_no'],'amount'=>$class_fee['reg_fee'],'pay_by'=>'cash','datee'=>$cur_date,'submit_by'=>$_SESSION['logindtl']['id'],'recipt_no'=>$last_recipt_no['recipt_no']);
    addUpdate('fee',$fee_data);
  }
  // exit;
?>
<script type="text/javascript">
  location.href=root_path+"index/stu_profile/syn_see_stu_profile"
  </script>
<?php } } 
$cqry="select id,name from class";
$clist=fetchAll($cqry);
$bqry="select id,class_id,name from batch";
$blist=fetchAll($bqry);
    
?>
<div class="col-lg-12" style="border:1px dotted #CCC;">
  <div id="genrate_token" class="profile_chng_color" style="text-decoration:underline;">Token Generated By- <?php if($id && $stu_data['genrate_token']){echo $genrate_token_name['uname'];} ?></div>
<form role="form" class="form-horizontal" enctype="multipart/form-data" method="post">
  <div class="col-lg-6">
  			
  			 <div class="form-group">
                  <label class="col-lg-4 control-label">Old Student</label>
                    <div class="col-lg-8">
                      <input <?php if($id && $stu_data['old_student']=='y'){echo "checked";} ?> type="radio" name="old_student" value="y">Yes
                      <input <?php if($id && $stu_data['old_student']=='n'){echo "checked";} ?> required type="radio" name="old_student" value="n">No
                      
                    </div>
                    <?php if(isset($_SESSION['note'])){echo $_SESSION['note']; unset($_SESSION['note']);} ?>
                </div>
              <div class="form-group">
                  <label class="col-lg-4 control-label profile_chng_color">Roll No.</label>
                    <div class="col-lg-8">
          <input required type="text" <?php if($id && $stu_data['wheree']!='inquiry'){echo "readonly";} ?> class="form-control" id="roll" name="roll_no" value="<?php if(isset($_POST['roll_no'])){echo $_POST['roll_no'];} elseif($id && $stu_data['wheree']!='inquiry'){ echo $stu_data['roll_no'];}?>" pattern=".{5}" maxlength="5"  onkeyup="this.value=this.value.replace(/[^0-9]/g,'');" style="text-transform:capitalize;" onchange="chkroll(this.value)">
          <span id="roll_error"></span>
                    </div>
                    <?php if(isset($_SESSION['eroll'])){echo $_SESSION['eroll']; unset($_SESSION['eroll']);} ?>
                </div>
                <div class="form-group">
                  <label class="col-lg-4 control-label">Student Name</label>
                    <div class="col-lg-8">
                    <input type="text" required class="form-control" id="s_name" <?php  if(!$id){?>onfocus="chkroll(this.value)" <?php } ?> name="name" value="<?php if(isset($_POST['name'])){echo $_POST['name'];} elseif($id){ echo $stu_data['name'];}?>"style="text-transform:capitalize;">
                    </div>
                     <?php if(isset($_SESSION['ename'])){echo $_SESSION['ename']; unset($_SESSION['ename']);} ?>
                </div>
                <div class="form-group">
                  <label class="col-lg-4 control-label">Father Name</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="f_name" name="f_name" value="<?php if(isset($_POST['f_name'])){echo $_POST['f_name'];} elseif($id){ echo $stu_data['f_name'];}?>" style="text-transform:capitalize;">
                    </div>
                     <?php if(isset($_SESSION['fname'])){echo $_SESSION['fname']; unset($_SESSION['fname']);} ?>
                </div>
                <div class="form-group">
                  <label class="col-lg-4 control-label">Mother Name</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="m_name" name="m_name" value="<?php if(isset($_POST['m_name'])){echo $_POST['m_name'];} elseif($id){ echo $stu_data['m_name'];}?>" style="text-transform:capitalize;">
                    </div>
                    <?php if(isset($_SESSION['mname'])){echo $_SESSION['mname']; unset($_SESSION['mname']);} ?>
                </div>
                <div class="form-group">
                  <label class="col-lg-4 control-label">Class</label>
                    <div class="col-lg-8">
<select class="form-control" id="class_id" name="class_id" onchange="show_batch(this.value,'')">
                        <option value=""></option>
                        <?php
                        foreach ($clist as $clist)
                        {?>
                            <option value="<?php echo $clist['id'];?>"
                             <?php if((isset($_POST['class_id']) && $_POST['class_id']==$clist['id']) || ($id && $clist['id']==$stu_data['class_id']))
                                                { echo "selected"; } 
                                    ?>  >
                                    <?php echo $clist['name'];?>
                            </option>

                        <?php
                    }
                    ?>
                    </select>
                    <?php if(isset($_SESSION['eclass_id'])){echo $_SESSION['eclass_id']; unset($_SESSION['eclass_id']);} ?>
                    </div>
                </div>
                <div class="form-group">
                  <label class="col-lg-4 control-label profile_chng_color">Batch</label>
                    <div class="col-lg-8">
                    <select class="form-control" disabled id="batch" name="batch_id">
                      <option></option>
                        
                    </select>
                    <?php if(isset($_SESSION['batch'])){echo $_SESSION['batch']; unset($_SESSION['batch']);} ?>
                    </div>
                </div>
                <div class="form-group">
                  <label class="col-lg-4 control-label">Email ID</label>
                    <div class="col-lg-8">
                    <input type="email" class="form-control" id="email" name="email" value="<?php if(isset($_POST['email'])){echo $_POST['email'];} elseif($id){ echo $stu_data['email'];}?>">
                    </div>
                    <?php if(isset($_SESSION['mail'])){echo $_SESSION['mail']; unset($_SESSION['mail']);} ?>
                </div>
                <div class="form-group">
                  <label class="col-lg-4 control-label">Mobile No. (Father)</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="f_mobile" name="f_mobile" value="<?php if(isset($_POST['f_mobile'])){echo $_POST['f_mobile'];} elseif($id){ echo $stu_data['f_mobile'];}?>" pattern=".{10}" maxlength="10" onkeyup="this.value=this.value.replace(/[^0-9]/g,'');" style="text-transform:capitalize;">
                    </div>
                    <?php  if(isset($_SESSION['fmobile'])){echo $_SESSION['fmobile']; unset($_SESSION['fmobile']);} ?>
                </div>
                <div class="form-group">
                  <label class="col-lg-4 control-label">Mobile No. (Mother)</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="m_mobile" name="m_mobile" value="<?php if(isset($_POST['m_mobile'])){echo $_POST['m_mobile'];} elseif($id){ echo $stu_data['m_mobile'];}?>" pattern=".{10}" maxlength="10" onkeyup="this.value=this.value.replace(/[^0-9]/g,'');" style="text-transform:capitalize;">
                    </div>

                </div>
                <div class="form-group">
                  <label class="col-lg-4 control-label">Mobile No. (Student)</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="s_mobile" name="s_mobile" value="<?php if(isset($_POST['s_mobile'])){echo $_POST['s_mobile'];} elseif($id){ echo $stu_data['s_mobile'];}?>" pattern=".{10}" maxlength="10" onkeyup="this.value=this.value.replace(/[^0-9]/g,'');" style="text-transform:capitalize;">
                    </div>
                    <?php if(isset($_SESSION['smobile'])){echo $_SESSION['smobile']; unset($_SESSION['smobile']);} ?>
                </div>
                <div class="form-group">
                  <label class="col-lg-4 control-label">Gender</label>
                    <div class="col-lg-8">
                    <select class="form-control" id="gender" name="gender">
                      <option></option>
                    <option <?php if(isset($_POST['gender']) && ($_POST['gender'] =='male') || ($id && $stu_data['gender']=='male')){?> selected <?php }?> value="male" >Male</option>
                <option <?php if(isset($_POST['gender']) && ($_POST['gender']=='female')|| ($id && $stu_data['gender']=='female')){?> selected <?php }?> value="female" >Female</option>
                    </select>
                    </div>
                    <?php if(isset($_SESSION['sgender'])){echo $_SESSION['sgender']; unset($_SESSION['sgender']);} ?>
                </div>
                <div class="form-group">
                  <label class="col-lg-4 control-label">Category</label>
                    <div class="col-lg-8">
                    <select class="form-control" id="cat" name="category">
                      <option></option>
                    <option value="GEN" <?php if(isset($_POST['category']) && ($_POST['category'] =='GEN') || ($id && $stu_data['category']=='GEN')){?> selected<?php }?> >GEN</option>
                    <option value="OBC" <?php if(isset($_POST['category']) && ($_POST['category']=='OBC')||($id && $stu_data['category']=='OBC')){?> selected<?php }?> >OBC</option>
                    <option value="SC" <?php if(isset($_POST['category'])  && ($_POST['category']=='SC')||($id && $stu_data['category']=='SC')){?> selected<?php }?> >SC</option>
                    <option value="ST" <?php if(isset($_POST['category']) && ($_POST['category']=='ST')||($id && $stu_data['category']=='ST')){?> selected<?php }?> >ST</option>
                    </select>
                    </div>
                    <?php if(isset($_SESSION['scategory'])){echo $_SESSION['scategory']; unset($_SESSION['scategory']);} ?>
                </div>
                <div class="form-group">
                  <label class="col-lg-4 control-label">D.O.B.</label>
                    <div class="col-lg-8">
                    <input type="date" class="form-control" id="dob" name="dob" value="<?php if(isset($_POST['dob'])){echo $_POST['dob'];} elseif($id){ echo $stu_data['dob'];}?>"  style="text-transform:capitalize;" placeholder="DD-MM-YYYY">
                    </div>
                    <?php if(isset($_SESSION['sdob'])){echo $_SESSION['sdob']; unset($_SESSION['sdob']);} ?>
                </div>
                <div class="form-group">
                  <label class="col-lg-4 control-label">Landline No.</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="ll_no" name="ll_no" value="<?php if(isset($_POST['ll_no'])){echo $_POST['ll_no'];} elseif($id){ echo $stu_data['ll_no'];}?>"  style="text-transform:capitalize;">
                    </div>
                </div>
                <div class="form-group">
                  <label class="col-lg-4 control-label profile_chng_color">Live at</label>
                      <div class="col-lg-8">
                      <select onchange="address(this.value,'')" class="form-control" id="cat" name="leave_at">
                          <option></option>
                        <option value="provided" <?php if(isset($_POST['leave_at'])&&($_POST['leave_at']=='provided')||($id && $stu_data['leave_at']=='provided')){?> selected <?php } ?>>Provided PG</option>
                        <option value="self" <?php if(isset($_POST['leave_at'])&&($_POST['leave_at']=='self house')||($id && $stu_data['leave_at']=='self')){?> selected <?php } ?>>Self House</option>
                        <option value="pg" <?php if(isset($_POST['leave_at'])&&($_POST['leave_at']=='pg')||($id && $stu_data['leave_at']=='pg')){?> selected <?php } ?>>Other PG</option>
                          </select>
                          </div>
                          <?php if(isset($_SESSION['leaveat'])){echo $_SESSION['leaveat']; unset($_SESSION['leaveat']);} ?>

                                </div>
                          <div id="address_part"></div>      
                    
                    <div class="form-group">
                    <label class="col-lg-4 control-label profile_chng_color">Scholarship</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="pin" name="scholarship" onchange="show_reson(this.value)" value="<?php if(isset($_POST['scholarship'])){echo $_POST['scholarship'];} elseif($id){ echo $stu_data['scholarship'];}else{echo "0";}?>"  onkeyup="this.value=this.value.replace(/[^0-9]/g,'');" style="text-transform:capitalize;">
                    </div>
                  </div>
          
                  

                  <div class="form-group">
                    <label class="col-lg-4 control-label profile_chng_color">Scholar Reason</label>
                    <div class="col-lg-8">

                      <select class="form-control" disabled name="scholar_reason" onchange="loadSub(this.value,'')" id="reson">
                        <option value=""></option>
                        <?php 
                        $scholarship_reson=fetchAll("select id,scholar_reason from scholarship");
                        foreach ($scholarship_reson as  $scholar_value) {
                        ?>
                          <option <?php if(isset($_POST['scholar_reason']) && $_POST['scholar_reason']==$scholar_value['id']){echo "selected";}elseif($id && $stu_data['scholar_reason']==$scholar_value['id']){ echo "selected";} ?> value="<?php echo $scholar_value['id'] ?>"><?php echo $scholar_value['scholar_reason']; ?></option>
                        <?php } ?>
                      </select>
                    </div>
                  </div>


                  <div class="form-group">
                    <label class="col-lg-4 control-label profile_chng_color">Scholar Subreason</label>
                    <div class="col-lg-8">

                      <select class="form-control" disabled id="subreason" name="scholar_subreason">
                        <option value=""></option>
                      </select>
                    </div>
                  </div>


                  <!-- <div class="form-group">
                    <label class="col-lg-4 control-label profile_chng_color">Admission/Demo</label>
                    <div class="col-lg-8">

                      <select class="form-control" name="wheree" id="subreason" onchange="showAD(this.value)" required name="wheree">
                        <option value=""></option>
                        <option value="addmission" <?php //if($id && $stu_data['wheree']='addmission'){echo "selected";} ?>>Addmission</option>
                        <option <?php //if($id && $stu_data['wheree']='demo'){echo "selected";} ?> value="demo">Demo</option>
                      </select>
                    </div>
                  </div>
                  <div id="demo-session" style="display: none;">
                    <div class="form-group">
                    <label class="col-lg-4 control-label">From Date</label>
                      <div class="col-lg-8">
                      <input disabled id="from" type="date" class="form-control" value="<?php //if($id){ echo $stu_data['from_date'];}else{  echo date('Y-m-d'); }?>"   name="from_date" required   pattern=".{10}" maxlength="10"  style="text-transform:capitalize;">
                      </div>
                    </div>


                    <div class="form-group">
                      <label class="col-lg-4 control-label">To Date</label>
                      <div class="col-lg-8">
                        <input type="date" id="to" disabled class="form-control"   name="to_date" required  value="<?php// if($id) echo $stu_data['to_date']; ?>" pattern=".{10}" maxlength="10"  style="text-transform:capitalize;">
                      </div>
                    </div>
                  </div> -->



          </div>

      <div class="col-lg-6">
            <div class="form-group">
                    <label class="col-lg-4 control-label">Token No.</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" <?php if($id ){echo "readonly";} ?> onchange="show_dtl(this.value)" id="10th_roll" name="token_no" value="<?php if(isset($_POST['token_no'])){echo $_POST['token_no'];} elseif($id){ echo $stu_data['token_no'];}?>" style="text-transform:capitalize;">
                    </div>
                    <span><?php  if(isset($_SESSION['etoken'])){echo $_SESSION['etoken']; unset($_SESSION['etoken']);} ?></span>
            </div>
            <div class="form-group">
                    <label class="col-lg-4 control-label">Class X Roll No.</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="10th_roll" name="x_roll" value="<?php if(isset($_POST['x_roll'])){echo $_POST['x_roll'];} elseif($id){ echo $stu_data['x_roll'];}?>" style="text-transform:capitalize;">
                    </div>
                                        <?php if(isset($_SESSION['xroll'])){echo $_SESSION['xroll']; unset($_SESSION['xroll']);} ?>

            </div>
            <div class="form-group">
                    <label class="col-lg-4 control-label">Class X Per./ CGPA</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="10th_%" name="x_pcent" value="<?php if(isset($_POST['x_pcent'])){echo $_POST['x_pcent'];} elseif($id){ echo $stu_data['x_pcent'];}?>" style="text-transform:capitalize;">
                    </div>
                                        <?php if(isset($_SESSION['xpcent'])){echo $_SESSION['xpcent']; unset($_SESSION['xpcent']);} ?>

            </div>
            <div class="form-group">
                    <label class="col-lg-4 control-label">Class X School Name</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="x_schl_name" name="x_schl_name" value="<?php if(isset($_POST['x_schl_name'])){echo $_POST['x_schl_name'];} elseif($id){ echo $stu_data['x_schl_name'];}?>" style="text-transform:capitalize;">
                    </div>
            </div>
            <div class="form-group">
                    <label class="col-lg-4 control-label">Class X Board</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="10th_board" name="x_board" value="<?php if(isset($_POST['x_board'])){echo $_POST['x_board'];} elseif($id){ echo $stu_data['x_board'];}?>" style="text-transform:capitalize;">
                    </div>
            </div>
            <div class="form-group">
                    <label class="col-lg-4 control-label">Class XII Roll No.</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="12th_roll" name="xii_roll" value="<?php if(isset($_POST['xii_roll'])){echo $_POST['xii_roll'];} elseif($id){ echo $stu_data['xii_roll'];}?>" style="text-transform:capitalize;">
                    </div>
            </div>
            <div class="form-group">
                    <label class="col-lg-4 control-label">Class XII Per./ CGPA</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="12th_%" name="xii_pcent" value="<?php if(isset($_POST['xii_pcent'])){echo $_POST['xii_pcent'];} elseif($id){ echo $stu_data['xii_pcent'];}?>" style="text-transform:capitalize;">
                    </div>
            </div>
            <div class="form-group">
                    <label class="col-lg-4 control-label">Class XII School Name</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="xii_schl_name" name="xii_schl_name" value="<?php if(isset($_POST['xii_schl_name'])){echo $_POST['xii_schl_name'];} elseif($id){ echo $stu_data['xii_schl_name'];}?>" style="text-transform:capitalize;">
                    </div>
            </div>
            <div class="form-group">
                    <label class="col-lg-4 control-label">Class XII Board</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="12th_board" name="xii_board" value="<?php if(isset($_POST['xii_board'])){echo $_POST['xii_board'];} elseif($id){ echo $stu_data['xii_board'];}?>" style="text-transform:capitalize;">
                    </div>
            </div>

            <div class="form-group">
                    <label class="col-lg-4 control-label">NEET Roll No(If Eligible)</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="aipmt_roll" name="aipmt_roll" 
                    value="<?php if(isset($_POST['aipmt_roll'])){echo $_POST['aipmt_roll'];} elseif($id){ echo $stu_data['aipmt_roll'];}?>" style="text-transform:capitalize;">
                    </div>
            </div>

            <div class="form-group">
                    <label class="col-lg-4 control-label">AIIMS Roll No(If Eligible)</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="aiims_roll" name="aiims_roll" 
                    value="<?php if(isset($_POST['aiims_roll'])){echo $_POST['aiims_roll'];} elseif($id){ echo $stu_data['aiims_roll'];}?>" style="text-transform:capitalize;">
                    </div>
            </div>

            <div class="form-group">
                    <label class="col-lg-4 control-label">AIPVT Roll No(If Eligible)</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="aipvt_roll" name="aipvt_roll" value="<?php if(isset($_POST['aipvt_roll'])){echo $_POST['aipvt_roll'];} elseif($id){ echo $stu_data['aipvt_roll'];}?>" style="text-transform:capitalize;">
                    </div>
            </div>

            <div class="form-group">
                    <label class="col-lg-4 control-label">ICAR Roll No(If Eligible)</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="aipvt_roll" name="icar_roll" value="<?php if(isset($_POST['icar_roll'])){echo $_POST['icar_roll'];} elseif($id){ echo $stu_data['icar_roll'];}?>" style="text-transform:capitalize;">
                    </div>
            </div>

            <div class="form-group">
                    <label class="col-lg-4 control-label">RPVT Roll No(If Eligible)</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="aipvt_roll" name="rpvt_roll" value="<?php if(isset($_POST['rpvt_roll'])){echo $_POST['rpvt_roll'];} elseif($id){ echo $stu_data['rpvt_roll'];}?>" style="text-transform:capitalize;">
                    </div>
            </div>

            <div class="form-group">
                    <label class="col-lg-4 control-label">JEE MAINS Roll No(If Eligible)</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="iit_roll" name="jeem_roll" value="<?php if(isset($_POST['jeem_roll'])){echo $_POST['jeem_roll'];} elseif($id){ echo $stu_data['jeem_roll'];}?>" style="text-transform:capitalize;">
                    </div>
            </div>

            <div class="form-group">
                    <label class="col-lg-4 control-label">JEE ADV Roll No(If Eligible)</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="iit_roll" name="jeea_roll" value="
                    <?php if(isset($_POST['jeea_roll'])){echo $_POST['jeea_roll'];} elseif($id){ echo $stu_data['jeea_roll'];}?>" style="text-transform:capitalize;">
                    </div>
            </div>



                <div class="form-group">
                    <label class="col-lg-4 control-label">Feedback</label>
                    <div class="col-lg-8">
                    <select class="form-control" id="batch" name="feedback">
                        <option></option>
                        <option <?php if(isset($_POST['feedback'])&&($_POST['feedback']=='Interested')||($id && $stu_data['feedback']=='Interested')){ ?> selected <?php } ?>>Interested</option>
                        <option <?php if(isset($_POST['feedback'])&&($_POST['feedback']=='Not Interested')||($id && $stu_data['feedback']=='Not Interested')){ ?> selected <?php } ?>>Not Interested</option>
                        <option <?php if(isset($_POST['feedback'])&&($_POST['feedback']=='May be')||($id && $stu_data['feedback']=='May be')){?> selected <?php } ?>>May Be</option>
                        <option <?php if(isset($_POST['feedback'])&&($_POST['feedback']=='Need More')||($id && $stu_data['feedback']=='Need More')){?> selected <?php } ?>>Need More Counselling/ Demo</option>
                    </select>
                    </div>
                                        <?php if(isset($_SESSION['sfeedback'])){echo $_SESSION['sfeedback']; unset($_SESSION['sfeedback']);} ?>

                </div>
                                
                <div class="form-group">
                    <label class="col-lg-4 control-label">Remark</label>
                    <div class="col-lg-8">
                    <textarea class="form-control" id="remark" name="remark" style="text-transform:capitalize;"><?php if(isset($_POST['remark'])){echo $_POST['remark'];} elseif($id){ echo $stu_data['remark'];}?></textarea>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-lg-4 control-label profile_chng_color">Print Status</label>
                    <div class="col-lg-8">
                      <select name="black_list" class="form-control">
                        <option value="">Please Select Print Status</option>
                        <option <?php if($id && $stu_data['black_list']=='y'){echo "selected";} ?> value="y">No</option>
                        <option <?php if($id && $stu_data['black_list']=='n'){echo "selected";} ?> value="n">Yes</option>
                      </select>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-lg-4 control-label profile_chng_color">Upload Photo</label>
                    <div class="col-lg-8">
                    <input type="file" class="form-control" accept="image/x-png,image/jpeg,image/jpg" id="propic" name="propic" value="">Max. Upload Size : 2 MB
                    </div>
                </div>
                <div>
                  <?php 
                    include_once("module/stu_profile/cam.php");
                  ?>
                </div>

                <div class="form-group">
                    <label class="col-lg-4 control-label">Profile Photo</label>
                    <div class="col-lg-8">
                    <?php if($id && $stu_data['propic']!='' ){ ?>
                    <img src="<?php echo ROOT.$stu_data['propic']; ?>" height="200" width="100%" />
                    <?php } ?>
                    </div>
                </div>
                <div class="form-group">
                  <label class="col-lg-4 control-label">Note</label>
                    <div class="col-lg-8">
                      <textarea name="note" id="note" class="form-control"><?php if($id){echo $stu_data['note'];} ?></textarea>
                    </div>
                    <?php if(isset($_SESSION['note'])){echo $_SESSION['note']; unset($_SESSION['note']);} ?>
                </div>
                
                <?php if( $id=='' || $id && $stu_data['wheree']!='leave'){ ?>
                <div class="form-group">
                    <div class="col-lg-8 col-lg-offset-4">
                    <button type="submit" id="submit" class="btn btn-danger btn-sm btn-block" style="font-family:'Century Gothic'; font-size:14px; font-weight:bold;">SUBMIT & GENERATE TOKEN</button>
                    </div>
                </div>
                <?php } ?>

      </div>
                <span id="dtl" ></span>

</form>
</div>
<script type="text/javascript">
    function show_batch(class_id,batch_id){
        if(class_id){
          // alert("aja");
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
          // alert("mat aa");
            $('#batch').attr('disabled','disabled');
            $('#batch').html("<option value=''>Select Class First</option>")
        }
    }
</script>
<script type="text/javascript">
    function sameaddr(){
      var a=$('#same_addr').prop('checked');
        if(a == true){
            var add=$('#adrs').val();
            var state=$('#state').val();
            var district=$('#district').val();
            var tehsil=$('#tehsil').val();
            var city=$('#city').val();
            var pin=$('#pin').val();
            $('#p_adrs').html(add);
            $('#p_state').val(state);
            $('#p_district').val(district);
            $('#p_tehsil').val(tehsil);
            $('#p_city').val(city);
            $('#p_pin').val(pin);
        }else{
            $('#p_adrs').html('');
            $('#p_state').val('');
            $('#p_district').val('');
            $('#p_tehsil').val('');
            $('#p_city').val('');
            $('#p_pin').val('');
        }
    }
</script>

<script type="text/javascript">
  function show_dtl(token_no){
        if(token_no){
            $.ajax({
                url:root_path+"module/stu_profile/show_stu_dtl.php",
                data:"token_no="+token_no,
                type:"post",
                success:function(e){
                  $('#dtl').html(e);
                }
            });
        }
  }
</script>

<script type="text/javascript">
  function address(leave_at,sid){
    $.ajax({
      url:root_path+"module/stu_profile/show_address.php",
      data:"leave_at="+leave_at+"&sid="+sid,
      type:"post",
      success:function(e){
        $('#address_part').html(e);
      }
    })
  }
  function show_address(pg_id,sid){
    // alert(pg_id);
   $.ajax({
      url:root_path+"module/stu_profile/show_pg_address.php",
      data:"pg_id="+pg_id+"&sid="+sid,
      type:"post",
      success:function(e){
        $('#pg_address').html(e);
      }
    }); 
  }

  function chkroll(){
  var roll=$('#roll').val();
  // alert(roll);
   $.ajax({
      url:root_path+"module/stu_profile/chk_roll.php",
      data:"roll="+roll,
      type:"post",
      success:function(e){
        $('#roll_error').html(e);
      }
    }); 
  }
  function chk_token(token_no){
   $.ajax({
      url:root_path+"module/stu_profile/chk_token_no.php",
      data:"token_no="+token_no,
      type:"post",
      success:function(e){
        $('#token_error').html(e);
      },error:function(e){
        alert(e);
      }
    }); 
  }
  function loadSub(reason_id,sub_reason){
    if(reason_id!=''){
      $.ajax({
        url:root_path+"module/stu_profile/load_subreason.php",
        data:"reason_id="+reason_id+"&sub_reason="+sub_reason,
        type:"post",
        success:function(e){
          $('#subreason').html(e);
          $('#subreason').removeAttr("disabled");
        },error:function(e){
          alert(e);
        }
      });
    }else if(reason_id==''){
      $('#subreason').attr('disabled','disabled');
      $('#Subreason').html("<option value=''></option>")
    } 
  }
  function showAD(add_demo){
    if(add_demo=='demo'){
      $('#demo-session').css("display","inline");
      $('#from').removeAttr("disabled");
      $('#to').removeAttr("disabled");
    }else{
      $('#demo-session').css("display","none");
      $('#from').attr("disabled","disabled");
      $('#to').attr("disabled","disabled");
    }
  }
  function show_reson(per){
    // alert(per);
    if(per>0){
      $('#reson').removeAttr('disabled');
      $('#reson').attr('required','required');
      $('#subreason').attr('required','required');
    }else{
    }
  }
</script>
<?php 
    if($id){
      // print_r($stu_data);
        ?>
        <script type="text/javascript">
          // alert("aja");
        show_batch('<?php echo $stu_data['class_id'];?>','<?php echo $stu_data['batch_id'];?>');
        </script>
        <script type="text/javascript">
          address('<?php  echo $stu_data['leave_at']; ?>','<?php echo $id;?>');
        </script>
        <script type="text/javascript">
          show_address('<?php echo $stu_data['pg_name'] ?>','<?php echo $id;?>');
        </script>
        <script type="text/javascript">
          loadSub('<?php echo  $stu_data['scholar_reason'] ?>','<?php echo $stu_data['scholar_subreason'] ?>')
        </script>
        <script type="text/javascript">
          showAD('<?php echo $stu_data['wheree']; ?>');
        </script>
        <script type="text/javascript">
          show_reson('<?php echo $stu_data['scholarship']; ?>');
        </script>
        <?php
    }elseif(isset($_POST['batch_id'])){
        ?>
            <script type="text/javascript">
        show_batch('<?php echo $_POST['class_id'];?>','<?php echo $_POST['batch_id'];?>');
        </script>
        <?php
    }
?>