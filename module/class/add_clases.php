<?php 
    $id="";
    if(isset($_GET['id'])){
        $id=$_GET['id'];
        $data=fetchOne("select id,name from class where id=$id");
    }
    if(isset($_POST['name'])){
        $success=1;
        if($_POST['name']==''){
            $_SESSION['ename']="Enter class name";
            $success=0;
        }
        if($success){
            addUpdate('class',$_POST,$id);
            ?>
            <script type="text/javascript">
                location.href=root_path+"index/class/syn_s_class";
            </script>
        <?php
        }
    }
?>
<div class="col-lg-12">
    <form role="form" class="form-horizontal"  method="post">
            	
                <div class="form-group">
                	<label class="col-lg-4 control-label">Name of New Class</label>
                    <div class="col-lg-8">
                    <input type="text" required class="form-control" id="" name="name" value="<?php if($id){echo $data['name'];} ?>" style="text-transform:capitalize;">
                    <?php if(isset($_SESSION['ename'])){echo $_SESSION['ename'];unset($_SESSION['ename']);} ?>
                    </div>
                </div>
                
                <div class="form-group">
                	<div class="col-lg-8 col-lg-offset-4">
                    <button type="submit"  id="submit" class="btn btn-danger btn-sm btn-block" style="font-family:'Century Gothic'; font-size:14px; font-weight:bold;">SUBMIT</button>
                    </div>
                </div>
            </form>
</div>