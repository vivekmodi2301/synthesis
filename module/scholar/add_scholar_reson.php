<?php 
    $id="";
    if(isset($_GET['id'])){
        $id=$_GET['id'];
        $data=fetchOne("select id,scholar_reason,scholar_subreason from scholarship where id=$id");
    }
    if(isset($_POST['scholar_reason'])){
        $success=1;
        if($_POST['scholar_reason']==''){
            $_SESSION['escholarship_reson']="Enter Person name";
            $success=0;
        }
         
        if($success){

            // print_r($_POST);exit;
            addUpdate('scholarship',$_POST,$id);
            ?>
            <script type="text/javascript">
                location.href=root_path+"index/scholar/syn_s_reson";
            </script>
        <?php
        }
    }
?>
<div class="col-lg-12">
    <form role="form" class="form-horizontal"  method="post">
            	
                <div class="form-group">
				<h3 style="color:#990000;">Add Scholarship Reason</h3>
                	<label class="col-lg-4 control-label">Write Scholarship Reson</label>
                    <div class="col-lg-8">
                    <input type="text" required class="form-control" id="" name="scholar_reason" value="<?php if(isset($_POST['scholarship_reson'])){ echo $_POST['scholarship_reson'];} elseif($id){ echo $data['scholar_reason']; } ?>" style="text-transform:capitalize;">
                    <?php if(isset($_SESSION['escholarship_reson'])){echo $_SESSION['escholarship_reson'];unset($_SESSION['escholarship_reson']);} ?>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-lg-4 control-label">Write Scholarship Sub Reson</label>
                    <div class="col-lg-8">
                        <textarea class="form-control" name="scholar_subreason" required="required"><?php if($id ){echo $data['scholar_subreason'];} ?></textarea>
						<h5 style="color:#990000;">Add Multiple Scholarship Reasons seperated by comma (,)</h5>
                    </div>
                </div>

                
                <div class="form-group">
                	<div class="col-lg-8 col-lg-offset-4">
                    <button type="submit"  id="submit" class="btn btn-danger btn-sm btn-block" style="font-family:'Century Gothic'; font-size:14px; font-weight:bold;">SUBMIT</button>
                    </div>
                </div>
            </form>
</div>