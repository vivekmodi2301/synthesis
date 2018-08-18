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
        $stu_data=fetchOne("select c_address,c_state,c_district,c_tehsil,c_city,c_pin,p_address,p_state,p_district,p_tehsil,p_city,p_pin,pg_name from stu_profile where id=$sid");
    }
    switch ($leave_at) {
        case 'self':
        case 'pg':
        if($leave_at=='pg'){
            ?>
            <label class="col-lg-4 control-label">PG Name</label>
            <div class="col-lg-8">
                <input type="text" class="form-control" value="<?php if($id){ echo $stu_data['pg_name'];}?>" name="pg_name">       
            </div>
            <?php if(isset($_SESSION['pgname'])){echo $_SESSION['pgname']; unset($_SESSION['pgname']);} ?>

            <?php
        }
        ?>
        <p>Correspondance Address</p>
        <div class="form-group">
            <label class="col-lg-4 control-label">Address</label>
            <div class="col-lg-8">
                <textarea class="form-control" id="adrs" name="c_address" required style="text-transform:capitalize;"><?php if($id){ echo $stu_data['c_address'];}?></textarea>        
            </div>
            <?php if(isset($_SESSION['pgname'])){echo $_SESSION['pgname']; unset($_SESSION['pgname']);} ?>
            <div class="form-group">
                <label class="col-lg-4 control-label">State</label>
                <div class="col-lg-8">
                    <input type="text" class="form-control" id="state" required name="c_state" value="<?php if($id){ echo $stu_data['c_state'];}?>" style="text-transform:capitalize;">
                </div>
            </div>
            <div class="form-group">
                    <label class="col-lg-4 control-label">District</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="district" required name="c_district" value="<?php if($id){ echo $stu_data['c_district'];}?>" style="text-transform:capitalize;">
                    </div>
                    <?php if(isset($_SESSION['cdistrict'])){echo $_SESSION['cdistrict']; unset($_SESSION['cdistrict']);} ?>
                </div>
                <div class="form-group">
                    <label class="col-lg-4 control-label">Tehsil</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="tehsil" required name="c_tehsil" 
                    value="<?php if($id){ echo $stu_data['c_tehsil'];}?>" style="text-transform:capitalize;">
                    </div>
                </div><div class="form-group">
                    <label class="col-lg-4 control-label">City/ Town</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="city" required name="c_city" value="<?php if($id){ echo $stu_data['c_city'];}?>" style="text-transform:capitalize;">
                    </div>
                    <?php if(isset($_SESSION['ccity'])){echo $_SESSION['ccity']; unset($_SESSION['ccity']);} ?>

                </div>

                <div class="form-group">
                    <label class="col-lg-4 control-label">Pin No.</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" required id="pin" name="c_pin" value="<?php if($id){ echo $stu_data['c_pin'];}?>" pattern=".{6}" maxlength="6" onkeyup="this.value=this.value.replace(/[^0-9]/g,'');" style="text-transform:capitalize;">
                    </div>
                                        <?php if(isset($_SESSION['cpin'])){echo $_SESSION['cpin']; unset($_SESSION['cpin']);} ?>

                </div>

                <p><input type="checkbox" id="same_addr" onclick="sameaddr()" /> Permanent Address (Tick if Same as Correspondance)</p>
                <div class="form-group">
                    <label class="col-lg-4 control-label">Address</label>
                    <div class="col-lg-8">
                    <textarea class="form-control" required id="p_adrs" name="p_address" style="text-transform:capitalize;"><?php if($id){ echo $stu_data['p_address'];}?></textarea>
                    </div>
                                        <?php if(isset($_SESSION['padd'])){echo $_SESSION['padd']; unset($_SESSION['padd']);} ?>

                </div>
                <div class="form-group">
                    <label class="col-lg-4 control-label">State</label>
                    <div class="col-lg-8">
                    <input type="text" required class="form-control" id="p_state" name="p_state" value="<?php if($id){ echo $stu_data['p_state'];}?>" style="text-transform:capitalize;">
                    </div>
                                        <?php if(isset($_SESSION['pstate'])){echo $_SESSION['pstate']; unset($_SESSION['pstate']);} ?>

                </div>
                <div class="form-group">
                    <label class="col-lg-4 control-label">District</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="p_district" name="p_district" required value="<?php if($id){ echo $stu_data['p_district'];}?>" style="text-transform:capitalize;">
                    </div>
                                        <?php if(isset($_SESSION['pdistrict'])){echo $_SESSION['pdistrict']; unset($_SESSION['pdistrict']);} ?>

                </div>
                <div class="form-group">
                    <label class="col-lg-4 control-label">Tehsil</label>
                    <div class="col-lg-8">
                    <input type="text" required class="form-control" id="p_tehsil" name="p_tehsil" value="<?php if($id){ echo $stu_data['p_tehsil'];}?>" style="text-transform:capitalize;">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-lg-4 control-label">City/ Town</label>
                    <div class="col-lg-8">
                    <input type="text" required class="form-control" id="p_city" name="p_city" value="<?php if($id){ echo $stu_data['p_city'];}?>" style="text-transform:capitalize;">
                    </div>
                                        <?php if(isset($_SESSION['pcity'])){echo $_SESSION['pcity']; unset($_SESSION['pcity']);} ?>

                </div>

                <div class="form-group">
                    <label class="col-lg-4 control-label">Pin No.</label>
                    <div class="col-lg-8">
                    <input type="text" required class="form-control" id="p_pin" name="p_pin" value="<?php if($id){ echo $stu_data['p_pin'];}?>" pattern=".{6}" maxlength="6" onkeyup="this.value=this.value.replace(/[^0-9]/g,'');" style="text-transform:capitalize;">
                    </div>
                                        <?php if(isset($_SESSION['ppin'])){echo $_SESSION['ppin']; unset($_SESSION['ppin']);} ?>

                </div>        
        <?php
            break;
        case 'provided':
        ?>
        <div class="form-group">

        <label class="col-lg-4 control-label">PG Name</label>
            <div class="col-lg-8">
                <select required class="form-control" onchange="show_address(this.value,'<?php echo $id; ?>')" id="cat" name="pg_name">
                    <option></option>
        <?php
            $provided_pg=fetchAll("select id,name from provided_pg");
            foreach ($provided_pg as $value) {
                ?>
                    <option <?php if($id && $stu_data['pg_name']==$value['id']){echo "selected";} ?> value="<?php echo $value['id'];?>"><?php echo $value['name'];?></option>
                <?php
            }
            ?>
                </select>
        </div>
    </div>
    <div id="pg_address"></div>
            <?php
        default:
            # code...
            break;
    }
?>  