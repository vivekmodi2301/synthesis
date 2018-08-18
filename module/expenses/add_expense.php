<?php 
    
   if (isset($_POST['purpose'])) {
    if($_FILES['upload_bill']['name']){
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
    extract($_POST);
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
    $expenses = array('purpose' => $purpose,'date'=>$date,'total_amount'=>$total_amount,'org_name'=>$last_id,'remark'=>$remark,'submit_by'=>$login,'upload_bill'=>$propic);
    $last_id = laddUpdate('expenses',$expenses);
    $payment = array('amount' => $amount,'pay_at_time'=>'y','behalf_of'=>$behalf_of,'pay_done'=>$login,'bill_no'=>$last_id,'paid_to'=>$paid_to,'datee'=>$date,'byy'=>$byy,'description'=>$descriptions);
    addUpdate('payment',$payment);
    ?>
    <script type="text/javascript">
        location.href=root_path+"index.php";
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
                    <input type="text" class="form-control" id="roll" name="purpose"  style="text-transform:capitalize;">
                     <span>
                    <?php 
                       if (isset($_SESSION['epurpose'])) {
                        echo $_SESSION['epurpose'];
                        unset($_SESSION['epurpose']);
                       }
                     ?>
                </span>
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Date</label>
                    <div class="col-lg-8">
                    <input type="date" class="form-control" id="s_name" name="date" value="" style="text-transform:capitalize;">
                    <span>
                    <?php 
                       if (isset($_SESSION['edate'])) {
                        echo $_SESSION['edate'];
                        unset($_SESSION['edate']);
                       }
                     ?>
                </span>
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Total Amount</label>
                    <div class="col-lg-8">
                    <input type="text" id="tot_am" class="form-control"  name="total_amount" value="" style="text-transform:capitalize;">
                    <span>
                    <?php 
                       if (isset($_SESSION['etotal_amount'])) {
                        echo $_SESSION['etotal_amount'];
                        unset($_SESSION['etotal_amount']);
                       }
                     ?>
                </span>
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Pay at time</label>
                    <div class="col-lg-8">
                    <input id="pay_at_time"  type="text" class="form-control" onchange="due(tot_am.value,this.value)" name="amount" value="" style="text-transform:capitalize;">
                    <input type="radio" name="byy" onchange="show(this.value)" value="cash">Cash
                    <input type="radio" name="byy" onchange="show(this.value)" value="cheque">Cheque
                    <input type="radio" name="byy" onchange="show(this.value)" value="dd">DD
                    <span id="showno"></span>
                    <span>
                    <?php 
                       if (isset($_SESSION['epay_at_time'])) {
                        echo $_SESSION['epay_at_time'];
                        unset($_SESSION['epay_at_time']);
                       }
                     ?>
                    </span>
                </div>
            </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Due Amount</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="due_am" name="due_amount" value="" style="text-transform:capitalize;">
                    <span>
                    <?php 
                       if (isset($_SESSION['edue_amount'])) {
                        echo $_SESSION['edue_amount'];
                        unset($_SESSION['edue_amount']);
                       }
                     ?>
                </span>
                    </div>
                </div>
                
                <div class="form-group">
                	<label class="col-lg-4 control-label">Paid To (Person Name)</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="m_name" name="paid_to" value="" style="text-transform:capitalize;">
                    <span>
                    <?php 
                       if (isset($_SESSION['epaid_to'])) {
                        echo $_SESSION['epaid_to'];
                        unset($_SESSION['epaid_to']);
                       }
                     ?>
                 </span>
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
                                <option value="<?php echo $org_name['id'] ?>"><?php echo $org_name['name'] ?></option>
                                <?php 
                            }
                        ?>
                        <option value="other">Other</option>
                    </select>
                    <span id="other_name" style="display: none;"><input type="text" name="org_name" disabled id="oinput" class="form-control"></span>
                    <span>
                    <?php 
                       if (isset($_SESSION['eorg_name'])) {
                        echo $_SESSION['eorg_name'];
                        unset($_SESSION['eorg_name']);
                       }
                     ?>
                 </span>
                    </div>
                </div>
                
                <div class="form-group">
                	<label class="col-lg-4 control-label">Email ID</label>
                    <div class="col-lg-8">
                    <input type="email" class="form-control" id="email" name="email" value="">
                    <span>
                    <?php 
                       if (isset($_SESSION['eemail'])) {
                        echo $_SESSION['eemail'];
                        unset($_SESSION['eemail']);
                       }
                     ?>
                 </span>
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Mobile No. (Self)</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="f_mobile" name="no_self" value="" pattern=".{10}" maxlength="10" onkeyup="this.value=this.value.replace(/[^0-9]/g,'');" style="text-transform:capitalize;">
                    <span>
                    <?php 
                       if (isset($_SESSION['eno_self'])) {
                        echo $_SESSION['eno_self'];
                        unset($_SESSION['eno_self']);
                       }
                     ?>
                 </span>
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Mobile No. (Father)</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="m_mobile" name="no_f" value="" pattern=".{10}" maxlength="10" onkeyup="this.value=this.value.replace(/[^0-9]/g,'');" style="text-transform:capitalize;">
                    <span>
                    <?php 
                       if (isset($_SESSION['eno_f'])) {
                        echo $_SESSION['eno_f'];
                        unset($_SESSION['eno_f']);
                       }
                     ?>
                 </span>
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Mobile No. (Mother)</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="s_mobile" name="no_m" value="" pattern=".{10}" maxlength="10" onkeyup="this.value=this.value.replace(/[^0-9]/g,'');" style="text-transform:capitalize;">
                    <span>
                    <?php 
                       if (isset($_SESSION['eno_m'])) {
                        echo $_SESSION['eno_m'];
                        unset($_SESSION['eno_m']);
                       }
                     ?>
                 </span>
                    </div>
                </div>
                
                <div class="form-group">
                	<label class="col-lg-4 control-label">Landline No.</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="ll_no" name="landline" value=""  style="text-transform:capitalize;">
                    <span>
                    <?php 
                       if (isset($_SESSION['elandline'])) {
                        echo $_SESSION['elandline'];
                        unset($_SESSION['elandline']);
                       }
                     ?>
                 </span>
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
        	<label class="col-lg-4 control-label">With the behalf of :</label>
            <div class="col-lg-8">
            <select class="form-control" id="gender" name="behalf_of">
            	<option></option>
                <?php 
                $office_data = fetchAll("select id,name from office_staff where department='director'");
                foreach ($office_data as $office_data) {
                    ?>
                    <option value="<?php echo $office_data['id']; ?>"><?php echo $office_data['name']; ?></option>
                    <?php 
                }
                ?>
            </select>
            <span>
            <?php 
               if (isset($_SESSION['ebehalf_of'])) {
                echo $_SESSION['ebehalf_of'];
                unset($_SESSION['ebehalf_of']);
               }
             ?>
         </span>
        </div>
        </div>
        
        <div class="form-group">
        	<label class="col-lg-4 control-label">Remark</label>
            <div class="col-lg-8">
            <textarea class="form-control" id="remark" name="remark" style="text-transform:capitalize;"></textarea>
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
        	<label class="col-lg-4 control-label">Upload Bill</label>
            <div class="col-lg-8">
            <input type="file" class="form-control" id="propic" name="upload_bill" value="">
             <span>
            <?php 
               if (isset($_SESSION['upload_bill'])) {
                echo $_SESSION['upload_bill'];
                unset($_SESSION['upload_bill']);
               }
             ?>
         </span>
            </div>
        </div>
        
        <div class="form-group">
        	<div class="col-lg-8 col-lg-offset-4">
            <button type="submit"  id="submit" class="btn btn-danger btn-sm btn-block" style="font-family:'Century Gothic'; font-size:14px; font-weight:bold;">SUBMIT & GENERATE TOKEN</button>
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
<script type="text/javascript">
    function due(tot,pay){
        var tot = parseInt(tot);
        var pay = parseInt(pay);
        if(pay>tot){
            alert("Can't pay more then total pay");
            $('#pay_at_time').val('');
        }else{
            var due = tot-pay;
            $('#due_am').val(due);
        }
    }
    function show(pay_by){
        if(pay_by == 'cheque' || pay_by == 'dd'){
            $('#showno').html("<input type='number' name='chq_no'>");
        }else{
            $('#showno').html('');
        }
    } 
</script>