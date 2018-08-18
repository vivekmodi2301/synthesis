<?php 
    $id=$_GET['id'];
    $exp_data = fetchOne("select purpose,date,total_amount,org_name,remark,upload_bill from expenses where id=$id");
    // print_r($exp_data);
    if(isset($_POST['purpose'])){
        extract($_POST);
        if($_FILES['upload_bill']['name']){
            // print_r($_FILES);exit;
            if($_FILES['upload_bill']['type']=='image/jpeg'||$_FILES['upload_bill']['type']='image/png'){
              

              $upload_dir = "include/bills/"; 
              $file_name = time().$_FILES["upload_bill"]["name"];
              // echo $file_name;exit;
              $upload_file = $upload_dir.$file_name;    
              if(move_uploaded_file($_FILES['upload_bill']['tmp_name'],$upload_file)){        

                 $source_image = $upload_file;
                 $image_destination = $upload_dir."min-".$file_name;
                 // echo $image_destination;exit;
                 $compress_images = compressImage($source_image, $image_destination);
                 $_POST['propic']=$image_destination;      
              }
                 unlink($upload_file);

            }
        }
        $login = $_SESSION['logindtl']['id'];
        if($_POST['oorg_name']=='other'){

            $org_data = array('name'=>$org_name,'adrs'=>$adrs,'state'=>$state,'district'=>$district,'tehsil'=>$tehsil,'city_town'=>$city_town,'pin_no'=>$pin_no,'submit_by'=>$login,'f_mobile'=>$f_mobile,'s_mobile'=>$s_mobile,'m_mobile'=>$m_mobile,'landline'=>$ll_no);
            $last_id = laddUpdate('organization',$org_data);
            // echo $last_id;exit;
        }elseif($_POST['oorg_name']!='none'){
            $last_id = $_POST['oorg_name'];
        }else{
            $last_id = 'none';
        }
        $expenses = array('purpose' => $purpose,'date'=>$date,'total_amount'=>$total_amount,'org_name'=>$last_id,'remark'=>$remark,'submit_by'=>$login,'upload_bill'=>$_POST['propic']);
        $last_id = laddUpdate('expenses',$expenses,$id);
        ?>
        <script type="text/javascript">
            location.href=root_path+"index/expenses/syn_s_expenses";
        </script>
        <?php
    }
?>
<div class="col-lg-12" style="border:1px dotted #CCC;">
<form role="form" class="form-horizontal" enctype="multipart/form-data" method="post">
	<div class="col-lg-6">
            	<div class="form-group">
                	<label class="col-lg-4 control-label">Purpose</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="roll" name="purpose" value="<?php echo $exp_data['purpose']; ?>" style="text-transform:capitalize;">
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Date</label>
                    <div class="col-lg-8">
                    <input type="date" class="form-control" id="s_name" name="date" value="<?php echo $exp_data['date']; ?>" style="text-transform:capitalize;">
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Total Amount</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="f_name" name="total_amount" value="<?php echo $exp_data['total_amount']; ?>" style="text-transform:capitalize;">
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Organisation Name</label>
                    <div class="col-lg-8">
                        <select class="form-control" onchange="show_name(this.value)" name="oorg_name">
                        <option value=""></option>
                        <?php 
                            $org_names = fetchAll("select id,name from organization group by name");
                            foreach ($org_names as $org_name) {
                                ?>
                                <option <?php if($exp_data['org_name']==$org_name['id']){echo "selected";} ?> value="<?php echo $org_name['id'] ?>"><?php echo $org_name['name'] ?></option>
                                <?php 
                            }
                        ?>
                        <option value="other">Other</option>
                        <option value="none">none</option>
                    </select>
                    <span id="other_name" style="display: none;"><input type="text" name="org_name" disabled id="oinput" class="form-control"></span>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-lg-4 control-label">Address</label>
                    <div class="col-lg-8">
                    <textarea class="form-control" id="adrs" name="adrs" style="text-transform:capitalize;"></textarea>
                     <span>
                    <?php 
                       if (isset($_SESSION['eaddress'])) {
                        echo $_SESSION['eaddress'];
                        unset($_SESSION['eaddress']);
                       }
                     ?>
                 </span>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-lg-4 control-label">State</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="state" name="state" value="" style="text-transform:capitalize;">
                     <span>
                    <?php 
                       if (isset($_SESSION['estate'])) {
                        echo $_SESSION['estate'];
                        unset($_SESSION['estate']);
                       }
                     ?>
                 </span>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-lg-4 control-label">District</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="district" name="district" value="" style="text-transform:capitalize;">
                     <span>
                    <?php 
                       if (isset($_SESSION['edistrict'])) {
                        echo $_SESSION['edistrict'];
                        unset($_SESSION['edistrict']);
                       }
                     ?>
                 </span>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-lg-4 control-label">Tehsil</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="tehsil" name="tehsil" value="" style="text-transform:capitalize;">
                     <span>
                    <?php 
                       if (isset($_SESSION['etehsil'])) {
                        echo $_SESSION['etehsil'];
                        unset($_SESSION['etehsil']);
                       }
                     ?>
                 </span>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-lg-4 control-label">City/ Town</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="city" name="city_town" value="" style="text-transform:capitalize;">
                     <span>
                    <?php 
                       if (isset($_SESSION['ecity_town'])) {
                        echo $_SESSION['ecity_town'];
                        unset($_SESSION['ecity_town']);
                       }
                     ?>
                 </span>
                    </div>
                </div>
                
                <div class="form-group">
                    <label class="col-lg-4 control-label">Pin No.</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="pin" name="pin_no" value="" pattern=".{6}" maxlength="6" onkeyup="this.value=this.value.replace(/[^0-9]/g,'');" style="text-transform:capitalize;">
                     <span>
                    <?php 
                       if (isset($_SESSION['epin_no'])) {
                        echo $_SESSION['epin_no'];
                        unset($_SESSION['epin_no']);
                       }
                     ?>
                 </span>
                    </div>
                </div>

            </div>
      
          <div class="col-lg-6">
          		    
                    
                    
                    <div class="form-group">
                    	<label class="col-lg-4 control-label">Remark</label>
                        <div class="col-lg-8">
                        <textarea class="form-control" id="remark" name="remark" style="text-transform:capitalize;"> <?php echo $exp_data['remark']; ?><?php echo $exp_data['remark']; ?></textarea>
                        </div>
                    </div>
                    <?php 
                        if(file_exists($exp_data['upload_bill'])){
                            ?>
                            <img src="<?php echo ROOT.$exp_data['upload_bill']; ?>" height="100" width="100">
                            <?php 
                        }
                    ?>
                    <div class="form-group">
                    	<label class="col-lg-4 control-label">Upload Bill</label>
                        <div class="col-lg-8">
                        <input type="file" class="form-control" id="propic" name="upload_bill" value="">
                        </div>
                    </div>
                    
                    <div class="form-group">
                    	<div class="col-lg-8 col-lg-offset-4">
                        <button type="submit" name="submit" id="submit" class="btn btn-danger btn-sm btn-block" style="font-family:'Century Gothic'; font-size:14px; font-weight:bold;">SUBMIT & GENERATE TOKEN</button>
                        </div>
                    </div>
          </div>
</form>

<div id="span"></div>
</div>
<script type="text/javascript">
    function show_name(valuee){
        if(valuee == 'other'){
            $('#other_name').css('display','inline');
            $('#oinput').removeAttr('disabled');

            $('#adrs').removeAttr('disabled');
            $('#state').removeAttr('disabled');
            $('#district').removeAttr('disabled');
            $('#tehsil').removeAttr('disabled');
            $('#city').removeAttr('disabled');
            $('#pin').removeAttr('disabled');

            $('#adrs').html('');
            $('#state').val('');
            $('#district').val('');
            $('#tehsil').val('');
            $('#city').val('');
            $('#pin').val('');
        }
        else if(valuee=='none'){

            $('#adrs').removeAttr('disabled');
            $('#state').removeAttr('disabled');
            $('#district').removeAttr('disabled');
            $('#tehsil').removeAttr('disabled');
            $('#city').removeAttr('disabled');
            $('#pin').removeAttr('disabled');

            $('#adrs').html('');
            $('#state').val('');
            $('#district').val('');
            $('#tehsil').val('');
            $('#city').val('');
            $('#pin').val('');
        }
        else{
            $('#other_name').css('display','none');
            $('#oinput').attr('disabled');
            $.ajax({
                url:root_path+"module/expenses/add_adrs.php",
                data:"com="+valuee,
                type:"post",
                success:function(e){
                    $('#span').html(e);
                    // alert(e);
                },
                error:function(e){
                    alert(e);
                }
            });
        }
    }
</script>

<?php 
if(isset($_GET['id'])){
    ?>
    <script type="text/javascript">
        show_name('<?php echo $_GET['id']; ?>');
    </script>
    <?php 
} 
?>