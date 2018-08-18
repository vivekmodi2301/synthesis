<?php
$id="";
if(isset($_GET['id'])){
        $id=$_GET['id'];
        $stu_data=fetchOne("select id,name,token_no,f_name,m_name,f_mobile,m_mobile,s_mobile,class_id,batch_id,email,roll_no,gender,category,dob,ll_no,c_address,c_city,c_tehsil,c_district,c_pin,c_state,p_address,p_city,p_state,p_tehsil,p_district,p_pin,x_roll,x_pcent,x_schl_name,x_board,xii_roll,xii_pcent,xii_schl_name,xii_board,aipmt_roll,aiims_roll,aipvt_roll,icar_roll,rpvt_roll,jeem_roll,jeea_roll,send_to,refer_to,feedback,leave_at,pg_name,remark,propic,x_marksheet,xii_marksheet,identity from stu_profile where id=$id");
}
if(isset($_POST['name']))
{
  if(isset($_FILES['propic']['name']) && $_FILES['propic']['name'])
    {
    if($_FILES['propic']['type']=='image/jpeg'){
        $_POST['propic']=time().'_'.$_FILES['propic']['name'];
        move_uploaded_file($_FILES['propic']['tmp_name'],'include/student_propic/'.$_POST['propic']);
    }
    }
  if(isset($_FILES['x_marksheet']['name']) && $_FILES['x_marksheet']['name'])
  {
    if($_FILES['x_marksheet']['type']=='image/jpeg'){
      $_POST['x_marksheet']=time().'_'.$_FILES['x_marksheet']['name'];
      move_uploaded_file($_FILES['x_marksheet']['tmp_name'],'include/marksheets/'.$_POST['x_marksheet']);
    }
  }
  if(isset($_FILES['xii_marksheet']['name']) && $_FILES['xii_marksheet']['name'])
  {
    if($_FILES['xii_marksheet']['type']=='image/jpeg'){
      $_POST['xii_marksheet']=time().'_'.$_FILES['xii_marksheet']['name'];
      move_uploaded_file($_FILES['xii_marksheet']['tmp_name'],'include/marksheets/'.$_POST['xii_marksheet']);
    }
  }
  if(isset($_FILES['identity']['name']) && $_FILES['identity']['name'])
  {
    if($_FILES['identity']['type']=='image/jpeg'){
      $_POST['identity']=time().'_'.$_FILES['identity']['name'];
      move_uploaded_file($_FILES['identity']['tmp_name'],'include/identity/'.$_POST['identity']);
    }
  }

  $success=1;
if( $_POST['roll_no']=="")
  {
  $_SESSION['eroll']="Enter Roll No.";
  $success=0;
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
if($_POST['m_name']=="")
{
  $_SESSION['mname']="Enter Your Mother Name";
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
if($_POST['email']=="")
{
  $_SESSION['mail']="Enter Your Mail";
  $success=0;
}
if($_POST['s_mobile']=="")
{
  $_SESSION['smobile']="Enter Your Mobile no.";
  $success=0;
}
if($_POST['f_mobile']=="")
{
  $_SESSION['fmobile']="Enter Your Father Mobile no.";
  $success=0;
}
if(!isset($_POST['gender']) || $_POST['gender']=="")
{
  $_SESSION['sgender']="Select Your Gender";
  $success=0;
}
if(!isset($_POST['category']) || $_POST['category']=="")
{
  $_SESSION['scategory']="Select Your Category";
  $success=0;
}
if( $_POST['dob']=="")
{
  $_SESSION['sdob']="Enter Your Date Of Birth";
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
if(!isset($_POST['send_to']) || $_POST['send_to']=="")
{
  $_SESSION['sendto']="Select This Dropdown";
  $success=0;
}
if(!isset($_POST['refer_to']) || $_POST['refer_to']=="")
{
  $_SESSION['referto']="Select This Dropdown";
  $success=0;
}
if(!isset($_POST['feedback']) || $_POST['feedback']=="")
{
  $_SESSION['sfeedback']="Select Your Feedback";
  $success=0;
}
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

$id=$_POST['id'];
usnet($_POST['id']);
if($success)
{
  $_POST['wheree']='addmission';
  addUpdate('stu_profile',$_POST,$id);
?>
<script type="text/javascript">
  location.href=root_path+"index/stu_profile/syn_see_stu_profile"
  </script>
<?php } }
 ?>
<div class="col-lg-12" style="border:1px dotted #CCC;">
<form role="form" class="form-horizontal" enctype="multipart/form-data" method="post">
	<div class="col-lg-6">
            	<div class="form-group">
                	<label class="col-lg-4 control-label">Roll No.</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="roll" name="roll" value="<?php if($id){ echo $stu_data['roll_no'];}?>" pattern=".{5}" maxlength="5" onkeyup="this.value=this.value.replace(/[^0-9]/g,'');" disabled="disabled" style="text-transform:capitalize;">
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Student Name</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="s_name" name="name" value="<?php if($id){ echo $stu_data['name'];}?>"style="text-transform:capitalize;">
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Father Name</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="f_name" name="f_name" value="<?php if($id){ echo $stu_data['f_name'];}?>" style="text-transform:capitalize;">
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Mother Name</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="m_name" name="m_name" value="<?php if($id){ echo $stu_data['m_name'];}?>" style="text-transform:capitalize;">
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Class</label>
                    <div class="col-lg-8">
                    <select class="form-control" id="class" name="class_id">
                        <option></option>
                        <?php
                        foreach ($clist as $clist)
                        {?>
                            <option value="<?php echo $clist['id'];?>"
                             <?php if($id && $clist['id']==$stu_data['class_id'])
                                                { echo "selected"; } 
                                    ?>  >
                                    <?php echo $clist['name'];?>
                            </option>

                        <?php
                    }
                    ?>
                    </select>
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Batch</label>
                    <div class="col-lg-8">
                    <select class="form-control" id="batch" name="batch_id">
                    	<option></option>
                        <?php
                        foreach ($blist as $blist)
                        {?>
                            <option value="<?php echo $blist['id'];?>"
                             <?php if($id && $blist['id']==$stu_data['batch_id'])
                                                { echo "selected"; } 
                                    ?>  >
                                    <?php echo $blist['name'];?>
                            </option>

                        <?php
                    }
                    ?>
                    </select>
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Email ID</label>
                    <div class="col-lg-8">
                    <input type="email" class="form-control" id="email" name="email" value="<?php if($id){ echo $stu_data['email'];}?>">
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Mobile No. (Father)</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="f_mobile" name="f_mobile" value="<?php if($id){ echo $stu_data['f_mobile'];}?>" pattern=".{10}" maxlength="10" onkeyup="this.value=this.value.replace(/[^0-9]/g,'');" style="text-transform:capitalize;">
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Mobile No. (Mother)</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="m_mobile" name="m_mobile" value="<?php if($id){ echo $stu_data['m_mobile'];}?>" pattern=".{10}" maxlength="10" onkeyup="this.value=this.value.replace(/[^0-9]/g,'');" style="text-transform:capitalize;">
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Mobile No. (Student)</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="s_mobile" name="s_mobile" value="<?php if($id){ echo $stu_data['s_mobile'];}?>" pattern=".{10}" maxlength="10" onkeyup="this.value=this.value.replace(/[^0-9]/g,'');" style="text-transform:capitalize;">
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Gender</label>
                    <div class="col-lg-8">
                    <select class="form-control" id="gender" name="gender">
                    	<option></option>
                    <option <?php if($stu_data['gender']=='male'){?> selected <?php }?>  value="male">Male</option>
                <option <?php if($stu_data['gender']=='female'){?> selected <?php }?> value="female" >Female</option>
                    </select>
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Category</label>
                    <div class="col-lg-8">
                    <select class="form-control" id="cat" name="category">
                    	<option></option>
                    <option <?php if($stu_data['category']=='GEN'){?> selected<?php}?> >GEN</option>
                    <option <?php if($stu_data['category']=='OBC'){?> selected<?php}?> >OBC</option>
                    <option <?php if($stu_data['category']=='SC'){?> selected<?php}?> >SC</option>
                    <option <?php if($stu_data['category']=='ST'){?> selected<?php}?> >ST</option>
                    </select>
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">D.O.B.</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="dob" name="dob" value="<?php if($id){ echo $stu_data['dob'];}?>" pattern=".{10}" maxlength="10" onkeyup="this.value=this.value.replace(/[^0-9]/g,'');" style="text-transform:capitalize;" placeholder="DD-MM-YYYY">
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Landline No.</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="ll_no" name="ll_no" value="<?php if($id){ echo $stu_data['ll_no'];}?>" pattern=".{10}" maxlength="10" onkeyup="this.value=this.value.replace(/[^0-9]/g,'');" style="text-transform:capitalize;">
                    </div>
                </div>
                <p>Correspondance Address</p>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Address</label>
                    <div class="col-lg-8">
                    <textarea class="form-control" id="adrs" name="c_address" style="text-transform:capitalize;"><?php if($id){ echo $stu_data['c_address'];}?></textarea>
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">State</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="state" name="c_state" value="<?php if($id){ echo $stu_data['c_state'];}?>" style="text-transform:capitalize;">
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">District</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="c_district" name="c_district" value="<?php if($id){ echo $stu_data['c_district'];}?>" style="text-transform:capitalize;">
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Tehsil</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="c_tehsil" name="c_tehsil" 
                    value="<?php if($id){ echo $stu_data['c_tehsil'];}?>" style="text-transform:capitalize;">
                    </div>
                </div><div class="form-group">
                    <label class="col-lg-4 control-label">City/ Town</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="" name="c_city" value="<?php if($id){ echo $stu_data['c_city'];}?>" style="text-transform:capitalize;">
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-lg-4 control-label">Pin No.</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="pin" name="c_pin" value="<?php if($id){ echo $stu_data['c_pin'];}?>" pattern=".{6}" maxlength="6" onkeyup="this.value=this.value.replace(/[^0-9]/g,'');" style="text-transform:capitalize;">
                    </div>
                </div>

                <p><input type="checkbox" /> Permanent Address (Tick if Same as Correspondance)</p>
                <div class="form-group">
                    <label class="col-lg-4 control-label">Address</label>
                    <div class="col-lg-8">
                    <textarea class="form-control" id="adrs" name="p_address" style="text-transform:capitalize;"><?php if($id){ echo $stu_data['p_address'];}?></textarea>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-lg-4 control-label">State</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="state" name="p_state" value="<?php if($id){ echo $stu_data['p_state'];}?>" style="text-transform:capitalize;">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-lg-4 control-label">District</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="district" name="p_district" value="<?php if($id){ echo $stu_data['p_district'];}?>" style="text-transform:capitalize;">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-lg-4 control-label">Tehsil</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="district" name="p_tehsil" value="<?php if($id){ echo $stu_data['p_tehsil'];}?>" style="text-transform:capitalize;">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-lg-4 control-label">City/ Town</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="district" name="p_city" value="<?php if($id){ echo $stu_data['p_city'];}?>" style="text-transform:capitalize;">
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-lg-4 control-label">Pin No.</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="pin" name="p_pin" value="<?php if($id){ echo $stu_data['p_pin'];}?>" pattern=".{6}" maxlength="6" onkeyup="this.value=this.value.replace(/[^0-9]/g,'');" style="text-transform:capitalize;">
                    </div>
                </div>
            </div>

      <div class="col-lg-6">
            <div class="form-group">
                    <label class="col-lg-4 control-label">Token No.</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="10th_roll" name="token_no" value="<?php if($id){ echo $stu_data['token_no'];}?>" style="text-transform:capitalize;">
                    </div>
            </div>
            <div class="form-group">
                    <label class="col-lg-4 control-label">Class X Roll No.</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="10th_roll" name="x_roll" value="<?php if($id){ echo $stu_data['x_roll'];}?>" style="text-transform:capitalize;">
                    </div>
            </div>
            <div class="form-group">
                    <label class="col-lg-4 control-label">Class X Per./ CGPA</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="10th_%" name="x_pcent" value="<?php if($id){ echo $stu_data['x_pcent'];}?>" style="text-transform:capitalize;">
                    </div>
            </div>
            <div class="form-group">
                    <label class="col-lg-4 control-label">Class X School Name</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="x_schl_name" name="x_schl_name" value="<?php if($id){ echo $stu_data['x_schl_name'];}?>" style="text-transform:capitalize;">
                    </div>
            </div>
            <div class="form-group">
                    <label class="col-lg-4 control-label">Class X Board</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="10th_board" name="x_board" value="<?php if($id){ echo $stu_data['x_board'];}?>" style="text-transform:capitalize;">
                    </div>
            </div>
            <div class="form-group">
                    <label class="col-lg-4 control-label">Class XII Roll No.</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="12th_roll" name="xii_roll" value="<?php if($id){ echo $stu_data['xii_roll'];}?>" style="text-transform:capitalize;">
                    </div>
            </div>
            <div class="form-group">
                    <label class="col-lg-4 control-label">Class XII Per./ CGPA</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="12th_%" name="xii_pcent" value="<?php if($id){ echo $stu_data['xii_pcent'];}?>" style="text-transform:capitalize;">
                    </div>
            </div>
            <div class="form-group">
                    <label class="col-lg-4 control-label">Class XII School Name</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="xii_schl_name" name="xii_schl_name" value="<?php if($id){ echo $stu_data['xii_schl_name'];}?>" style="text-transform:capitalize;">
                    </div>
            </div>
            <div class="form-group">
                    <label class="col-lg-4 control-label">Class XII Board</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="12th_board" name="xii_board" value="<?php if($id){ echo $stu_data['xii_board'];}?>" style="text-transform:capitalize;">
                    </div>
            </div>

            <div class="form-group">
                    <label class="col-lg-4 control-label">NEET Roll No(If Eligible)</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="aipmt_roll" name="aipmt_roll" 
                    value="<?php if($id){ echo $stu_data['aipmt_roll'];}?>" style="text-transform:capitalize;">
                    </div>
            </div>

            <div class="form-group">
                    <label class="col-lg-4 control-label">AIIMS Roll No(If Eligible)</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="aiims_roll" name="aiims_roll" 
                    value="<?php if($id){ echo $stu_data['aiims_roll'];}?>" style="text-transform:capitalize;">
                    </div>
            </div>

            <div class="form-group">
                    <label class="col-lg-4 control-label">AIPVT Roll No(If Eligible)</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="aipvt_roll" name="aipvt_roll" value="<?php if($id){ echo $stu_data['aipvt_roll'];}?>" style="text-transform:capitalize;">
                    </div>
            </div>

            <div class="form-group">
                    <label class="col-lg-4 control-label">ICAR Roll No(If Eligible)</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="aipvt_roll" name="icar_roll" value="<?php if($id){ echo $stu_data['icar_roll'];}?>" style="text-transform:capitalize;">
                    </div>
            </div>

            <div class="form-group">
                    <label class="col-lg-4 control-label">RPVT Roll No(If Eligible)</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="aipvt_roll" name="rpvt_roll" value="<?php if($id){ echo $stu_data['rpvt_roll'];}?>" style="text-transform:capitalize;">
                    </div>
            </div>

            <div class="form-group">
                    <label class="col-lg-4 control-label">JEE MAINS Roll No(If Eligible)</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="iit_roll" name="jeem_roll" value="<?php if($id){ echo $stu_data['jeem_roll'];}?>" style="text-transform:capitalize;">
                    </div>
            </div>

            <div class="form-group">
                    <label class="col-lg-4 control-label">JEE ADV Roll No(If Eligible)</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="iit_roll" name="jeea_roll" value="<?php if($id){ echo $stu_data['jeea_roll'];}?>" style="text-transform:capitalize;">
                    </div>
            </div>

                <div class="form-group">
                    <label class="col-lg-4 control-label">Interested In :</label>
                    <div class="col-lg-8">
                    <select class="form-control" id="batch" name="send_to">
                        <option></option>
                        <option <?php if($stu_data['send_to']=='Counselling'){?> selected <?php } ?> >Counselling</option>
                        <option <?php if($stu_data['send_to']=='Demo'){?> selected <?php } ?> >Demo</option>
                        <option <?php if($stu_data['send_to']=='Admission'){?> selected <?php } ?> >Admission</option>
                    </select>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-lg-4 control-label">Refers To :</label>
                    <div class="col-lg-8">
                    <select class="form-control" id="batch" name="refer_to">
                        <option></option>
                        <option <?php if($stu_data['refer_to']=='Counsellor'){?> selected <?php } ?>>Counsellor</option>
                        <option <?php if($stu_data['refer_to']=='Account Section'){?> selected <?php } ?>>Account Section</option>
                    </select>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-lg-4 control-label">Feedback</label>
                    <div class="col-lg-8">
                    <select class="form-control" id="batch" name="feedback">
                        <option></option>
                        <option <?php if($stu_data['feedback']=='Interested'){?> selected <?php } ?>>Interested</option>
                        <option <?php if($stu_data['feedback']=='Not Interested'){?> selected <?php } ?>>Not Interested</option>
                        <option <?php if($stu_data['feedback']=='May be'){?> selected <?php } ?>>May Be</option>
                        <option <?php if($stu_data['feedback']=='Need More'){?> selected <?php } ?>>Need More Counselling/ Demo</option>
                    </select>
                    </div>
                </div>
                                <div class="form-group">
                                    <label class="col-lg-4 control-label">leave at</label>
                                        <div class="col-lg-8">
                                        <select class="form-control" id="cat" name="leave_at">
                                            <option></option>
                                                <option <?php if($stu_data['leave_at']=='provided'){?> selected <?php } ?>>provided pg</option>
                                                <option <?php if($stu_data['leave_at']=='self house'){?> selected <?php } ?>>self house</option>
                                                <option <?php if($stu_data['leave_at']=='pg'){?> selected <?php } ?>>pg</option>
                                        </select>
                                        </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-lg-4 control-label">PG Name</label>
                                        <div class="col-lg-8">
                                        <select class="form-control" id="cat" name="pg_name">
                                            <option><?php if($id){echo $stu_data['pg_name'];}?></option>
                                        </select>
                                        </div>
                                </div>
                <div class="form-group">
                    <label class="col-lg-4 control-label">Remark</label>
                    <div class="col-lg-8">
                    <textarea class="form-control" id="remark" name="remark" style="text-transform:capitalize;"><?php if($id){ echo $stu_data['remark'];}?></textarea>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-lg-4 control-label">Upload Photo</label>
                    <div class="col-lg-8">
                    <input type="file" class="form-control" id="propic" name="propic" value="">
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-lg-4 control-label">Profile Photo</label>
                    <div class="col-lg-8">
                    <img src="images/pna.jpg" height="200" width="100%" />
                    </div>
                </div>
                                <div class="form-group">
                    <label class="col-lg-4 control-label">10th Marksheet</label>
                    <div class="col-lg-8">
                    <input type="file" class="form-control" id="propic" name="x_marksheet" value="">
                    </div>
                </div>
                                <div class="form-group">
                    <label class="col-lg-4 control-label">12th Marksheet</label>
                    <div class="col-lg-8">
                    <input type="file" class="form-control" id="propic" name="xii_marksheet" value="">
                    </div>
                </div>
                                <div class="form-group">
                    <label class="col-lg-4 control-label">Identity Card</label>
                    <div class="col-lg-8">
                    <input type="file" class="form-control" id="propic" name="identity" value="">
                    </div>
                </div>

            <div class="form-group">
                    <div class="col-lg-8 col-lg-offset-4">
                    <button type="submit" name="submit" id="submit" class="btn btn-danger btn-sm btn-block" style="font-family:'Century Gothic'; font-size:14px; font-weight:bold;">SUBMIT & GENERATE TOKEN</button>
                    </div> This will send message also.
                </div>

      </div>
</form>
</div>
