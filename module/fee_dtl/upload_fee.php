<?php 	
$qry="";
$item=array();
@header('Content-type:text/html; charset=utf-8');
mysqli_query($con,"SET NAMES 'utf8'");
  if(isset($_POST['submit'])){
//print_r($_POST);exit;
    //echo "select name from coloumn where patt_id=$_POST[patteren]";exit;

    if($_FILES['csv']['name']){
/*      $ext=explode('.',$_FILES['csv']['name']);
      if($ext[1]=='csv'){
      */
      if($_FILES['csv']['type']=='application/vnd.ms-excel'){
        $handle=fopen($_FILES['csv']['tmp_name'],"r");
        while ($data=fgetcsv($handle)) {

          //print_r($data);
          // $item=array();
          $j=0;
          $ccount=count($data);
          $data[0] = preg_replace("/[^0-9]/", "", $data[0]);
          
          for($c=0;$c<$ccount;$c++){

            $item[$j]=mysqli_real_escape_string($con,$data[$c]);
            $j++;
        }
      	//print_r($item);
      	//echo $item[0];
      	$set="";
      	$count=count($item);
      	for($j=0;$j<$count;$j++){
      			//echo "hi";
      			//echo $item[0];

      			$set.="'$item[$j]',";}
      			$set=substr($set,0,-1);
      			//echo $day;/*

      			$loginid=$_SESSION['logindtl']['id'];
      				$sql="insert into fee (roll,recipt_no,amount,pay_by,number,datee,bank_name,submit_by) values($set,$loginid)";
      				// echo $sql;exit;
      				mysqli_query($con,$sql);
      }
      $_SESSION['udata']="Data uploaded successfully";
      ?>
      <script type="text/javascript">
      	location.href=root_path+"index/fee_dtl/syn_s_fee"
      </script>
      <?php 			
    }
  }
}?>
<form method="post" enctype="multipart/form-data">
  <div class="form-group">
    <label class="col-lg-4 control-label">Upload CSV</label>
      <div class="col-lg-8">
<input type="file" name="csv">
</div>
</div>

<div class="form-group">
  <div class="col-lg-8 col-lg-offset-4">
    <button type="submit"  id="submit" class="btn btn-danger btn-sm btn-block" name="submit" style="font-family:'Century Gothic'; font-size:14px; font-weight:bold;">SUBMIT</button>
    </div>
</div>
</form>