<?php 
    $id="";
    if(isset($_GET['id'])){
        $id=$_GET['id'];
        $emp_data=fetchOne("select * from employee_profile where id=$id");
        // print_r($emp_data);
    }
    if (isset($_POST['emp_id'])) {
        // print_r($_FILES);exit;
        if(isset($_FILES['upload_resume']['name']) && $_FILES['upload_resume']['name']){
            if($_FILES['upload_resume']['type']=='application/pdf'){
                $_POST['upload_resume']=time()."_".$_FILES['upload_resume']['name'];
                move_uploaded_file($_FILES['upload_resume']['tmp_name'], "include/emp_resume/".$_POST['upload_resume']);
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
                move_uploaded_file($_FILES['upload_documents']['tmp_name'], "include/emp_documents/".$_POST['upload_documents']);
            }else{
                ?>
                <script type="text/javascript">
                    alert("Upload only pdf file in docuemnts");
                    location.href=root_path+"index/teachr_profile/syn_a_profile";

                </script>
                <?php
            }
        }
        if(isset($_FILES['upload_photo']['name']) && $_FILES['upload_photo']['name']){
            if($_FILES['upload_photo']['type']=='image/jpeg'){
                $_POST['upload_photo']="include/emp_photo/".time()."_".$_FILES['upload_photo']['name'];
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
        
            if($id && $stu_data['propic']){
              
                unlink(ROOT.$stu_data['propic']);
              
            }
            $_POST['upload_photo']=$_SESSION['image_upload'];
            unset($_SESSION['image_upload']);
        }
        addUpdate('employee_profile',$_POST,$id);
        ?>
            <script type="text/javascript">
                location.href=root_path+"index/emp_profile/syn_s_employee";
            </script>
        <?php   
    }
?>
<div class="col-lg-12" style="border:1px dotted #CCC;">
<form role="form" class="form-horizontal" enctype="multipart/form-data"  method="post">
	<div class="col-lg-6">
            	<div class="form-group">
                	<label class="col-lg-4 control-label">Employee ID</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="roll" name="emp_id" onchange="chk(this.value)" value="<?php if($id){echo $emp_data['emp_id'];} ?>" pattern=".{8}" maxlength="8" onkeyup="this.value=this.value.replace(/[^0-9]/g,'');" style="text-transform:capitalize;">
                    <span id="chk_roll"></span>
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Employee Name</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="s_name" name="emp_name" value="<?php if($id){echo $emp_data['emp_name'];} ?>" style="text-transform:capitalize;">
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Father Name</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="f_name" name="emp_f_name" value="<?php if($id){echo $emp_data['emp_f_name'];} ?>" style="text-transform:capitalize;">
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Mother Name</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="m_name" name="emp_m_name" value="<?php if($id){echo $emp_data['emp_m_name'];} ?>" style="text-transform:capitalize;">
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Designation</label>
                    <div class="col-lg-8">
                    <select class="form-control" id="class" name="degination">
                        <option></option>
                        <option <?php if($id && $emp_data['degination']=='operator'){echo "selected";} ?> value="operator">Operator</option>
                        <option <?php if($id && ($emp_data['degination']=='manager')){echo "selected";} ?> value="manager">Manager</option>
                    </select>
                    </div>
                </div>

                <div class="form-group">
                	<label class="col-lg-4 control-label">Email ID</label>
                    <div class="col-lg-8">
                    <input type="email" class="form-control" id="email" name="email" value="<?php if($id){echo $emp_data['email'];} ?>">
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Mobile No. (Self)</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" required id="self_mobile" name="self_mobile" value="<?php if($id){echo $emp_data['self_mobile'];} ?>" pattern=".{10}" maxlength="10" onkeyup="this.value=this.value.replace(/[^0-9]/g,'');" style="text-transform:capitalize;">
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Mobile No. (2)</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="father_mobile" name="father_mobile" value="<?php if($id){echo $emp_data['father_mobile'];} ?>" pattern=".{10}" maxlength="10" onkeyup="this.value=this.value.replace(/[^0-9]/g,'');" style="text-transform:capitalize;">
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Mobile No. (3)</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="s_mobile" name="mother_mobile" value="<?php if($id){echo $emp_data['mother_mobile'];} ?>" pattern=".{10}" maxlength="10" onkeyup="this.value=this.value.replace(/[^0-9]/g,'');" style="text-transform:capitalize;">
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Gender</label>
                    <div class="col-lg-8">
                    <select class="form-control" id="gender" name="gender">
                    	<option></option>
                        <option <?php if($id && $emp_data['gender']=='male'){echo "selected";} ?> value="male">Male</option>
                        <option <?php if($id && $emp_data['gender']=='female'){echo "selected";} ?> value="female">Female</option>
                    </select>
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">D.O.B.</label>
                    <div class="col-lg-8">
                    <input type="date" class="form-control" id="dob" name="dob" value="<?php if($id){echo $emp_data['dob'];} ?>"  maxlength="10"  style="text-transform:capitalize;" placeholder="DD-MM-YYYY">
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Landline No.</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="ll_no" name="landline" value="<?php if($id){echo $emp_data['landline'];} ?>"  maxlength="10" onkeyup="this.value=this.value.replace(/[^0-9]/g,'');" style="text-transform:capitalize;">
                    </div>
                </div>
                <p>Correspondance Address</p>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Address</label>
                    <div class="col-lg-8">
                    <textarea class="form-control" id="adrs" name="corrs_address" style="text-transform:capitalize;"><?php if($id){echo $emp_data['corrs_address'];} ?></textarea>
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">State</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="state" name="corrs_state" value="<?php if($id){echo $emp_data['corrs_state'];} ?>" style="text-transform:capitalize;">
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">District</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="district" name="corrs_district" value="<?php if($id){echo $emp_data['corrs_district'];} ?>" style="text-transform:capitalize;">
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Tehsil</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="tehsil" name="corrs_tehsil" value="<?php if($id){echo $emp_data['corrs_tehsil'];} ?>" style="text-transform:capitalize;">
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">City/ Town</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="city" name="corrs_city" value="<?php if($id){echo $emp_data['corrs_city'];} ?>" style="text-transform:capitalize;">
                    </div>
                </div>
                
                <div class="form-group">
                	<label class="col-lg-4 control-label">Pin No.</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="pin" name="corrs_pin" value="<?php if($id){echo $emp_data['corrs_pin'];} ?>" pattern=".{6}" maxlength="6" onkeyup="this.value=this.value.replace(/[^0-9]/g,'');" style="text-transform:capitalize;">
                    </div>
                </div>
                
                <p><input type="checkbox" onchange="sameaddr()" id="same_addr" /> Permanent Address (Tick if Same as Correspondance)</p>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Address</label>
                    <div class="col-lg-8">
                    <textarea class="form-control" id="per_add" name="per_add" style="text-transform:capitalize;"><?php if($id){echo $emp_data['per_add'];} ?></textarea>
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">State</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="per_state" name="per_state" value="<?php if($id){echo $emp_data['per_state'];} ?>" style="text-transform:capitalize;">
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">District</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="per_district" name="per_district" value="<?php if($id){echo $emp_data['per_district'];} ?>" style="text-transform:capitalize;">
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Tehsil</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="per_tehsil" name="per_tehsil" value="<?php if($id){echo $emp_data['per_tehsil'];} ?>" style="text-transform:capitalize;">
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">City/ Town</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="per_city" name="per_city" value="<?php if($id){echo $emp_data['per_city'];} ?>" style="text-transform:capitalize;">
                    </div>
                </div>
                
                <div class="form-group">
                	<label class="col-lg-4 control-label">Pin No.</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="per_pin" name="per_pin" value="<?php if($id){echo $emp_data['per_pin'];} ?>" pattern=".{6}" maxlength="6" onkeyup="this.value=this.value.replace(/[^0-9]/g,'');" style="text-transform:capitalize;">
                    </div>
                </div>
            </div>
      
      <div class="col-lg-6">
            <div class="form-group">
                	<label class="col-lg-4 control-label">D.O.J.</label>
                    <div class="col-lg-8">
                    <input type="date" class="form-control" id="doj" name="doj" value="<?php if($id){echo $emp_data['doj'];} ?>" style="text-transform:capitalize;">
                    </div>
            </div>
      		<div class="form-group">
                	<label class="col-lg-4 control-label">D.O.L.</label>
                    <div class="col-lg-8">
                    <input type="date" class="form-control" id="dol" name="dol" value="<?php if($id){echo $emp_data['dol'];} ?>" style="text-transform:capitalize;">
                    </div>
            </div>
            <div class="form-group">
                	<label class="col-lg-4 control-label">Salary</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="salary" name="salary" value="<?php if($id){echo $emp_data['salary'];} ?>" style="text-transform:capitalize;">
                    </div>
            </div>
            <div class="form-group">
                	<label class="col-lg-4 control-label">Working Hour/ Per Day</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="working_hour" name="working_hour" value="<?php if($id){echo $emp_data['working_hour'];} ?>" style="text-transform:capitalize;">
                    </div>
            </div>
            <div class="form-group">
                	<label class="col-lg-4 control-label">Office Time (IN)</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="office_time_in" name="office_time_in" value="<?php if($id){echo $emp_data['office_time_in'];} ?>" style="text-transform:capitalize;">
                    </div>
            </div>
            <div class="form-group">
                	<label class="col-lg-4 control-label">Office Time (OUT)</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="office_time_out" name="office_time_out" value="<?php if($id){echo $emp_data['office_time_out'];} ?>" style="text-transform:capitalize;">
                    </div>
            </div>
            
                <div class="form-group">
                	<label class="col-lg-4 control-label">Joining Person :</label>
                    <div class="col-lg-8">
                    <select class="form-control" id="joining_person" name="joining_person">
                    	<option></option>
                        <option <?php if($id && $emp_data['joining_person']=='Mr. Shwet Sir'){echo "selected";} ?>>Mr. Shwet Sir</option>
                        <option <?php if($id && $emp_data['joining_person']=='Mr. Manoj Sir'){echo "selected";} ?>>Mr. Manoj Sir</option>
                        <option <?php if($id && $emp_data['joining_person']=='Mr. Jethmal Sir'){echo "selected";} ?>>Mr. Jethmal Sir</option>
                        <option <?php if($id && $emp_data['joining_person']=='Mrs. Swaran Rekha Mam'){echo "selected";} ?>>Mrs. Swaran Rekha Mam</option>
                        <option <?php if($id && $emp_data['joining_person']=='Other'){echo "selected";} ?>>Other</option>
                    </select>
                    </div>
                </div>
                
                <div class="form-group">
                	<label class="col-lg-4 control-label">Reference</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="reference" name="reference" value="<?php if($id){echo $emp_data['reference'];} ?>" style="text-transform:capitalize;">
                    </div>
            </div>
                
                <div class="form-group">
                	<label class="col-lg-4 control-label">Remark</label>
                    <div class="col-lg-8">
                    <textarea class="form-control" id="remark" name="remark" style="text-transform:capitalize;"><?php if($id){echo $emp_data['remark'];} ?></textarea>
                    </div>
                </div>
                
                <div class="form-group">
                	<label class="col-lg-4 control-label">Upload Resume</label>
                    <div class="col-lg-8">
                    <input type="file" class="form-control" id="resume" name="upload_resume" value="">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-lg-4 control-label">Upload Documents</label>
                    <div class="col-lg-8">
                    <input type="file" class="form-control" id="resume" name="upload_documents" value="">
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Upload Photo</label>
                    <div class="col-lg-8">
                    <input type="file"  class="form-control" id="photo" name="upload_photo" value="">
                    </div>
                </div>
                <div>
                  <?php 
                    include_once("module/emp_profile/cam.php");
                  ?>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Profile Photo</label>
                    <div class="col-lg-8">
                    <?php if($id && $emp_data['upload_photo'] && file_exists("include/emp_photo/$emp_data[upload_photo]")){
                        ?>
                        <img src="<?php echo ROOT ?>include/emp_photo/<?php echo $emp_data['upload_photo']; ?>" height="200" width="100%" />
                        <?php   
                    }else if($id){
                        echo "N/A";
                    }else{

                    ?>
                    <img src="<?php echo ROOT ?>include/images/pna.jpg" height="200" width="100%" />
                    <?php } ?>
                    </div>
                </div>
      		
            <div class="form-group">
                	<div class="col-lg-8 col-lg-offset-4">
                    <button type="submit"  id="submit" class="btn btn-danger btn-sm btn-block" style="font-family:'Century Gothic'; font-size:14px; font-weight:bold;">SUBMIT & GENERATE TOKEN</button>
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
            $('#per_add').html(add);
            $('#per_state').val(state);
            $('#per_district').val(district);
            $('#per_tehsil').val(tehsil);
            $('#per_city').val(city);
            $('#per_pin').val(pin);
        }else{
            $('#per_add').html('');
            $('#per_state').val('');
            $('#per_district').val('');
            $('#per_tehsil').val('');
            $('#per_city').val('');
            $('#per_pin').val('');
        }
    }
    function chk(eid){
        $.ajax({
            url:root_path+"module/emp_profile/chk.php",
            data:"eid="+eid,
            type:"post",
            success:function(e){
                $('#chk_roll').html(e);
            }
        })
    }
</script>