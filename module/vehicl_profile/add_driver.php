<?php 
$id="";
if(isset($_GET['id'])){
    $id=$_GET['id'];
    $vec_data=fetchOne("select * from vec where id=$id");
}
if(isset($_POST['driver_id'])){
    print_r($_FILES);
    if(isset($_FILES['upload_icard']['name']) && $_FILES['upload_icard']['name']){
        if($_FILES['upload_icard']['type']=='image/jpeg'){
            $_POST['upload_icard']=time()."_".$_FILES['upload_icard']['name'];
            move_uploaded_file($_FILES['upload_icard']['tmp_name'], "include/vec_icard/".$_POST['upload_icard']);
        }else{
            ?>
            <script type="text/javascript">
                alert("Upload only jpeg or jpg file in resume");
                location.href=root_path+"index/vehicl_profile/syn_add";

            </script>
            <?php
        }
    }
    if(isset($_FILES['upload_documents']['name']) && $_FILES['upload_documents']['name']){
        if($_FILES['upload_documents']['type']=='application/pdf'){
            $_POST['upload_documents']=time()."_".$_FILES['upload_documents']['name'];
            move_uploaded_file($_FILES['upload_documents']['tmp_name'], "include/vec_documents/".$_POST['upload_documents']);
        }else{
            ?>
            <script type="text/javascript">
                alert("Upload only pdf file in documents");
                location.href=root_path+"index/vehicl_profile/syn_add";

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
                location.href=root_path+"index/vehicl_profile/syn_add";

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
    addUpdate('vec',$_POST,$id);
    ?>
    <script type="text/javascript">
        location.href=root_path+"index/vehicl_profile/syn_see"
    </script>
    <?php
}
?>
<div class="col-lg-12" style="border:1px dotted #CCC;">
<form role="form" class="form-horizontal" enctype="multipart/form-data" method="post">
	<div class="col-lg-6">
            	<div class="form-group">
                	<label class="col-lg-4 control-label">Driver ID</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="roll"  onchange="chk(this.value)" name="driver_id" value="<?php if($id){echo $vec_data['driver_id'];} ?>" pattern=".{5}" maxlength="5" onkeyup="this.value=this.value.replace(/[^0-9]/g,'');" style="text-transform:capitalize;">
					 <span id="chk_roll"></span>
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Driver Name</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="s_name" name="name" value="<?php if($id){echo $vec_data['name'];} ?>" style="text-transform:capitalize;">
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Father Name</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="f_name" name="f_name" value="<?php if($id){echo $vec_data['f_name'];} ?>" style="text-transform:capitalize;">
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Mother Name</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="m_name" name="m_name" value="<?php if($id){echo $vec_data['m_name'];} ?>" style="text-transform:capitalize;">
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Designation</label>
                    <div class="col-lg-8">
                    <select class="form-control" id="class" name="designation">
                        <option></option>
                        <option <?php if($id && $vec_data['designation']=='Van Driver'){echo "selected";} ?> value="Van Driver">Van Driver</option>
                        <option <?php if($id && $vec_data['designation']=='Van Honer'){echo "selected";} ?> value="Van Honer">Van Honer</option>
                    </select>
                    </div>
                </div>
                
                <div class="form-group">
                	<label class="col-lg-4 control-label">Email ID</label>
                    <div class="col-lg-8">
                    <input type="email" class="form-control" id="email" name="email" value="<?php if($id){echo $vec_data['email'];} ?>">
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Mobile No. (Self)</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="f_mobile" name="mobile" value="<?php if($id){echo $vec_data['mobile'];} ?>" pattern=".{10}" maxlength="10" onkeyup="this.value=this.value.replace(/[^0-9]/g,'');" style="text-transform:capitalize;">
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Mobile No. (Father)</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="m_mobile" name="f_mobile" value="<?php if($id){echo $vec_data['f_mobile'];} ?>" pattern=".{10}" maxlength="10" onkeyup="this.value=this.value.replace(/[^0-9]/g,'');" style="text-transform:capitalize;">
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Mobile No. (Mother)</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="m_mobile" name="m_mobile" value="<?php if($id){echo $vec_data['m_mobile'];} ?>" pattern=".{10}" maxlength="10" onkeyup="this.value=this.value.replace(/[^0-9]/g,'');" style="text-transform:capitalize;">
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Gender</label>
                    <div class="col-lg-8">
                    <select class="form-control" id="gender" name="gender">
                    	<option></option>
                        <option <?php if($id && $vec_data['gender']=='male'){echo "selected";} ?> value="male">Male</option>
                        <option <?php if($id && $vec_data['gender']=='female'){echo "selected";} ?> value="female">Female</option>
                    </select>
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Category</label>
                    <div class="col-lg-8">
                    <select class="form-control" id="cat" name="cat">
                    	<option></option>
                        <option <?php if($id && $vec_data['cat']=='GEN'){echo "selected";} ?>>GEN</option>
                        <option <?php if($id && $vec_data['cat']=='OBC'){echo "selected";} ?>>OBC</option>
                        <option <?php if($id && $vec_data['cat']=='SSC'){echo "selected";} ?>>SC</option>
                        <option <?php if($id && $vec_data['cat']=='ST'){echo "selected";} ?>>ST</option>
                    </select>
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">D.O.B.</label>
                    <div class="col-lg-8">
                    <input type="date" class="form-control" id="dob" name="dob" value="<?php if($id){echo $vec_data['dob'];} ?>"  style="text-transform:capitalize;" placeholder="DD-MM-YYYY">
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Landline No.</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="ll_no" name="ll_no" value="<?php if($id){echo $vec_data['ll_no'];} ?>" pattern=".{10}" maxlength="10" onkeyup="this.value=this.value.replace(/[^0-9]/g,'');" style="text-transform:capitalize;">
                    </div>
                </div>
                <p>Correspondance Address</p>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Address</label>
                    <div class="col-lg-8">
                    <textarea class="form-control" id="adrs" name="adrs" style="text-transform:capitalize;"><?php if($id){echo $vec_data['adrs'];} ?></textarea>
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">State</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="state" name="state" value="<?php if($id){echo $vec_data['state'];} ?>" style="text-transform:capitalize;">
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">District</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="district" name="district" value="<?php if($id){echo $vec_data['district'];} ?>" style="text-transform:capitalize;">
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Tehsil</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="tehsil" name="tehsil" value="<?php if($id){echo $vec_data['tehsil'];} ?>" style="text-transform:capitalize;">
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">City/ Town</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="city" name="city" value="<?php if($id){echo $vec_data['city'];} ?>" style="text-transform:capitalize;">
                    </div>
                </div>
                
                <div class="form-group">
                	<label class="col-lg-4 control-label">Pin No.</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="pin" name="pin" value="<?php if($id){echo $vec_data['pin'];} ?>" pattern=".{6}" maxlength="6" onkeyup="this.value=this.value.replace(/[^0-9]/g,'');" style="text-transform:capitalize;">
                    </div>
                </div>
                
                <p><input id="same_addr" onchange="sameaddr()" type="checkbox" /> Permanent Address (Tick if Same as Correspondance)</p>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Address</label>
                    <div class="col-lg-8">
                    <textarea class="form-control" id="p_adrs" name="p_adrs" style="text-transform:capitalize;"><?php if($id){echo $vec_data['p_adrs'];} ?></textarea>
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">State</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="p_state" name="p_state" value="<?php if($id){echo $vec_data['p_state'];} ?>" style="text-transform:capitalize;">
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">District</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="p_district" name="p_district" value="<?php if($id){echo $vec_data['p_district'];} ?>" style="text-transform:capitalize;">
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Tehsil</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="p_tehsil" name="p_tehsil" value="<?php if($id){echo $vec_data['p_tehsil'];} ?>" style="text-transform:capitalize;">
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">City/ Town</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="p_city" name="p_city" value="<?php if($id){echo $vec_data['p_city'];} ?>" style="text-transform:capitalize;">
                    </div>
                </div>
                
                <div class="form-group">
                	<label class="col-lg-4 control-label">Pin No.</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="p_pin" name="p_pin" value="<?php if($id){echo $vec_data['p_pin'];} ?>" pattern=".{6}" maxlength="6" onkeyup="this.value=this.value.replace(/[^0-9]/g,'');" style="text-transform:capitalize;">
                    </div>
                </div>
            </div>
      
      <div class="col-lg-6">
      		
            <div class="form-group">
                	<label class="col-lg-4 control-label">D.O.J.</label>
                    <div class="col-lg-8">
                    <input type="date" class="form-control" id="10th_roll" name="doj" value="<?php if($id){echo $vec_data['doj'];} ?>" style="text-transform:capitalize;">
                    </div>
            </div>
            <div class="form-group">
                	<label class="col-lg-4 control-label">D.O.L.</label>
                    <div class="col-lg-8">
                    <input type="date" class="form-control" id="10th_roll" name="dol" value="<?php if($id){echo $vec_data['dol'];} ?>" style="text-transform:capitalize;">
                    </div>
            </div>
      		    
                <div class="form-group">
                	<label class="col-lg-4 control-label">Reference</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="12th_%" name="reference" value="<?php if($id){echo $vec_data['reference'];} ?>" style="text-transform:capitalize;">
                    </div>
            </div>
            
            <div class="form-group">
                	<label class="col-lg-4 control-label">Vehicle Name</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="12th_%" name="vec_name" value="<?php if($id){echo $vec_data['vec_name'];} ?>" style="text-transform:capitalize;">
                    </div>
            </div>
            
            <div class="form-group">
                	<label class="col-lg-4 control-label">Vehicle Model</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="12th_%" name="vec_model" value="<?php if($id){echo $vec_data['vec_model'];} ?>" style="text-transform:capitalize;">
                    </div>
            </div>
            
            <div class="form-group">
                	<label class="col-lg-4 control-label">Vehicle No.</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="12th_%" name="vec_no" value="<?php if($id){echo $vec_data['vec_no'];} ?>" style="text-transform:capitalize;">
                    </div>
            </div>
            
            <div class="form-group">
                	<label class="col-lg-4 control-label">Vehicle Type</label>
                    <div class="col-lg-8">
                    <select class="form-control" id="gender" name="vec_type">
                    	<option></option>
                        <option <?php if($id && $vec_data['vec_type']=='Diesel'){echo "selected";} ?>>Diesel</option>
                        <option <?php if($id && $vec_data['vec_type']=='Petrol'){echo "selected";} ?>>Petrol</option>
                    </select>
                    </div>
                </div>
                
                <div class="form-group">
                	<label class="col-lg-4 control-label">Remark</label>
                    <div class="col-lg-8">
                    <textarea class="form-control" id="remark" name="remark" style="text-transform:capitalize;"><?php if($id){echo $vec_data['remark'];} ?></textarea>
                    </div>
                </div>
                
                <div class="form-group">
                	<label class="col-lg-4 control-label">Upload I-Card</label>
                    <div class="col-lg-8">
                    <input type="file" class="form-control" id="propic" name="upload_icard" value="">
                    </div>
                </div>
                
                <div class="form-group">
                	<label class="col-lg-4 control-label">Upload Photo</label>
                    <div class="col-lg-8">
                    <input type="file" class="form-control" id="propic" name="upload_photo" value="">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-lg-4 control-label">Upload Documents</label>
                    <div class="col-lg-8">
                    <input type="file" class="form-control" id="propic" name="upload_documents" value="">
                    </div>
                </div>

                <div>
                  <?php 
                    include_once("module/vehicl_profile/cam.php");
                  ?>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Profile Photo</label>
                    <div class="col-lg-8">
                        <?php if($id && file_exists($vec_data['upload_photo'])){
                            ?>
                    <img src="<?php echo ROOT.$vec_data['upload_photo']; ?>" height="200" width="100%" alt="aja" />

                            <?php 
                        } else{ ?>
                    <img src="images/pna.jpg" height="200" width="100%" />
                    <?php 
                            echo $vec_data['upload_photo'];
                        }?>
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