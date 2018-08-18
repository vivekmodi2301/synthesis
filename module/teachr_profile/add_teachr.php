<?php
$id="";
if(isset($_GET['id'])){
    $id=$_GET['id'];
    $tdata=fetchOne("select * from teacher_profile");
    // print_r($tdata);
}
  if (isset($_POST['faculty_id'])) {
// print_r($_SESSION);exit;
        
    if(isset($_FILES['upload_resume']['name']) && $_FILES['upload_resume']['name']){
        if($_FILES['upload_resume']['type']=='application/pdf'){
            $_POST['upload_resume']=time()."_".$_FILES['upload_resume']['name'];
            move_uploaded_file($_FILES['upload_resume']['tmp_name'], "include/teacher_resume/".$_POST['upload_resume']);
        }else{
            ?>
            <script type="text/javascript">
                alert("Upload only pdf file in resume");
                location.href=root_path+"index/teachr_profile/syn_a_profile";

            </script>
            <?php
        }
    }
    if(isset($_FILES['upload_documents']['name']) && $_FILES['upload_documents']['name']){
        if($_FILES['upload_documents']['type']=='application/pdf'){
            $_POST['upload_documents']=time()."_".$_FILES['upload_documents']['name'];
            move_uploaded_file($_FILES['upload_documents']['tmp_name'], "include/teacher_documents/".$_POST['upload_documents']);
        }else{
            ?>
            <script type="text/javascript">
                alert("Upload only pdf file in documets");
                location.href=root_path+"index/teachr_profile/syn_a_profile";

            </script>
            <?php
        }
    }
    if(isset($_FILES['upload_photo']['name']) && $_FILES['upload_photo']['name']){
        if($_FILES['upload_photo']['type']=='image/jpeg'){
            $_POST['upload_photo']="include/teacher_photo/".time()."_".$_FILES['upload_photo']['name'];
            move_uploaded_file($_FILES['upload_photo']['tmp_name'], $_POST['upload_photo']);
        }else{
            ?>
            <script type="text/javascript">
                alert("Upload only jpeg file in photo");
                location.href=root_path+"index/teachr_profile/syn_a_profile";

            </script>
            <?php
        }
    }
    elseif(isset($_SESSION['image_upload'])){
        // print_r($_SESSION);exit;
        if($id && $stu_data['propic']){
          
            unlink(ROOT.$stu_data['propic']);
          
        }
        $_POST['upload_photo']=$_SESSION['image_upload'];
        unset($_SESSION['image_upload']);
    }
    $loginid = $_SESSION['logindtl']['id'];
    $_POST['submit_by']=$loginid;
    addUpdate('teacher_profile',$_POST,$id);//exit;
    ?>
    <script type="text/javascript">
        location.href=root_path+"index/teachr_profile/syn_s_profile"
    </script>
    <?php
   }
?>
<div class="col-lg-12" style="border:1px dotted #CCC;">
<form role="form" class="form-horizontal" enctype="multipart/form-data" method="post">
	<div class="col-lg-6">
            	<div class="form-group">
                	<label class="col-lg-4 control-label">Faculty ID</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="roll"  onchange="chk(this.value)" required name="faculty_id" value="<?php if($id){echo $tdata['faculty_id'];} ?>" pattern=".{5}" maxlength="5" onkeyup="this.value=this.value.replace(/[^0-9]/g,'');" style="text-transform:capitalize;">
                   <span id="chk_roll"></span>
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Faculty Name</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" required id="s_name" name="faculty_name" value="<?php if($id){echo $tdata['faculty_name'];} ?>" style="text-transform:capitalize;">
                    <span>
                    <?php
                       if (isset($_SESSION['efaculty_name'])) {
                        echo $_SESSION['efaculty_name'];
                        unset($_SESSION['efaculty_name']);
                       }
                     ?>
                </span>
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Father Name</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" required id="f_name" name="father_name" value="<?php if($id){echo $tdata['father_name'];} ?>" style="text-transform:capitalize;">
                     <span>
                    <?php
                       if (isset($_SESSION['efather_name'])) {
                        echo $_SESSION['efather_name'];
                        unset($_SESSION['efather_name']);
                       }
                     ?>
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Mother Name</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" required id="m_name" name="mother_name" value="<?php if($id){echo $tdata['mother_name'];} ?>" style="text-transform:capitalize;">
                     <span>
                    <?php
                       if (isset($_SESSION['emother_name'])) {
                        echo $_SESSION['emother_name'];
                        unset($_SESSION['emother_name']);
                       }
                     ?>
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Designation</label>
                    <div class="col-lg-8">
                    <select class="form-control" id="class" required name="desiganation">
                        <option></option>
                        <option <?php if($id && $tdata['desiganation']=='Sr. Faculty'){echo "selected";} ?>>Sr. Faculty</option>
                        <option <?php if($id && $tdata['desiganation']=='Asstt. Faculty'){echo "selected";} ?>>Asstt. Faculty</option>
                        <option <?php if($id && $tdata['desiganation']=='Trainee Faculty'){echo "selected";} ?>>Trainee Faculty</option>
                    </select>
                    <span>
                    <?php
                       if (isset($_SESSION['edesiganation'])) {
                        echo $_SESSION['edesiganation'];
                        unset($_SESSION['edesiganation']);
                       }
                     ?>
                 </span>
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Subject</label>
                    <div class="col-lg-8">
                    <select class="form-control" id="class" name="subject">
                        <option></option>
                        <option <?php if($id && $tdata['subject']=='Physics'){echo "selected";} ?>>Physics</option>
                        <option <?php if($id && $tdata['subject']=='Chemistry'){echo "selected";} ?>>Chemistry</option>
                        <option <?php if($id && $tdata['subject']=='Biology'){echo "selected";} ?>>Biology</option>
                        <option <?php if($id && $tdata['subject']=='Maths'){echo "selected";} ?>>Maths</option>
                    </select>
                    <span>
                    <?php
                       if (isset($_SESSION['esubject'])) {
                        echo $_SESSION['esubject'];
                        unset($_SESSION['esubject']);
                       }
                     ?>
                 </span>
                    </div>
                </div>
               
                <div class="form-group">
                	<label class="col-lg-4 control-label">Email ID</label>
                    <div class="col-lg-8">
                    <input type="email" class="form-control"  id="email" name="email" value="<?php if($id){echo $tdata['email'];} ?>">
                     <span>
                    <?php
                       if (isset($_SESSION['eemail'])) {
                        echo $_SESSION['eemail'];
                        unset($_SESSION['eemail']);
                       }
                     ?>
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Mobile No. (Self)</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" required id="f_mobile" name="mobile_self" value="<?php if($id){echo $tdata['mobile_self'];} ?>" pattern=".{10}" maxlength="10" onkeyup="this.value=this.value.replace(/[^0-9]/g,'');" style="text-transform:capitalize;">
                     <span>
                    <?php
                       if (isset($_SESSION['emobile_self'])) {
                        echo $_SESSION['emobile_self'];
                        unset($_SESSION['emobile_self']);
                       }
                     ?>
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Mobile No. (Father)</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="m_mobile" name="mobile_father" value="<?php if($id){echo $tdata['m_mobile'];} ?>" pattern=".{10}" maxlength="10" onkeyup="this.value=this.value.replace(/[^0-9]/g,'');" style="text-transform:capitalize;">
                     <span>
                    <?php
                       if (isset($_SESSION['emobile_father'])) {
                        echo $_SESSION['emobile_father'];
                        unset($_SESSION['emobile_father']);
                       }
                     ?>
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Mobile No. (Mother)</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="s_mobile" name="mobile_mother" value="<?php if($id){echo $tdata['mobile_mother'];} ?>" pattern=".{10}" maxlength="10" onkeyup="this.value=this.value.replace(/[^0-9]/g,'');" style="text-transform:capitalize;">
                     <span>
                    <?php
                       if (isset($_SESSION['emobile_mother'])) {
                        echo $_SESSION['emobile_mother'];
                        unset($_SESSION['emobile_mother']);
                       }
                     ?>
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Gender</label>
                    <div class="col-lg-8">
                    <select class="form-control" id="gender" required name="gender">
                    	<option></option>
                        <option <?php if($id && $tdata['gender']=='male'){echo "selected";} ?> value="male">Male</option>
                        <option <?php if($id && $tdata['gender']=='female'){echo "selected";} ?> value="female">Female</option>
                    </select>
                    <span>
                    <?php
                       if (isset($_SESSION['egender'])) {
                        echo $_SESSION['egender'];
                        unset($_SESSION['egender']);
                       }
                     ?>
                 </span>
                    </div>
                </div>

                <div class="form-group">
                	<label class="col-lg-4 control-label">D.O.B.</label>
                    <div class="col-lg-8">
                    <input type="date" class="form-control" id="dob" required name="dob" value="<?php if($id){echo $tdata['dob'];} ?>"  style="text-transform:capitalize;" placeholder="DD-MM-YYYY">
                    <span>
                    <?php
                       if (isset($_SESSION['edob'])) {
                        echo $_SESSION['edob'];
                        unset($_SESSION['edob']);
                       }
                     ?>
                 </span>
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Landline No.</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="ll_no"  name="landline_no" value="<?php if($id){echo $tdata['landline_no'];} ?>"  maxlength="10"  >
                     <span>
                    <?php
                       if (isset($_SESSION['elandline_no'])) {
                        echo $_SESSION['elandline_no'];
                        unset($_SESSION['elandline_no']);
                       }
                     ?>
                 </span>
                    </div>
                </div>
                <p>Correspondance Address</p>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Address</label>
                    <div class="col-lg-8">
                    <textarea class="form-control" id="adrs" required name="cor_address" style="text-transform:capitalize;"><?php if($id){echo $tdata['cor_address'];} ?></textarea>
                     <span>
                    <?php
                       if (isset($_SESSION['ecor_address'])) {
                        echo $_SESSION['ecor_address'];
                        unset($_SESSION['ecor_address']);
                       }
                     ?>
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">State</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="state" required name="cor_state" value="<?php if($id){echo $tdata['cor_state'];} ?>" style="text-transform:capitalize;">
                     <span>
                    <?php
                       if (isset($_SESSION['ecor_state'])) {
                        echo $_SESSION['ecor_state'];
                        unset($_SESSION['ecor_state']);
                       }
                     ?>
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">District</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="district" required name="cor_district" value="<?php if($id){echo $tdata['cor_district'];} ?>" style="text-transform:capitalize;">
                     <span>
                    <?php
                       if (isset($_SESSION['ecor_district'])) {
                        echo $_SESSION['ecor_district'];
                        unset($_SESSION['ecor_district']);
                       }
                     ?>
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Tehsil</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="tehsil" name="cor_tehsil" value="<?php if($id){echo $tdata['cor_tehsil'];} ?>" style="text-transform:capitalize;">
                     <span>
                    <?php
                       if (isset($_SESSION['ecor_tehsil'])) {
                        echo $_SESSION['ecor_tehsil'];
                        unset($_SESSION['ecor_tehsil']);
                       }
                     ?>
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">City/ Town</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" required id="city" name="cor_city_town" value="<?php if($id){echo $tdata['cor_city_town'];} ?>" style="text-transform:capitalize;">
                     <span>
                    <?php
                       if (isset($_SESSION['ecor_city_town'])) {
                        echo $_SESSION['ecor_city_town'];
                        unset($_SESSION['ecor_city_town']);
                       }
                     ?>
                    </div>
                </div>

                <div class="form-group">
                	<label class="col-lg-4 control-label">Pin No.</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="pin" required name="cor_pin" value="<?php if($id){echo $tdata['cor_pin'];} ?>" pattern=".{6}" maxlength="6" onkeyup="this.value=this.value.replace(/[^0-9]/g,'');" style="text-transform:capitalize;">
                     <span>
                    <?php
                       if (isset($_SESSION['ecor_pin'])) {
                        echo $_SESSION['ecor_pin'];
                        unset($_SESSION['ecor_pin']);
                       }
                     ?>
                    </div>
                </div>

                <p><input type="checkbox" id="same_addr" onclick="sameaddr()" /> Permanent Address (Tick if Same as Correspondance)</p>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Address</label>
                    <div class="col-lg-8">
                    <textarea class="form-control" id="p_adrs" required name="per_address" style="text-transform:capitalize;"><?php if($id){echo $tdata['per_address'];} ?></textarea>
                     <span>
                    <?php
                       if (isset($_SESSION['eper_address'])) {
                        echo $_SESSION['eper_address'];
                        unset($_SESSION['eper_address']);
                       }
                     ?>
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">State</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="p_state" required name="per_state" value="<?php if($id){echo $tdata['per_state'];} ?>" style="text-transform:capitalize;">
                     <span>
                    <?php
                       if (isset($_SESSION['eper_state'])) {
                        echo $_SESSION['eper_state'];
                        unset($_SESSION['eper_state']);
                       }
                     ?>
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">District</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="p_district" required name="per_district" value="<?php if($id){echo $tdata['per_district'];} ?>" style="text-transform:capitalize;">
                     <span>
                    <?php
                       if (isset($_SESSION['eper_district'])) {
                        echo $_SESSION['eper_district'];
                        unset($_SESSION['eper_district']);
                       }
                     ?>
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Tehsil</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="p_tehsil" name="per_tehsil" value="<?php if($id){echo $tdata['per_tehsil'];} ?>" style="text-transform:capitalize;">
                     <span>
                    <?php
                       if (isset($_SESSION['eper_tehsil'])) {
                        echo $_SESSION['eper_tehsil'];
                        unset($_SESSION['eper_tehsil']);
                       }
                     ?>
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">City/ Town</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="p_city" required name="per_city_town" value="<?php if($id){echo $tdata['per_city_town'];} ?>" style="text-transform:capitalize;">
                     <span>
                    <?php
                       if (isset($_SESSION['eper_city_town'])) {
                        echo $_SESSION['eper_city_town'];
                        unset($_SESSION['eper_city_town']);
                       }
                     ?>
                    </div>
                </div>

                <div class="form-group">
                	<label class="col-lg-4 control-label">Pin No.</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="p_pin" required name="per_pin" value="<?php if($id){echo $tdata['per_pin'];} ?>" pattern=".{6}" maxlength="6" onkeyup="this.value=this.value.replace(/[^0-9]/g,'');" style="text-transform:capitalize;">
                     <span>
                    <?php
                       if (isset($_SESSION['eper_pin'])) {
                        echo $_SESSION['eper_pin'];
                        unset($_SESSION['eper_pin']);
                       }
                    ?>
                    </div>
                </div>
            </div>

      <div class="col-lg-6">

            <div class="form-group">
                	<label class="col-lg-4 control-label">D.O.J.</label>
                    <div class="col-lg-8">
                    <input type="date" class="form-control" id="10th_roll" required name="doj" value="<?php if($id){echo $tdata['doj'];} ?>" style="text-transform:capitalize;">
                     <span>
                    <?php
                       if (isset($_SESSION['edoj'])) {
                        echo $_SESSION['edoj'];
                        unset($_SESSION['edoj']);
                       }
                     ?>
                    </div>
            </div>
      		<div class="form-group">
                	<label class="col-lg-4 control-label">D.O.L.</label>
                    <div class="col-lg-8">
                    <input type="date" class="form-control" id="10th_%" name="dol" value="<?php if($id){echo $tdata['dol'];} ?>" style="text-transform:capitalize;">
                    </div>
            </div>
            <div class="form-group">
                	<label class="col-lg-4 control-label">Salary</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="10th_school_name" required name="salary" value="<?php if($id){echo $tdata['salary'];} ?>" style="text-transform:capitalize;">
                     <span>
                    <?php
                       if (isset($_SESSION['esalary'])) {
                        echo $_SESSION['esalary'];
                        unset($_SESSION['esalary']);
                       }
                     ?>
                    </div>
            </div>
            <div class="form-group">
                	<label class="col-lg-4 control-label">Working Hour/ Per Day</label>
                    <div class="col-lg-8">
                    <input type="text" required class="form-control" id="10th_board" name="working_hour" value="<?php if($id){echo $tdata['working_hour'];} ?>" style="text-transform:capitalize;">
                     <span>
                    <?php
                       if (isset($_SESSION['eworking_hour'])) {
                        echo $_SESSION['eworking_hour'];
                        unset($_SESSION['eworking_hour']);
                       }
                     ?>
                    </div>
            </div>
            <div class="form-group">
                	<label class="col-lg-4 control-label">No. Of Classes/ Per Day</label>
                    <div class="col-lg-8">
                    <select class="form-control" id="cat" name="no_classes">
                    	<option></option>
                        <option <?php if($id && $tdata['no_classes']=='1'){echo "selected";} ?>>1</option>
                        <option <?php if($id && $tdata['no_classes']=='2'){echo "selected";} ?>>2</option>
                        <option <?php if($id && $tdata['no_classes']=='3'){echo "selected";} ?>>3</option>
                        <option <?php if($id && $tdata['no_classes']=='4'){echo "selected";} ?>>4</option>
                    </select>
                    <span>
                    <?php
                       if (isset($_SESSION['eno_classes'])) {
                        echo $_SESSION['eno_classes'];
                        unset($_SESSION['eno_classes']);
                       }
                     ?>
                 </span>
                    </div>
                </div>
            <div class="form-group">
                	<label class="col-lg-4 control-label">Office Time (IN)</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" required id="12th_roll" name="office_time_in" value="<?php if($id){echo $tdata['office_time_in'];} ?>" style="text-transform:capitalize;">
                     <span>
                    <?php
                       if (isset($_SESSION['eoffice_time_in'])) {
                        echo $_SESSION['eoffice_time_in'];
                        unset($_SESSION['eoffice_time_in']);
                       }
                     ?>
                    </div>
            </div>
            <div class="form-group">
                	<label class="col-lg-4 control-label">Office Time (OUT)</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" required id="12th_%" name="office_time_out" value="<?php if($id){echo $tdata['office_time_out'];} ?>" style="text-transform:capitalize;">
                     <span>
                    <?php
                       if (isset($_SESSION['eoffice_time_out'])) {
                        echo $_SESSION['eoffice_time_out'];
                        unset($_SESSION['eoffice_time_out']);
                       }
                     ?>
                    </div>
            </div>

                <div class="form-group">
                	<label class="col-lg-4 control-label">Joining Person :</label>
                    <div class="col-lg-8">
                    <select class="form-control" id="batch"  name="joining_person">
                    	<option></option>
                        <option <?php if($id && $tdata['joining_person']=='Mr. Shwet Sir'){echo "selected";} ?>>Mr. Shwet Sir</option>
                        <option <?php if($id && $tdata['joining_person']=='Mr. Manoj Sir'){echo "selected";} ?>>Mr. Manoj Sir</option>
                        <option <?php if($id && $tdata['joining_person']=='Mr. Jethmal Sir'){echo "selected";} ?>>Mr. Jethmal Sir</option>
                        <option <?php if($id && $tdata['joining_person']=='Mrs. Swaran Rekha Mam'){echo "selected";} ?>>Mrs. Swaran Rekha Mam</option>
                        <option <?php if($id && $tdata['joining_person']=='Other'){echo "selected";} ?>>Other</option>
                    </select>
                     <span>
                    <?php
                       if (isset($_SESSION['ejoining_person'])) {
                        echo $_SESSION['ejoining_person'];
                        unset($_SESSION['ejoining_person']);
                       }
                     ?>
                 </span>
                    </div>
                </div>

                <div class="form-group">
                	<label class="col-lg-4 control-label">Reference</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="12th_%" name="reference" value="<?php if($id){echo $tdata['reference'];} ?>" style="text-transform:capitalize;">
                     <span>
                    <?php
                       if (isset($_SESSION['ereference'])) {
                        echo $_SESSION['ereference'];
                        unset($_SESSION['ereference']);
                       }
                     ?>
                 </span>
                    </div>
            </div>

                <div class="form-group">
                	<label class="col-lg-4 control-label">Remark</label>
                    <div class="col-lg-8">
                    <textarea class="form-control" id="remark" name="remark" style="text-transform:capitalize;"><?php if($id){echo $tdata['remark'];} ?></textarea>
                     <span>
                    <?php
                       if (isset($_SESSION['eremark'])) {
                        echo $_SESSION['eremark'];
                        unset($_SESSION['eremark']);
                       }
                     ?>
                 </span>
                    </div>
                </div>

                <div class="form-group">
                	<label class="col-lg-4 control-label">Upload Resume</label>
                    <div class="col-lg-8">
                    <input type="file" class="form-control"  id="propic" name="upload_resume" value="">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-lg-4 control-label">Upload Documents</label>
                    <div class="col-lg-8">
                    <input type="file" class="form-control"  id="propic" name="upload_documents" value="">
                    </div>
                </div>

                <div class="form-group">
                	<label class="col-lg-4 control-label">Upload Photo</label>
                    <div class="col-lg-8">
                    <input type="file" class="form-control"  id="propic" name="upload_photo" value="">
                    </div>
                </div>

                <div>
                  <?php 
                    include_once("module/teachr_profile/cam.php");
                  ?>
                </div>

                <div class="form-group">
                	<label class="col-lg-4 control-label">Profile Photo</label>
                    <div class="col-lg-8">
                    <?php if($id && $tdata['upload_photo'] && file_exists("include/teacher_photo/$tdata[upload_photo]")){ ?>
                    <img src="<?php echo ROOT; ?>include/teacher_photo/<?php echo $tdata[upload_photo];?>" height="200" width="100%" />
                    <?php } else{ ?>
                    <img src="<?php echo ROOT; ?>include/images/pna.jpg" height="200" width="100%" />
                    <?php } ?>
                    </div>
                </div>

            <div class="form-group">
                	<div class="col-lg-8 col-lg-offset-4">
                    <button type="submit"  id="submit" class="btn btn-danger btn-sm btn-block" style="font-family:'Century Gothic'; font-size:14px; font-weight:bold;">SUBMIT</button>

                    </div>
                </div>
      </div>
</form>
</div>
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
	function chk(eid){
        $.ajax({
            url:root_path+"module/emp_profile/chk.php",
            data:"eid="+eid,
            type:"post",
            success:function(e){
                $('#chk_roll').html(e);
            },error:function(e){
				alert(e);
			}
        })
    }
</script>
