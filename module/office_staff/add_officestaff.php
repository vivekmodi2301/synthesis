<?php 
    $id="";
    if(isset($_GET['id'])){
        $id=$_GET['id'];
        $data=fetchOne("select id,name,department,mobile_no from office_staff where id=$id");
    }
    if(isset($_POST['name'])){
        $success=1;
        if($_POST['name']==''){
            $_SESSION['ename']="Enter Person name";
            $success=0;
        }
        if($_POST['department']==''){
            $_SESSION['edepartment']="Enter Department name";
            $success=0;
        }
        if($_POST['mobile_no']==""){
            $_SESSION['emobile_no']="Enter Your  Mobile no.";
            $success=0;
        }
         
        if($success){

            // print_r($_POST);exit;
            addUpdate('office_staff',$_POST,$id);
            ?>
            <script type="text/javascript">
                location.href=root_path+"index/office_staff/syn_s_office";
            </script>
        <?php
        }
    }
?>
<div class="col-lg-12">
    <form role="form" class="form-horizontal"  method="post">
            	
                <div class="form-group">
                	<label class="col-lg-4 control-label">Name </label>
                    <div class="col-lg-8">
                    <input type="text" required class="form-control" id="" name="name" value="<?php if(isset($_POST['name'])){ echo $_POST['name'];} elseif($id){ echo $data['name']; } ?>" style="text-transform:capitalize;">
                    <?php if(isset($_SESSION['ename'])){echo $_SESSION['ename'];unset($_SESSION['ename']);} ?>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-lg-4 control-label">Department</label>
                    <div class="col-lg-8">
                    <select class="form-control" id="class" required name="department">
                        <option></option>
                        <option value="enquiry" <?php if(isset($_POST['department']) && ($_POST['department'] =='enquiry') || (isset($data['department']) && ($data['department']=='enquiry') )) { ?> selected <?php } ?>>Enquiry/Reception</option> 
                        <option value="accountant" <?php if(isset($_POST['department']) && ($_POST['department'] =='accountant') || (isset($data['department']) && ($data['department']=='accountant') )){ ?> selected <?php } ?>>Admission/Accountant</option>
                        <option value="cao" <?php if(isset($_POST['department']) && ($_POST['department'] =='cao') || (isset($data['department']) && ($data['department']=='cao') )){ ?> selected <?php } ?>>CAO</option>
                        <option value="director" <?php if(isset($_POST['department']) && ($_POST['department'] =='director') || (isset($data['department']) && ($data['department']=='director') )){ ?> selected <?php } ?>>Director</option>
                        <option value="other" <?php if(isset($_POST['department']) && ($_POST['department'] =='other') || (isset($data['department']) && ($data['department']=='other') )){ ?> selected <?php } ?>>Other</option>
                        <option value="test series" <?php if(isset($_POST['department']) && ($_POST['department'] =='test series') || (isset($data['department']) && ($data['department']=='test series') )){ ?> selected <?php } ?>>Test Series</option>
                       </select>
                    <span>
                    <?php
                       if (isset($_SESSION['edepartment'])) {
                        echo $_SESSION['edepartment'];
                        unset($_SESSION['edepartment']);
                       }
                     ?>
                 </span>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-lg-4 control-label">Mobile no </label>
                    <div class="col-lg-8">
                <input type="text" required class="form-control" id="" name="mobile_no" value="<?php if(isset($_POST['mobile_no'])){ echo $_POST['mobile_no'];} elseif($id){ echo $data['mobile_no']; } ?>" style="text-transform:capitalize;">
                    <?php if(isset($_SESSION['emobile_no'])){echo $_SESSION['emobile_no'];unset($_SESSION['emobile_no']);} ?>
                    </div>
                </div>
                
                <div class="form-group">
                	<div class="col-lg-8 col-lg-offset-4">
                    <button type="submit"  id="submit" class="btn btn-danger btn-sm btn-block" style="font-family:'Century Gothic'; font-size:14px; font-weight:bold;">SUBMIT</button>
                    </div>
                </div>
            </form>
</div>