<?php 
$id="";
    $phpfiles=glob("../../include/php/*.php");
    foreach ($phpfiles as  $phpfile) {
        include_once($phpfile);
    }
    extract($_POST);
    $id="";
    if($sid){
        $id=$sid;
    }
    if($sid){
        $stu_data=fetchOne("select c_address,c_state,c_district,c_tehsil,c_city,c_pin,p_address,p_state,p_district,p_tehsil,p_city,p_pin from stu_profile where id=$sid");
    }
    $pg_detail=fetchOne("select * from provided_pg where id=$pg_id");
?>
<p>Correspondance Address</p>
<div class="form-group">
    <label class="col-lg-4 control-label">Address</label>
    <div class="col-lg-8">
    <textarea  required class="form-control" id="adrs" name="c_address" style="text-transform:capitalize;"><?php if(isset($_POST['c_address'])){echo $_POST['c_address'];} else{ echo $pg_detail['address'];}?></textarea>        
    </div>
    <?php if(isset($_SESSION['cadd'])){echo $_SESSION['cadd']; unset($_SESSION['cadd']);} ?>
    <div class="form-group">
    <label class="col-lg-4 control-label">State</label>
    <div class="col-lg-8">
        <input type="text"  required class="form-control" id="state" name="c_state" value="<?php if(isset($_POST['c_state'])){echo $_POST['c_state'];} else{ echo $pg_detail['state'];}?>" style="text-transform:capitalize;">

    <?php if(isset($_SESSION['cstate'])){echo $_SESSION['cstate']; unset($_SESSION['cstate']);} ?>
    </div>
    </div>
    <div class="form-group">
        <label class="col-lg-4 control-label">District</label>
        <div class="col-lg-8">
        <input type="text" required  class="form-control" id="district" name="c_district" value="<?php if(isset($_POST['c_district'])){echo $_POST['c_district'];} else{ echo $pg_detail['district'];}?>" style="text-transform:capitalize;">
        </div>
        <?php if(isset($_SESSION['cdistrict'])){echo $_SESSION['cdistrict']; unset($_SESSION['cdistrict']);} ?>
    </div>
    <div class="form-group">
        <label class="col-lg-4 control-label">Tehsil</label>
        <div class="col-lg-8">
        <input type="text" class="form-control"  required id="tehsil" name="c_tehsil" 
        value="<?php if(isset($_POST['c_tehsil'])){echo $_POST['c_tehsil'];} else{ echo $pg_detail['tehsil'];}?>" style="text-transform:capitalize;">
        </div>
    </div><div class="form-group">
        <label class="col-lg-4 control-label">City/ Town</label>
        <div class="col-lg-8">
        <input type="text" class="form-control" id="city"  required name="c_city" value="<?php if(isset($_POST['c_city'])){echo $_POST['c_city'];} else{ echo $pg_detail['city'];}?>" style="text-transform:capitalize;">
        </div>
        <?php if(isset($_SESSION['ccity'])){echo $_SESSION['ccity']; unset($_SESSION['ccity']);} ?>

    </div>

    <div class="form-group">
        <label class="col-lg-4 control-label">Pin No.</label>
        <div class="col-lg-8">
        <input type="text" class="form-control" id="pin"  required name="c_pin" value="<?php if(isset($_POST['c_pin'])){echo $_POST['c_pin'];} else{ echo $pg_detail['pin'];}?>" pattern=".{6}" maxlength="6" onkeyup="this.value=this.value.replace(/[^0-9]/g,'');" style="text-transform:capitalize;">
        </div>
                            <?php if(isset($_SESSION['cpin'])){echo $_SESSION['cpin']; unset($_SESSION['cpin']);} ?>

    </div>

    <p><input type="checkbox" onclick="sameaddr()" id="same_addr" /> Permanent Address (Tick if Same as Correspondance)</p>
    <div class="form-group">
        <label class="col-lg-4 control-label">Address</label>
        <div class="col-lg-8">
        <textarea class="form-control" id="p_adrs" name="p_address" required style="text-transform:capitalize;"><?php if(isset($_POST['p_address'])){echo $_POST['p_address'];} elseif($id){ echo $stu_data['p_address'];}?></textarea>
        </div>
                            <?php if(isset($_SESSION['padd'])){echo $_SESSION['padd']; unset($_SESSION['padd']);} ?>

    </div>
    <div class="form-group">
        <label class="col-lg-4 control-label">State</label>
        <div class="col-lg-8">
        <input type="text" class="form-control" id="p_state" name="p_state" required value="<?php if(isset($_POST['p_state'])){echo $_POST['p_state'];} elseif($id){ echo $stu_data['p_state'];}?>" style="text-transform:capitalize;">
        </div>
                            <?php if(isset($_SESSION['pstate'])){echo $_SESSION['pstate']; unset($_SESSION['pstate']);} ?>

    </div>
    <div class="form-group">
        <label class="col-lg-4 control-label">District</label>
        <div class="col-lg-8">
        <input type="text" class="form-control" id="p_district" name="p_district" required value="<?php if(isset($_POST['p_district'])){echo $_POST['p_district'];} elseif($id){ echo $stu_data['p_district'];}?>" style="text-transform:capitalize;">
        </div>
                            <?php if(isset($_SESSION['pdistrict'])){echo $_SESSION['pdistrict']; unset($_SESSION['pdistrict']);} ?>

    </div>
    <div class="form-group">
        <label class="col-lg-4 control-label">Tehsil</label>
        <div class="col-lg-8">
        <input type="text" required class="form-control" id="p_tehsil" name="p_tehsil" value="<?php if(isset($_POST['p_tehsil'])){echo $_POST['p_tehsil'];} elseif($id){ echo $stu_data['p_tehsil'];}?>" style="text-transform:capitalize;">
        </div>
    </div>
    <div class="form-group">
        <label class="col-lg-4 control-label">City/ Town</label>
        <div class="col-lg-8">
        <input type="text" required class="form-control" id="p_city" name="p_city" value="<?php if(isset($_POST['p_city'])){echo $_POST['p_city'];} elseif($id){ echo $stu_data['p_city'];}?>" style="text-transform:capitalize;">
        </div>
                            <?php if(isset($_SESSION['pcity'])){echo $_SESSION['pcity']; unset($_SESSION['pcity']);} ?>

    </div>

    <div class="form-group">
        <label class="col-lg-4 control-label">Pin No.</label>
        <div class="col-lg-8">
        <input type="text" required class="form-control" id="p_pin" name="p_pin" value="<?php if(isset($_POST['p_pin'])){echo $_POST['p_pin'];} elseif($id){ echo $stu_data['p_pin'];}?>" pattern=".{6}" maxlength="6" onkeyup="this.value=this.value.replace(/[^0-9]/g,'');" style="text-transform:capitalize;">
        </div>
                            <?php if(isset($_SESSION['ppin'])){echo $_SESSION['ppin']; unset($_SESSION['ppin']);} ?>

    </div>