<?php 
    $id="";
    if(isset($_GET['id'])){
        $id=$_GET['id'];
        $data=fetchOne("select id,name,address,state,district,tehsil,city,pin,mobile from provided_pg where id=$id");
    }
    if(isset($_POST['name'])){
        $success=1;
        if($_POST['name']==''){
            $_SESSION['ename']="Enter Person name";
            $success=0;
        }
        if($_POST['address']==''){
            $_SESSION['eaddress']="Enter Address";
            $success=0;
        }
         
        if($success){
            addUpdate('provided_pg',$_POST,$id);
            ?>
            <script type="text/javascript">
                location.href=root_path+"index/provided_pg/syn_s_pg";
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
                    <label class="col-lg-4 control-label">Address</label>
                    <div class="col-lg-8">
                    <textarea class="form-control" id="adrs" required name="address" style="text-transform:capitalize;"><?php if(isset($_POST['address'])){ echo $_POST['address']; } elseif($id){ echo $data['address']; } ?></textarea>
                     <span>
                    <?php
                       if (isset($_SESSION['eaddress'])) {
                        echo $_SESSION['eaddress'];
                        unset($_SESSION['eaddress']);
                       }
                     ?></span>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-lg-4 control-label">State </label>
                    <div class="col-lg-8">
                <input type="text" required class="form-control" id="" name="state" value="<?php if(isset($_POST['state'])){ echo $_POST['state'];} elseif($id){ echo $data['state']; } ?>" style="text-transform:capitalize;">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-lg-4 control-label">District </label>
                    <div class="col-lg-8">
                <input type="text" required class="form-control" id="" name="district" value="<?php if(isset($_POST['district'])){ echo $_POST['district'];} elseif($id){ echo $data['district']; } ?>" style="text-transform:capitalize;">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-lg-4 control-label">Tehsil </label>
                    <div class="col-lg-8">
                <input type="text" required class="form-control" id="" name="tehsil" value="<?php if(isset($_POST['tehsil'])){ echo $_POST['tehsil'];} elseif($id){ echo $data['tehsil']; } ?>" style="text-transform:capitalize;">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-lg-4 control-label">City </label>
                    <div class="col-lg-8">
                <input type="text" required class="form-control" id="" name="city" value="<?php if(isset($_POST['city'])){ echo $_POST['city'];} elseif($id){ echo $data['city']; } ?>" style="text-transform:capitalize;">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-lg-4 control-label">Pin No </label>
                    <div class="col-lg-8">
                <input type="text" required class="form-control" id="" name="pin" value="<?php if(isset($_POST['pin'])){ echo $_POST['pin'];} elseif($id){ echo $data['pin']; } ?>" style="text-transform:capitalize;">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-lg-4 control-label">Mobile No </label>
                    <div class="col-lg-8">
                <input type="text" required class="form-control" id="" name="mobile" value="<?php if(isset($_POST['mobile'])){ echo $_POST['mobile'];} elseif($id){ echo $data['mobile']; } ?>" style="text-transform:capitalize;">
                    </div>
                </div>
                
                <div class="form-group">
                	<div class="col-lg-8 col-lg-offset-4">
                    <button type="submit"  id="submit" class="btn btn-danger btn-sm btn-block" style="font-family:'Century Gothic'; font-size:14px; font-weight:bold;">SUBMIT</button>
                    </div>
                </div>
            </form>
</div>