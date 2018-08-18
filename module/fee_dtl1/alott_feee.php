<?php 
    $id="";
    if(isset($_GET['id'])){
        $id=$_GET['id'];
        $class_fee_dtl=fetchOne("select * from class_fee_dtl where id=$id");
    }
    if(isset($_POST['tution_fee'])){
        $success=1;
        if(!isset($_POST['class_id']) || $_POST['class_id']==''){
            $_SESSION['eclass_id']="Select class";
            $success=0;
        }
        if(!isset($_POST['batch_id']) || $_POST['batch_id']==''){
            $_SESSION['ebatch_id']="Select batch";
            $success=0;
        }
        if($_POST['reg_fee']==''){
            $_SESSION['ereg_fee']="Enter registration fee";
            $success=0;
        }
        if($_POST['tution_fee']==''){
            $_SESSION['etution_fee']="Enter tution fee";
            $success=0;
        }
        if($_POST['study_matirial_fee']==''){
            $_SESSION['estudy_matirial_fee']="Enter study Material fee";
            $success=0;
        }
        if($_POST['test_series_fees']==''){
            $_SESSION['etest_series_fees']="Enter test series fees";
        }
        if($_POST['gst_per']==0){
            $_SESSION['egst_per']="Enter proper number";
            $success=0;
        }
        if($_POST['gst_value']==0){
            $_SESSION['egst_value']="Enter proper number";
            $success=0;
        }
        if($_POST['total_fee']==0){
            $_SESSION['etotal_fee']="Enter proper number";
            $success=0;
        }
        if($success){
            addUpdate('class_fee_dtl',$_POST,$id);
            ?>
            <script type="text/javascript">
                location.href=root_path+"index/fee_dtl/syn_al_fee_list";
            </script>
            <?php
        }
    }
?>
    <div class="col-lg-12">
    <form role="form" class="form-horizontal" method="post">
            	
                <div class="form-group">
                	<label class="col-lg-4 control-label">Select Class</label>
                    <div class="col-lg-8">
                    <select onchange="show_batch(this.value,'')" tabindex="1" class="form-control"  id="" name="class_id">
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
                	<label class="col-lg-4 control-label">Registration Fee</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="reg_fee" tabindex="3" name="reg_fee" value="<?php if(isset($_POST['reg_fee'])){echo $_POST['reg_fee'];}elseif($id){ echo $class_fee_dtl['reg_fee'];} ?>" style="text-transform:capitalize;">
                    <?php if(isset($_SESSION['ereg_fee'])){echo $_SESSION['ereg_fee']; unset($_SESSION['ereg_fee']);} ?>
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Tution Fee</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="tution_fee" tabindex="4" name="tution_fee" value="<?php if(isset($_POST['tution_fee'])){echo $_POST['tution_fee'];}elseif($id){ echo $class_fee_dtl['tution_fee'];} ?>" style="text-transform:capitalize;">
                    <?php if(isset($_SESSION['etution_fee'])){echo $_SESSION['etution_fee']; unset($_SESSION['etution_fee']);} ?>
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Test Series Fee</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="test_series_fees" tabindex="5" name="test_series_fees" value="<?php if(isset($_POST['test_series_fee'])){echo $_POST['test_series_fee'];}elseif($id){ echo $class_fee_dtl['test_series_fees'];} ?>" style="text-transform:capitalize;">
                    <?php if(isset($_SESSION['etest_series_fees'])){echo $_SESSION['etest_series_fees']; unset($_SESSION['etest_series_fees']);} ?>
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Study Material Fee</label>
                    <div class="col-lg-8">
                    <input type="text" tabindex="6" class="form-control" id="study_matirial_fee" name="study_matirial_fee" value="<?php if(isset($_POST['study_matirial_fee'])){echo $_POST['study_matirial_fee'];}elseif($id){ echo $class_fee_dtl['study_matirial_fee'];} ?>" style="text-transform:capitalize;">
                    <?php if(isset($_SESSION['estudy_matirial_fee'])){echo $_SESSION['estudy_matirial_fee']; unset($_SESSION['estudy_matirial_fee']);} ?>
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">G.S.T. (18% is default)</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" tabindex="7" id="gst_per" name="gst_per" value="<?php if(isset($_POST['gst_per'])){echo $_POST['gst_per'];}elseif($id){ echo $class_fee_dtl['gst_per'];} else{echo "18";}?>" tabindex="7" style="text-transform:capitalize;">
                    <?php if(isset($_SESSION['egst_per'])){echo $_SESSION['egst_per']; unset($_SESSION['egst_per']);} ?>
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">G.S.T. Value</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="gst_value" name="gst_value" value="<?php if(isset($_POST['gst_value'])){echo $_POST['gst_value'];}elseif($id){ echo $class_fee_dtl['gst_value'];} ?>" style="text-transform:capitalize;">
                    <?php if(isset($_SESSION['egst_value'])){echo $_SESSION['egst_value']; unset($_SESSION['egst_value']);} ?>
                    </div>
                </div>
                <div class="form-group">
                	<label class="col-lg-4 control-label">Total Fee</label>
                    <div class="col-lg-8">
                    <input onfocus="gettotal()" tabindex="8" type="text" class="form-control" id="total_fee" name="total_fee" value="<?php if(isset($_POST['total_fee'])){echo $_POST['total_fee'];}elseif($id){ echo $class_fee_dtl['total_fee'];} ?>" style="text-transform:capitalize;">
                    <?php if(isset($_SESSION['etotal_fee'])){echo $_SESSION['etotal_fee']; unset($_SESSION['etotal_fee']);} ?>
                    </div>
                </div>
                
                <div class="form-group">
                	<div class="col-lg-8 col-lg-offset-4">
                    <button type="submit"  id="submit" class="btn btn-danger btn-sm btn-block" style="font-family:'Century Gothic'; font-size:14px; font-weight:bold;">SUBMIT</button>
                    </div>
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
            $('#batch').html("<option value=''>Select Class First</option>");
        }
    }
    function gettotal(){
        var reg_fee=parseInt($('#reg_fee').val());
        var tution_fee=parseInt($('#tution_fee').val());
        var test_series_fees=parseInt($('#test_series_fees').val());
        var study_matirial_fee=parseInt($('#study_matirial_fee').val());
        var gst_per=parseInt($('#gst_per').val());

        var total_fee_without_gst=parseInt(reg_fee+tution_fee+test_series_fees+study_matirial_fee);
        var gst_value=parseInt((total_fee_without_gst/100)*gst_per);
        $('#gst_value').val(gst_value);
        var total_fee_with_gst=gst_value+total_fee_without_gst;
        $('#total_fee').val(total_fee_with_gst);
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