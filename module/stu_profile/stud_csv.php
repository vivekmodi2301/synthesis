<?php
$id="";
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
                    $sql="insert into stu_profile (class_id,batch_id,token_no,roll_no,name,f_name,m_name,f_mobile,m_mobile,s_mobile,email,gender,category,dob,ll_no,c_address,c_state,c_district,c_city,c_tehsil,c_pin,p_address,p_state,p_district,p_city,p_tehsil,p_pin,x_roll,x_pcent,x_schl_name,x_board,xii_roll,xii_pcent,xii_schl_name,xii_board,aipmt_roll,aiims_roll,aipvt_roll,icar_roll,rpvt_roll,jeem_roll,jeea_roll,scholarship,scholar_reason) values($_POST[class_id],$_POST[batch_id],$set)";
                    // echo $sql;exit;
                    mysqli_query($con,$sql);

      }
      $_SESSION['udata']="Data uploaded successfully";
      @header("location:index.php?mod=stu_profile&do=syn_see_stu_profile");
    }
  }
}?>
<form role="form" class="form-horizontal" enctype="multipart/form-data" method="post">
	<div class="col-lg-12">

                <div class="form-group">
                	<label class="col-lg-4 control-label">Upload CSV file for<br />New Student Profile</label>
                    <div class="col-lg-8">
                    <input type="file" class="form-control" id="" name="csv" value="">
                    </div>
                </div>
                
                
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
</script>