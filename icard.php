<?php 
$phpfiles=glob("include/php/*.php");
foreach ($phpfiles as $phpfile) {
  include_once($phpfile);
}
$ids=explode(',', $_GET['id']);
if(is_array($ids)){
  $wh="where 1 and";
  foreach ($ids as $id) {
      $wh.=" stu_profile.id=$id or";
  }
  $wh=substr($wh,0,-2);
}
else{
  $wh=" where 1 and ";
  $wh.=" stu_profile.id=$ids or ";
}
// echo $wh;
$qry="select stu_profile.id,stu_profile.name as stu,f_name,class.name as class,batch.name as batch,f_mobile,propic from stu_profile join class on class_id=class.id left join batch on batch_id=batch.id $wh";
// echo $qry;
$stu_data=fetchAll($qry);
?>
<style>
.heading{
text-align:right; font-weight:bold; color:#ED3237; width:200px;
}

.crd_dtl{
text-align:left; font-weight:bold; padding-left:10px;
}
</style>


<div class="col-lg-12 table-responsive" style="width:1100px;">
  <?php   
    foreach ($stu_data as $stu_value) {
      if($stu_value['propic']==''){
         $stu_value['propic']="include/images/pna.jpg"; 
      }
  ?>
<table width="420" height="130" style="float:left; border:solid 2px #F26631; margin-bottom:10px;" cellpadding="0" cellspacing="0">
  <tr>
    <td height="50" colspan="3"><img  src="<?php echo ROOT; ?>include/images/i_card_format_synthesis.jpg" height="90" width="430" /></td>
  </tr>
  
  <tr><td><table style="background:#FFFCD6; width:430px; height:60px;">
  <tr>
    <td width="100" rowspan="4"><img onclick="printme()" src="<?php echo ROOT.$stu_value['propic']; ?>" width="90" height="100" style="border:solid 1px #000; border-radius:20px; background:#FFF; margin-bottom:10px;"/></td>
    <td width="50" class="heading">Student Name &nbsp;&nbsp;&nbsp;:</td>
    <td width="220" class="crd_dtl"><?php  echo ucfirst(strtolower($stu_value['stu'])); ?></td>
  </tr>
  <tr>
    <td class="heading">Father's Name &nbsp;&nbsp;&nbsp;:</td>
    <td class="crd_dtl"><?php  echo ucfirst(strtolower($stu_value['f_name'])); ?></td>
  </tr>
  <tr>
    <td class="heading">Class &amp; Batch &nbsp;&nbsp;&nbsp;:</td>
    <td class="crd_dtl"><?php  echo ucwords(strtolower($stu_value['class']))."&nbsp;".ucwords(strtolower($stu_value['batch'])); ?></td>
  </tr>
  <tr>
    <td class="heading">Parent's Mobile No.</td>
    <td class="crd_dtl"><?php  echo $stu_value['f_mobile']; ?></td>
  </tr>
  </table></td></tr>
  
  <tr style="background:#F26631; height:20px; color:#ffffff; font-size:13px; text-align:center;">
    <td colspan="3">Address :"Gyan Tower" Plot No. 1,2 Street No. 3, Old Shivbari Road, Bikaner</td>
  </tr>
  <tr style="background:#00A6E4; height:20px; color:#ffffff; font-size:13px; text-align:center;">
    <td colspan="3">Contact : 0151-2206735 Mob. 8003094891/ 92/ 93, web. synthesis.ac.in</td>
  </tr>
</table>

<table style="float:left;"><tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td></tr></table>


<?php   } ?>

<script type="">
  function printme(){
    window.print();
  }
</script>