
<?php
// print_r($_GET);
    $phpfiles=glob("../../include/php/*.php");
    foreach ($phpfiles as  $phpfile) {
        include_once($phpfile);
    }
    //boreder not comming properly
?>
<?php
$cqry="select id,name from class";
$clist=fetchAll($cqry);
extract($_POST);
        $id=1;
        $stu_data=fetchOne("select stu_profile.id,roll_no,token_no,stu_profile.name as name,f_name,scholarship,class.name as class,batch.name as batch,class.id as class_id,batch.id as batch_id, genrate_token,inquiry_date,registration_date,demo_class,from_date,to_date,addmission_date,admission,`x_roll`, `x_pcent`, `x_schl_name`, `x_board`, `xii_roll`, `xii_pcent`, `xii_schl_name`, `xii_board`, `aipmt_roll`, `aiims_roll`, `aipvt_roll`, `icar_roll`, `rpvt_roll`, `jeem_roll`, `jeea_roll` from stu_profile join class on class_id=class.id join batch on batch_id=batch.id where   roll_no='$roll' or token_no='$roll'");
?>
<?php if($stu_data){ ?>
<table class="table table-bordered">
    <tr>
        <td>Roll No.</td>
        <td>Token No.</td>
        <td>Name</td>
        <td>Father Name</td>
        <td>Class</td>
        <td>Batch</td>
    </tr>
    <tr>
        <td><?php  echo $stu_data['roll_no']; ?></td>
        <td><?php  echo $stu_data['token_no']; ?></td>
        <td><?php  echo $stu_data['name']; ?></td>
        <td><?php  echo $stu_data['f_name']; ?></td>
        <td><?php  echo $stu_data['class']; ?></td>
        <td><?php  echo $stu_data['batch']; ?></td>

    </tr>
</table>


<form role="form" class="form-horizontal" enctype="multipart/form-data" method="post">
            <div class="form-group">
                  <label class="col-lg-4 control-label">Class</label>
                    <div class="col-lg-8">
<select class="form-control" id="class_id" name="class_id" onchange="show_batch(this.value,'')">
                        <option value=""></option>
                        <?php
                        foreach ($clist as $clist)
                        {?>
                            <option value="<?php echo $clist['id'];?>"
                             <?php if((isset($_POST['class_id']) && $_POST['class_id']==$clist['id']) || ($id && $clist['id']==$stu_data['class_id']))
                                                { echo "selected"; } 
                                    ?>  >
                                    <?php echo $clist['name'];?>
                            </option>

                        <?php
                    }
                    ?>
                    </select>
                    <?php if(isset($_SESSION['eclass_id'])){echo $_SESSION['eclass_id']; unset($_SESSION['eclass_id']);} ?>
                    </div>
                </div>
                <div class="form-group">
                  <label class="col-lg-4 control-label profile_chng_color">Batch</label>
                    <div class="col-lg-8">
                    <select class="form-control" disabled id="batch" name="batch_id">
                      <option></option>
                        
                    </select>
                    <?php if(isset($_SESSION['batch'])){echo $_SESSION['batch']; unset($_SESSION['batch']);} ?>
                    </div>
                </div>
            <div class="form-group">
                    <label class="col-lg-4 control-label">Class X Roll No.</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="10th_roll" name="x_roll" value="<?php if($id){ echo $stu_data['x_roll'];}?>" style="text-transform:capitalize;">
                    </div>
                                        <?php if(isset($_SESSION['xroll'])){echo $_SESSION['xroll']; unset($_SESSION['xroll']);} ?>

            </div>
            <div class="form-group">
                    <label class="col-lg-4 control-label">Class X Per./ CGPA</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="10th_%" name="x_pcent" value="<?php if(isset($_POST['x_pcent'])){echo $_POST['x_pcent'];} elseif($id){ echo $stu_data['x_pcent'];}?>" style="text-transform:capitalize;">
                    </div>
                                        <?php if(isset($_SESSION['xpcent'])){echo $_SESSION['xpcent']; unset($_SESSION['xpcent']);} ?>

            </div>
            <div class="form-group">
                    <label class="col-lg-4 control-label">Class X School Name</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="x_schl_name" name="x_schl_name" value="<?php if(isset($_POST['x_schl_name'])){echo $_POST['x_schl_name'];} elseif($id){ echo $stu_data['x_schl_name'];}?>" style="text-transform:capitalize;">
                    </div>
            </div>
            <div class="form-group">
                    <label class="col-lg-4 control-label">Class X Board</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="10th_board" name="x_board" value="<?php if(isset($_POST['x_board'])){echo $_POST['x_board'];} elseif($id){ echo $stu_data['x_board'];}?>" style="text-transform:capitalize;">
                    </div>
            </div>
            <div class="form-group">
                    <label class="col-lg-4 control-label">Class XII Roll No.</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="12th_roll" name="xii_roll" value="<?php if(isset($_POST['xii_roll'])){echo $_POST['xii_roll'];} elseif($id){ echo $stu_data['xii_roll'];}?>" style="text-transform:capitalize;">
                    </div>
            </div>
            <div class="form-group">
                    <label class="col-lg-4 control-label">Class XII Per./ CGPA</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="12th_%" name="xii_pcent" value="<?php if(isset($_POST['xii_pcent'])){echo $_POST['xii_pcent'];} elseif($id){ echo $stu_data['xii_pcent'];}?>" style="text-transform:capitalize;">
                    </div>
            </div>
            <div class="form-group">
                    <label class="col-lg-4 control-label">Class XII School Name</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="xii_schl_name" name="xii_schl_name" value="<?php if(isset($_POST['xii_schl_name'])){echo $_POST['xii_schl_name'];} elseif($id){ echo $stu_data['xii_schl_name'];}?>" style="text-transform:capitalize;">
                    </div>
            </div>
            <div class="form-group">
                    <label class="col-lg-4 control-label">Class XII Board</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="12th_board" name="xii_board" value="<?php if(isset($_POST['xii_board'])){echo $_POST['xii_board'];} elseif($id){ echo $stu_data['xii_board'];}?>" style="text-transform:capitalize;">
                    </div>
            </div>

            <div class="form-group">
                    <label class="col-lg-4 control-label">NEET Roll No(If Eligible)</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="aipmt_roll" name="aipmt_roll" 
                    value="<?php if(isset($_POST['aipmt_roll'])){echo $_POST['aipmt_roll'];} elseif($id){ echo $stu_data['aipmt_roll'];}?>" style="text-transform:capitalize;">
                    </div>
            </div>

            <div class="form-group">
                    <label class="col-lg-4 control-label">AIIMS Roll No(If Eligible)</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="aiims_roll" name="aiims_roll" 
                    value="<?php if(isset($_POST['aiims_roll'])){echo $_POST['aiims_roll'];} elseif($id){ echo $stu_data['aiims_roll'];}?>" style="text-transform:capitalize;">
                    </div>
            </div>

            <div class="form-group">
                    <label class="col-lg-4 control-label">AIPVT Roll No(If Eligible)</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="aipvt_roll" name="aipvt_roll" value="<?php if(isset($_POST['aipvt_roll'])){echo $_POST['aipvt_roll'];} elseif($id){ echo $stu_data['aipvt_roll'];}?>" style="text-transform:capitalize;">
                    </div>
            </div>

            <div class="form-group">
                    <label class="col-lg-4 control-label">ICAR Roll No(If Eligible)</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="aipvt_roll" name="icar_roll" value="<?php if(isset($_POST['icar_roll'])){echo $_POST['icar_roll'];} elseif($id){ echo $stu_data['icar_roll'];}?>" style="text-transform:capitalize;">
                    </div>
            </div>

            <div class="form-group">
                    <label class="col-lg-4 control-label">RPVT Roll No(If Eligible)</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="aipvt_roll" name="rpvt_roll" value="<?php if(isset($_POST['rpvt_roll'])){echo $_POST['rpvt_roll'];} elseif($id){ echo $stu_data['rpvt_roll'];}?>" style="text-transform:capitalize;">
                    </div>
            </div>

            <div class="form-group">
                    <label class="col-lg-4 control-label">JEE MAINS Roll No(If Eligible)</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="iit_roll" name="jeem_roll" value="<?php if(isset($_POST['jeem_roll'])){echo $_POST['jeem_roll'];} elseif($id){ echo $stu_data['jeem_roll'];}?>" style="text-transform:capitalize;">
                    </div>
            </div>

            <div class="form-group">
                    <label class="col-lg-4 control-label">JEE ADV Roll No(If Eligible)</label>
                    <div class="col-lg-8">
                    <input type="text" class="form-control" id="iit_roll" name="jeea_roll" value="
                    <?php if(isset($_POST['jeea_roll'])){echo $_POST['jeea_roll'];} elseif($id){ echo $stu_data['jeea_roll'];}?>" style="text-transform:capitalize;">
                    </div>
            </div>
            <input type="hidden" name="id" value="<?php echo $stu_data['id']; ?>">

            
            <div class="form-group">
                    <label class="col-lg-4 control-label profile_chng_color">Upload Photo</label>
                    <div class="col-lg-8">
                    <input type="file" class="form-control" accept="image/x-png,image/jpeg,image/jpg" id="propic" name="propic" value="">Max. Upload Size : 2 MB
                    </div>
                </div>
                <div>
                  <?php 
                    include_once("cam.php");
                  ?>
                </div>

                <div class="form-group">
                    <label class="col-lg-4 control-label">Profile Photo</label>
                    <div class="col-lg-8">
                    <?php if($id && $stu_data['propic']!='' ){ ?>
                    <img src="<?php echo ROOT.$stu_data['propic']; ?>" height="200" width="100%" />
                    <?php } ?>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-lg-8 col-lg-offset-4">
                    <button type="submit" id="submit" class="btn btn-danger btn-sm btn-block" style="font-family:'Century Gothic'; font-size:14px; font-weight:bold;">SUBMIT</button>
                    </div>
            </div>
        </form>
<?php }else{
    ?>
    <script type="text/javascript">
        alert("Invalid Roll no or token no");
    </script>
    <?php 
} ?>
<script type="text/javascript">
    function show_batch(class_id,batch_id){
        if(class_id){
          // alert("aja");
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
          // alert("mat aa");
            $('#batch').attr('disabled','disabled');
            $('#batch').html("<option value=''>Select Class First</option>")
        }
    }
</script>
<?php if(isset($_POST['roll'])){
    ?>
    <script type="text/javascript">
        show_batch('<?php echo $stu_data[class_id] ?>','<?php echo $stu_data[batch_id] ?>')
    </script>
    <?php 
} ?>