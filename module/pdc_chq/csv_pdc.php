<?php
$qry="";
$item=array();
@header('Content-type:text/html; charset=utf-8');
mysqli_query($con,"SET NAMES 'utf8'");
  if(isset($_POST['submit'])){
//print_r($_POST);exit;
    //echo "select name from coloumn where patt_id=$_POST[patteren]";exit;

    if($_FILES['csv']['name']){
        if($_FILES['csv']['type']=='application/vnd.ms-excel'){
            $handle=fopen($_FILES['csv']['tmp_name'],"r");
            while ($data=fgetcsv($handle)) {
          $item=array();
          //print_r($data);exit;
          $j=1;
          $ccount=count($data);
          for($c=0;$c<$ccount;$c++){
            $item[$j]=mysqli_real_escape_string($con,$data[$c]);
            $j++;
        }




        $set="";
        $count=count($item);
        $set=implode("','",$item);
        $set=substr($set,0,-1);
        $sql="insert into pdc  values('',$set')";
          // echo $sql;exit;
          mysqli_query($con,$sql);


      }
    }
}
  //print_r($item);
  //print_r($item);
          //echo $sql;exit;

        fclose($handle);

        $_SESSION['udata']="Data uploaded successfully";
        ?>
            <script type="text/javascript">
                location.href=root_path+"index/fee_dtl/syn_s_fee";
            </script>
        <?php
  }
 ?>
<form role="form" class="form-horizontal" enctype="multipart/form-data" method="post">
	<div class="col-lg-12">
                <div class="form-group">
                	<label class="col-lg-4 control-label">Upload CSV file for<br />New P.D.C.</label>
                    <div class="col-lg-8">
                    <input type="file" class="form-control" id="" name="csv" value="">
                    </div>
                </div>
                
                <div class="form-group">
                <label class="col-lg-4 control-label">&nbsp;</label>
                    <div class="col-lg-8" align="left">
                    <input type="checkbox" style="width:15px; float:left;" class="form-control" id="declaration" name="declaration" required /><span style="line-height:40px; padding-left:10px;">I accept all the terms and conditions with full peace of mind.</span> 
                    </div>
                </div>
      
      <div class="form-group">
                	<div class="col-lg-8 col-lg-offset-4">
                    <button type="submit" name="submit" id="submit" class="btn btn-danger btn-sm btn-block" style="font-family:'Century Gothic'; font-size:14px; font-weight:bold;">SUBMIT</button>
                    </div>
                </div>
     </div>
</form>