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
                    <input type="text" class="form-control" id="roll" name="roll_no" value="" pattern=".{5}" maxlength="5"  onkeyup="this.value=this.value.replace(/[^0-9]/g,'');" style="text-transform:capitalize;">
                    </div>
                    <?php if(isset($_SESSION['eroll'])){echo $_SESSION['eroll']; unset($_SESSION['eroll']);} ?>
                </div>
                <input type="hidden" name="id" <?php if($id){ ?> value="<?php echo $id; ?>" <?php  } else{?> id="stu_id" <?php } ?>>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Student Name</label>
                    <div class="col-lg-8">
                    <input type="text"  class="form-control" id="s_name" name="name" value="" style="text-transform:capitalize;">
                    </div>
                    <?php if(isset($_SESSION['ename'])){echo $_SESSION['ename']; unset($_SESSION['ename']);} ?>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Father Name</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="f_name" name="f_name" value="" style="text-transform:capitalize;">
                    </div>
                    <?php if(isset($_SESSION['fname'])){echo $_SESSION['fname']; unset($_SESSION['fname']);} ?>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Mother Name</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="m_name" name="m_name" value="" style="text-transform:capitalize;">
                    </div>
                    <?php if(isset($_SESSION['mname'])){echo $_SESSION['mname']; unset($_SESSION['mname']);} ?>
                </div>
                <div class="form-group">
                  <label class="col-lg-4 control-label">Select Class</label>
                    <div class="col-lg-8">
                    <select onchange="show_batch(this.value,'')" id="class_id"  class="form-control"   name="class_id">
                        <option value="">Please Select Class</option>
                        <?php 
                            $class_data=fetchAll("select id,name from class");
                            foreach ($class_data as $class_value) {
                        ?>
                                <option <?php if((isset($_POST['class_id']) && $_POST['class_id']==$class_value['id']) || ($id && $class_fee_dtl['class_id']==$class_value['id'])){echo "selected";} ?> value="<?php echo $class_value['id']; ?>"><?php echo $class_value['name'] ?></option>
                            <?php }?>
                    </select>
                    <?php if(isset($_SESSION['eclass_id'])){echo $_SESSION['eclass_id']; unset($_SESSION['eclass_id']);} ?>
                    </div>
                </div>
                <div class="form-group">
                  <label class="col-lg-4 control-label">Select Batch</label>
                    <div  class="col-lg-8">
                    <select id="batch" class="form-control" id="" tabindex="2" name="batch_id" disabled="disabled">
                        <option value="">Select class first</option>
                    </select>
                    <?php if(isset($_SESSION['ebatch_id'])){echo $_SESSION['ebatch_id']; unset($_SESSION['ebatch_id']);} ?>
                    </div>
                </div>
                
                <div class="form-group">
                	<label class="col-lg-4 control-label">Email ID</label>
                    <div class="col-lg-8">
                    <input type="email" class="form-control" id="email" name="email" value="">
                    </div>
                      <?php if(isset($_SESSION['mail'])){echo $_SESSION['mail']; unset($_SESSION['mail']);} ?>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Mobile No. (Father)</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="f_mobile" name="f_mobile" value="" pattern=".{10}" maxlength="11" onkeyup="this.value=this.value.replace(/[^0-9]/g,'');" style="text-transform:capitalize;">
                    </div>
                      <?php if(isset($_SESSION['fmobile'])){echo $_SESSION['fmobile']; unset($_SESSION['fmobile']);} ?>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Mobile No. (Mother)</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="m_mobile" name="m_mobile" value="" pattern=".{10}" maxlength="10" onkeyup="this.value=this.value.replace(/[^0-9]/g,'');" style="text-transform:capitalize;">
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Mobile No. (Student)</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="s_mobile" name="s_mobile" value="" pattern=".{10}" maxlength="10" onkeyup="this.value=this.value.replace(/[^0-9]/g,'');" style="text-transform:capitalize;">
                    </div>
                      <?php if(isset($_SESSION['smobile'])){echo $_SESSION['smobile']; unset($_SESSION['smobile']);} ?>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Gender</label>
                    <div class="col-lg-8">
                    <select class="form-control" id="gender" name="gender">
                    	<option></option>
                        <option>Male</option>
                        <option>Female</option>
                    </select>
                    </div>
                      <?php if(isset($_SESSION['sgender'])){echo $_SESSION['sgender']; unset($_SESSION['sgender']);} ?>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Category</label>
                    <div class="col-lg-8">
                    <select class="form-control" id="cat" name="category">
                    	<option></option>
                        <option>GEN</option>
                        <option>OBC</option>
                        <option>SC</option>
                        <option>ST</option>
                    </select>
                    </div>
                      <?php if(isset($_SESSION['scategory'])){echo $_SESSION['scategory']; unset($_SESSION['scategory']);} ?>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">D.O.B.</label>
                    <div class="col-lg-8">
                    <input type="date" class="form-control" id="dob" name="dob" value="" pattern=".{10}" maxlength="10" onkeyup="this.value=this.value.replace(/[^0-9]/g,'');" style="text-transform:capitalize;" placeholder="DD-MM-YYYY">
                    </div>
                      <?php if(isset($_SESSION['sdob'])){echo $_SESSION['sdob']; unset($_SESSION['sdob']);} ?>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Landline No.</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="ll_no" name="ll_no" value="" >
                    </div>
                </div>
                <p>Correspondance Address</p>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Address</label>
                    <div class="col-lg-8">
                    <textarea class="form-control" id="adrs" name="c_address" style="text-transform:capitalize;"></textarea>
                    </div>
                    <?php if(isset($_SESSION['cadd'])){echo $_SESSION['cadd']; unset($_SESSION['cadd']);} ?>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">State</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="state" name="c_state" value="" style="text-transform:capitalize;">
                    </div>
                    <?php if(isset($_SESSION['cstate'])){echo $_SESSION['cstate']; unset($_SESSION['cstate']);} ?>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">District</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="district" name="c_district" value="" style="text-transform:capitalize;">
                  </div>
                    <?php if(isset($_SESSION['cdistrict'])){echo $_SESSION['cdistrict']; unset($_SESSION['cdistrict']);} ?>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Tehsil</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="tehsil" name="c_tehsil" value="" style="text-transform:capitalize;">
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">City/ Town</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="city" name="c_city" value="" style="text-transform:capitalize;">
                    </div>
                    <?php if(isset($_SESSION['ccity'])){echo $_SESSION['ccity']; unset($_SESSION['ccity']);} ?>
                </div>

                <div class="form-group">
                	<label class="col-lg-4 control-label">Pin No.</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="pin" name="c_pin" value="" pattern=".{6}" maxlength="6" onkeyup="this.value=this.value.replace(/[^0-9]/g,'');" style="text-transform:capitalize;">
                    </div>
                    <?php if(isset($_SESSION['cpin'])){echo $_SESSION['cpin']; unset($_SESSION['cpin']);} ?>
                </div>

                <p><input type="checkbox" id="same_addr" onclick="sameaddr()" /> Permanent Address (Tick if Same as Correspondance)</p>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Address</label>
                    <div class="col-lg-8">
                    <textarea class="form-control" id="p_adrs" name="p_address" style="text-transform:capitalize;"></textarea>
                    </div>
                    <?php if(isset($_SESSION['padd'])){echo $_SESSION['padd']; unset($_SESSION['padd']);} ?>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">State</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="p_state" name="p_state" value="" style="text-transform:capitalize;">
                    </div>
                    <?php if(isset($_SESSION['pstate'])){echo $_SESSION['pstate']; unset($_SESSION['pstate']);} ?>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">District</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="p_district" name="p_district" value="" style="text-transform:capitalize;">
                    </div>
                    <?php if(isset($_SESSION['pdistrict'])){echo $_SESSION['pdistrict']; unset($_SESSION['pdistrict']);} ?>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Tehsil</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="p_tehsil" name="p_tehsil" value="" style="text-transform:capitalize;">
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">City/ Town</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="p_city" name="p_city" value="" style="text-transform:capitalize;">
                    </div>
                    <?php if(isset($_SESSION['pcity'])){echo $_SESSION['pcity']; unset($_SESSION['pcity']);} ?>
                </div>

                <div class="form-group">
                	<label class="col-lg-4 control-label">Pin No.</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="p_pin" name="p_pin" value="" pattern=".{6}" maxlength="6" onkeyup="this.value=this.value.replace(/[^0-9]/g,'');" style="text-transform:capitalize;">
                    </div>
                    <?php if(isset($_SESSION['ppin'])){echo $_SESSION['ppin']; unset($_SESSION['ppin']);} ?>
                </div>
            </div>

      <div class="col-lg-6">
      		<div class="form-group">
                	<label class="col-lg-4 control-label">Token No.</label>
                    <div class="col-lg-8">
                    <input type="text" onchange="show_dtl(this.value)" class="form-control" id="10th_roll"  value="" style="text-transform:capitalize;">
                    </div>
            </div>
            <div class="form-group">
                	<label class="col-lg-4 control-label">Class X Roll No.</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="10th_roll" name="x_roll" value="" style="text-transform:capitalize;">
                    </div>
                    <?php if(isset($_SESSION['xroll'])){echo $_SESSION['xroll']; unset($_SESSION['xroll']);} ?>
            </div>
      		<div class="form-group">
                	<label class="col-lg-4 control-label">Class X Per./ CGPA</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="10th_%" name="x_pcent" value="" style="text-transform:capitalize;">
                    </div>
                    <?php if(isset($_SESSION['xpcent'])){echo $_SESSION['xpcent']; unset($_SESSION['xpcent']);} ?>
            </div>
            <div class="form-group">
                	<label class="col-lg-4 control-label" required >Class X School Name</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="x_schl_name" name="x_schl_name" value="" style="text-transform:capitalize;">
                    </div>
            </div>
            <div class="form-group">
                	<label class="col-lg-4 control-label" required >Class X Board</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="10th_board" name="x_board" value="" style="text-transform:capitalize;">
                    </div>
            </div>
            <div class="form-group">
                	<label class="col-lg-4 control-label">Class XII Roll No.</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="12th_roll" name="xii_roll" value="" style="text-transform:capitalize;">
                    </div>
            </div>
            <div class="form-group">
                	<label class="col-lg-4 control-label">Class XII Per./ CGPA</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="12th_%" name="xii_pcent" value="" style="text-transform:capitalize;">
                    </div>
            </div>
            <div class="form-group">
                	<label class="col-lg-4 control-label">Class XII School Name</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="xii_schl_name" name="xii_schl_name" value="" style="text-transform:capitalize;">
                    </div>
            </div>
            <div class="form-group">
                	<label class="col-lg-4 control-label">Class XII Board</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="12th_board" name="xii_board" value="" style="text-transform:capitalize;">
                    </div>
            </div>

            <div class="form-group">
                	<label class="col-lg-4 control-label">NEET Roll No(If Eligible)</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="aipmt_roll" name="aipmt_roll" value="" style="text-transform:capitalize;">
                    </div>
            </div>

            <div class="form-group">
                	<label class="col-lg-4 control-label">AIIMS Roll No(If Eligible)</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="aiims_roll" name="aiims_roll" value="" style="text-transform:capitalize;">
                    </div>
            </div>

            <div class="form-group">
                	<label class="col-lg-4 control-label">AIPVT Roll No(If Eligible)</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="aipvt_roll" name="aipvt_roll" value="" style="text-transform:capitalize;">
                    </div>
            </div>

            <div class="form-group">
                	<label class="col-lg-4 control-label">ICAR Roll No(If Eligible)</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="aipvt_roll" name="icar_roll" value="" style="text-transform:capitalize;">
                    </div>
            </div>

            <div class="form-group">
                	<label class="col-lg-4 control-label">RPVT Roll No(If Eligible)</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="aipvt_roll" name="rpvt_roll" value="" style="text-transform:capitalize;">
                    </div>
            </div>

            <div class="form-group">
                	<label class="col-lg-4 control-label">JEE MAINS Roll No(If Eligible)</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="iit_roll" name="jeem_roll" value="" style="text-transform:capitalize;">
                    </div>
            </div>

            <div class="form-group">
                	<label class="col-lg-4 control-label">JEE ADV Roll No(If Eligible)</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="iit_roll" name="jeea_roll" value="" style="text-transform:capitalize;">
                    </div>
            </div>

                <div class="form-group">
                	<label class="col-lg-4 control-label">Interested In :</label>
                    <div class="col-lg-8">
                    <select class="form-control" id="batch" name="send_to">
                    	<option></option>
                        <option>Counselling</option>
                        <option>Demo</option>
                        <option>Admission</option>
                    </select>
                    </div>
                    <?php if(isset($_SESSION['sendto'])){echo $_SESSION['sendto']; unset($_SESSION['sendto']);} ?>
                </div>

                <div class="form-group">
                	<label class="col-lg-4 control-label">Refers To :</label>
                    <div class="col-lg-8">
                    <select class="form-control" id="batch" name="refer_to">
                    	<option></option>
                        <option>Counsellor</option>
                        <option>Account Section</option>
                    </select>
                    </div>
                    <?php if(isset($_SESSION['referto'])){echo $_SESSION['referto']; unset($_SESSION['referto']);} ?>
                </div>

                <div class="form-group">
                	<label class="col-lg-4 control-label">Feedback</label>
                    <div class="col-lg-8">
                    <select class="form-control" id="batch" name="feedback">
                    	<option></option>
                        <option>Interested</option>
                        <option>Not Interested</option>
                        <option>May Be</option>
                        <option>Need More Counselling/ Demo</option>
                    </select>
                    </div>
                    <?php if(isset($_SESSION['sfeedback'])){echo $_SESSION['sfeedback']; unset($_SESSION['sfeedback']);} ?>
                </div>
								<div class="form-group">
									<label class="col-lg-4 control-label">leave at</label>
										<div class="col-lg-8">
										<select class="form-control" id="cat" name="leave_at">
											<option></option>
												<option>provided pg</option>
												<option>self house</option>
												<option>pg</option>
										</select>
										</div>
                    <?php if(isset($_SESSION['leaveat'])){echo $_SESSION['leaveat']; unset($_SESSION['leaveat']);} ?>
								</div>
								<div class="form-group">
									<label class="col-lg-4 control-label">PG Name</label>
										<div class="col-lg-8">
										<select class="form-control" id="cat" name="pg_name">
											<option></option>
												<option>abc</option>
												<option>def</option>
												<option>pqr</option>
												<option>ST</option>
										</select>
										</div>
                    <?php if(isset($_SESSION['pgname'])){echo $_SESSION['pgname']; unset($_SESSION['pgname']);} ?>
								</div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Remark</label>
                    <div class="col-lg-8">
                    <textarea class="form-control" id="remark" name="remark" style="text-transform:capitalize;"></textarea>
                    </div>
                </div>

                <div class="form-group">
                	<label class="col-lg-4 control-label" required >Upload Photo</label>
                    <div class="col-lg-8">
                    <input type="file" class="form-control" id="propic" name="propic">
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Profile Photo</label>
                    <div class="col-lg-8">
                    <img src="images/pna.jpg" height="200" width="100%" />
                    </div>
                </div>
								<div class="form-group">
                	<label class="col-lg-4 control-label"required >10th Marksheet</label>
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
                	<label class="col-lg-4 control-label"required>Identity Card</label>
                    <div class="col-lg-8">
                    <input type="file" class="form-control" id="propic" name="identity" value="">
                    </div>
                </div>

            <div class="form-group">
                	<div class="col-lg-8 col-lg-offset-4">
                    <button type="submit"  id="submit" class="btn btn-danger btn-sm btn-block" style="font-family:'Century Gothic'; font-size:14px; font-weight:bold;">SUBMIT & GENERATE TOKEN</button>
                    </div> This will send message also.
                </div>
                <span id="dtl" style="display: none;"></span>
      </div>
</form>
</div>
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
<script type="text/javascript">
    function sameaddr(){
        if($("#same_addr").prop('checked') == true){
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
<?php 
    if($id){
        ?>
        <script type="text/javascript">
        show_batch('<?php echo $class_fee_dtl['class_id'];?>','<?php echo $class_fee_dtl['batch_id'];?>');
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