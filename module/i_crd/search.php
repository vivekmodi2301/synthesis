<?php
    $phpfiles=glob("../../include/php/*.php");
    foreach ($phpfiles as  $phpfile) {
        include_once($phpfile);
    }
    extract($_POST);
        $pageData = 10;
    if(!isset($_POST['where'])){
        $wh=" where roll_no!='' ";
        
        if($stu_name!=''){
            $wh.=" and stu_profile.name like '%$stu_name%'";
        } 
        if($stu_f_name!=''){
            $wh.=" and f_name like '%$stu_f_name%'";
        } 
        if( $stu_class!=''){
            $wh.=" and class.id=$stu_class";
        } 
        if( $stu_batch!=''){
            $wh.=" and batch.id=$stu_batch";
        } 
        if($roll!=''){
            $wh.=" and (token_no like '%$roll%' or roll_no like '%$roll%')";
        }
    }else{
        $wh=$_POST['where'];
        if(isset($_SESSION['data'])){
            $pageData = $_SESSION['data'];
        }
    }

?>
<table id="show" class="table table-bordered table-hover">
  <tr class="active1 table_style" style="font-weight:600;">
        <td width="50">Sr. No.</td>
        <td width="80">Roll No.</td>
        <td width="200">Student Name</td>
        <td width="150">Father Name</td>
        <td width="100">Class</td>
        <td width="100">Status</td>
        <td width="100">Batch</td>
        <td width="100">Photo</td>
        <td width="100" colspan="3">Action</td>
    </tr>
    <?php

        $url=ROOT."index/i_crd/syn_i_per/";
        $limit=1;
        $frmdataget=$_REQUEST;
        @PaginationWork(10); 
        $totRslt=mysqli_fetch_assoc(mysqli_query($con,"select count(*) as tot from stu_profile join class on class_id=class.id join batch on batch_id=batch.id $wh"));

        ?>
        <script type="text/javascript">
        $('#tot_stu').html('<?php echo $totRslt['tot'] ?>')
        </script>
    <?php 
        $student_dtl=fetchAll("select stu_profile.id,stu_profile.name,roll_no,f_name,m_name,class.name as class,batch.name as batch,propic,f_mobile,wheree from stu_profile join class on class_id=class.id join batch on batch_id=batch.id $wh limit ".$frmdata['from'].", ".$frmdata['to']);
        $sno=1;
        foreach ($student_dtl as  $student_dtl_value) {
            extract($student_dtl_value);
    ?>
    <tr class="primary1 table_style2">
        <td><?php echo $sno++; ?></td>
        <td><?php echo $roll_no; ?></td>
        <td><?php echo $name ?></td>
        <td><?php echo $f_name ?></td>
        <td><?php echo $class ?></td>
        <td><?php echo $wheree ?></td>
        <td><?php echo $batch ?></td>
        <td>
        <?php 
        $path=ROOT.$propic;
        if($propic){
        ?>
            <img src="<?php echo ROOT.$propic; ?>" alt="N/A" height="30" width="30" />
            <?php }else{echo "N/A";}?>
        </td>
        <td><input type="checkbox" class="chk" value="<?php echo $id; ?>" /></td>
    </tr>
    <?php } ?>

     <tr>
            <td colspan="20">
                <?php PaginationDisplay($totRslt['tot'],$url.'page=','','10','View More Photos');?>
            </td>
    </tr>
</table>