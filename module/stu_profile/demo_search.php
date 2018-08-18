<?php
error_reporting(0);
    $phpfiles=glob("../../include/php/*.php");
    foreach ($phpfiles as  $phpfile) {
        include_once($phpfile);
    }
    //boreder not comming properly
?>
<table class="table table-borderd">

<tr class="active1 table_style" style="font-weight:600;">
    <td width="50">Sr. No.</td>
    <td width="80">Roll No.</td>
    <td width="200">Student Name</td>
    <td width="150">Father Name</td>
    <td width="100">Class</td>
    <td width="100">Batch</td>
    <td width="100">Photo</td>
    <td width="150">Token by</td>
    <td width="150">Registerd by</td>
    <td width="200">Action</td>
    <td width="200">Inquiry Date</td>
    <td width="200">Registered Date</td>
    <td width="200">Demo From - To Date</td>
</tr>
<?php
extract($_POST);
    if($stu_name!=''){
        $wh.=" and stu_profile.name like '%$stu_name%'";
    } 
    if($stu_f_name!=''){
        $wh.=" and f_name like '%$stu_f_name%'";
    } 
    if( $stu_class!=''){
        $wh.=" and class.id=$stu_class";
    } 
    elseif( $stu_class==''){
        $wh.=" and class.id!=''";
    } 
    if( $stu_batch!=''){
        $wh.=" and batch.id=$stu_batch";
    } 
    if($roll!=''){
        $wh.=" and (roll_no like '$roll%'";
        $wh.=" or token_no like '$roll%')";
    }
    if(isset($pg) && $pg!='' && $pg!='undefined'){
        $wh.=" and pg_name like '%$pg%'";
    }
    if(isset($liveat) && $liveat!=''){
        $wh.=" and leave_at='$liveat'";
    }
    if($i_from!='' && $i_to==''){
    $wh.=" and inquiry_date='$i_from'";
    }
    elseif($i_from=='' && $i_to!=''){
        $wh.=" and inquiry_date='$i_from'";
    }elseif($i_from!='' && $i_to!=''){
        $wh.=" and (inquiry_date>='$i_from' and inquiry_date<='$i_to')";
    }
    if($d_from!='' && $d_to==''){
    $wh.=" and from_date>'$d_from'";
    }
    elseif($d_from=='' && $d_to!=''){
        $wh.=" and from_date>'$i_to'";
    }elseif($d_from!='' && $d_to!=''){
        $wh.=" and (from_date>='$d_from' and from_date<='$d_to')";
    }
    if($r_from!='' && $r_to==''){
    $wh.=" and registration_date='$r_from'";
    }
    elseif($r_from=='' && $r_to!=''){
        $wh.=" and registration_date='$r_to'";
    }elseif($r_from!='' && $r_to!=''){
        $wh.=" and (registration_date>='$r_from' and registration_date<='$r_to')";
    }
    $curr_date=date('Y-m-d');
    
    $totRslt=mysqli_fetch_assoc(mysqli_query($con,"select count(*) as tot from stu_profile join class on class_id=class.id join batch on batch_id=batch.id where wheree='demo' and to_date>='$curr_date' $wh"));
    ?>
    <script type="text/javascript">
    $('#tot_stu').html('<?php echo $totRslt[tot] ?>')
    </script>
    <?php
    $student_dtl=fetchAll("select stu_profile.id,stu_profile.name,roll_no,f_name,m_name,class.name as class,batch.name as batch,propic,genrate_token,admission,from_date,to_date,inquiry_date,registration_by,registration_date from stu_profile join class on class_id=class.id join batch on batch_id=batch.id where wheree='demo' and to_date>='$curr_date' $wh");
    // echo "<tr><td>select stu_profile.id,stu_profile.name,roll_no,f_name,m_name,class.name as class,batch.name as batch,propic,genrate_token,admission from stu_profile join class on class_id=class.id join batch on batch_id=batch.id where wheree='demo' and to_date>='$curr_date' $wh</td></tr>";
    $sno=1;
    foreach ($student_dtl as  $student_dtl_value) {
        extract($student_dtl_value);
        $genrate_token=loginFetchOne("select uname from login where id=$genrate_token");
        $register=loginFetchOne("select uname from login where id=$registration_by");
?>
<tr class="primary1 table_style2">
    <td><?php echo $sno++; ?></td>
    <td><?php echo $roll_no; ?></td>
    <td><?php echo $name ?></td>
    <td><?php echo $f_name ?></td>
    <td><?php echo $class ?></td>
    <td><?php echo $batch ?></td>
    <td>
    <?php 
    $path=ROOT.$propic;
    if($propic){
    ?>
        <img src="<?php echo ROOT.$propic; ?>" alt="N/A" height="30" width="30" />
        <?php }else{echo "N/A";}?>
    </td>
    <td><?php echo $genrate_token['uname'] ?></td>
    <td><?php echo $register['uname'] ?></td>
    <td><a href="<?php echo ROOT; ?>index/stu_profile/syn_e_studnt/<?php echo $id; ?>" title="Edit Profile"><img src="<?php echo ROOT; ?>include/images/profile_edit.png" height="20" width="20" /></a> | <a href="#" onclick="del('<?php echo $id; ?>')" title="Delete Profile"><img src="<?php echo ROOT; ?>include/images/trash.png" height="20" width="20" /></a> | <input type="checkbox" class="chk" /></td>
    <td><?php echo $inquiry_date; ?></td>
    <td><?php echo $registration_date; ?></td>
    <td><?php echo $from_date." - ".$to_date; ?></td>
</tr>
<?php } ?>

<tr>
        <td colspan="20">
            <?php PaginationDisplay($totRslt['tot'],$url.'page=','','10','View More Photos');?>
        </td>
</tr>
</table>