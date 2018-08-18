<?php 
    $phpfiles=glob("../../include/php/*.php");
    foreach ($phpfiles as  $phpfile) {
        include_once($phpfile);
    }
    if(isset($_GET['wh'])){
        $wh ="where wheree='inquiry'";
        $wh .= $_GET['wh'];
    }else{
        $wh ="where wheree='inquiry'";
    }
?>

<link rel="stylesheet" type="text/css" href="<?php echo ROOT; ?>include/css/bootstrap.min.css">
<table id="show" class="table table-bordered table-hover table-responsive">
    <tr class="active1 table_style" style="font-weight:600;">
        <td width="100">Sr. No.</td>
        <td width="100">Token No</td>
        <td width="300">Student Name</td>
        <td width="300">Father Name</td>
        <!--<td width="300">Mother Name</td>-->
        <td width="300">Class</td>
        <td width="300">Mobile No (Father)</td>
        <!--<td width="300">Gender</td>-->
        <td width="300">Intersted In</td>
        <td width="300">Refer To</td>
       
        <td width="300">Date</td>
        <!--<td width="300">Action</td>-->
       
    </tr>

    <?php
    $sno = 1;
            $stu_recp_data=fetchAll("Select stu_profile.id, stu_profile.name,f_name,m_name,office_staff.name as staff,f_mobile,gender,send_to,refer_to,token_no,class.name as class,genrate_token,inquiry_date from stu_profile left join office_staff on refer_to=office_staff.id join class on class_id=class.id $wh order by stu_profile.id ");
?>
<?php 
                foreach ($stu_recp_data as $stu_recp_value) {
            ?>
                    <tr class="primary1 table_style2">
                        <td><?php echo $sno++; ?></td>
                        <td><?php echo $stu_recp_value['token_no']; ?></td>
                        <td><?php echo $stu_recp_value['name'] ?></td>
                        <td><?php echo $stu_recp_value['f_name']; ?></td>
                        <?php /*?><td><?php echo $stu_recp_value['m_name'] ?></td><?php */?>
                        <td><?php echo $stu_recp_value['class']; ?></td>
                        <td><?php echo $stu_recp_value['f_mobile']; ?></td>
                        <?php /*?><td><?php echo $stu_recp_value['gender'] ?></td><?php */?>
                        <td><?php echo $stu_recp_value['send_to']; ?></td>
                        <td><?php echo $stu_recp_value['staff'] ?></td>
                        <td><?php $stu_recp_value['inquiry_date']=explode('-',$stu_recp_value['inquiry_date']);
						 krsort($stu_recp_value['inquiry_date']); 
						 $stu_recp_value['inquiry_date']=implode("-",$stu_recp_value['inquiry_date']); 
						 echo $stu_recp_value['inquiry_date']; ?></td>
                        <td><?php $genrate_by=loginFetchOne("select uname from login where id=$stu_recp_value[genrate_token]"); echo $genrate_by['uname']; ?></td>
                    </tr>
                <?php }?>

</table>