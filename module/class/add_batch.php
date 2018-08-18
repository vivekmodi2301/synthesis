<?php 
    $id="";
    if(isset($_GET['id'])){
        $id=$_GET['id'];
        $batch_data=fetchOne("select id,class_id,name from batch where id=$id");
    }
    if(isset($_POST['name'])){
        $success=1;
        if(!isset($_POST['class_id']) || $_POST['class_id']==''){
            $_SESSION['eclass_id']="Select class";
            $success=0;
        }
        if($_POST['name']==''){
            $_SESSION['ename']="Enter batch name";
            $success=0;
        }
        if($success){
            addUpdate('batch',$_POST,$id);
            ?>
            <script type="text/javascript">
                location.href=root_path+"index/class/syn_s_batch";
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
                    <select class="form-control" required id="" name="class_id">
                        <option value="">Please Select Class</option>
                        <?php 
                            $class_data=fetchAll("select id,name from class");
                            foreach ($class_data as $class_value) {
                        ?>
                                <option <?php if((isset($_POST['class_id']) && $_POST['class_id']==$class_value['id']) || ($id && $batch_data['class_id']==$class_value['id'])){echo "selected";} ?> value="<?php echo $class_value['id']; ?>"><?php echo $class_value['name'] ?></option>
                            <?php }?>
                    </select>
                    <?php if(isset($_SESSION['eclass_id'])){echo $_SESSION['eclass_id']; unset($_SESSION['eclass_id']);} ?>
                    </div>
                </div>
                
                <div class="form-group">
                	<label class="col-lg-4 control-label">Name of New Batch</label>
                    <div class="col-lg-8">
                    <input type="text" required class="form-control" id="" name="name" value="<?php if(isset($_POST['name'])){ echo $_POST['name'];}elseif($id){ echo $batch_data['name'];} ?>" style="text-transform:capitalize;">

                    <?php if(isset($_SESSION['ename'])){echo $_SESSION['ename']; unset($_SESSION['ename']);} ?>
                    </div>
                </div>
                
                <div class="form-group">
                	<div class="col-lg-8 col-lg-offset-4">
                    <button type="submit"  id="submit" class="btn btn-danger btn-sm btn-block" style="font-family:'Century Gothic'; font-size:14px; font-weight:bold;">SUBMIT</button>
                    </div>
                </div>
            </form>
</div>