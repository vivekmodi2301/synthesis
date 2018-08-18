        <?php
        	$phpfiles=glob("../../include/php/*.php");
        	foreach ($phpfiles as  $phpfile) {
        		include_once($phpfile);
        	}
        	//boreder not comming properly
        ?>
        <tr class="active1 table_style" style="font-weight:600;">
            <td width="50">Sr. No.</td>
            <td width="50">Roll No.</td>
            <td width="150">Student Name</td>
            <td width="100">Father Name</td>
            <td width="100">Amount</td>
            <td width="100">Date</td>
            <td width="100">Stationary Name</td>
            <!-- <td width="50">Bounced Cheque</td>
            <td width="50">Cleared Cheque</td>
            <td width="50">Expired Cheque</td>
            <td width="50">Status</td>
            <td width="200" colspan="3">Action</td> -->
        </tr>
        <?php
        extract($_POST);
        //to select all data
        $wh=" where 1 ";
        if($stu_name!=''){
        	$wh.=" and stu_profile.name like '%$stu_name%'";
        } 
        if($sta_name!=''){
        	$wh.=" and stationary.name like '%$sta_name%'";
        } 
        if( $stu_class!=''){
        	$wh.=" and class_id=$stu_class";
        } 
        elseif( $stu_class==''){
            $wh.=" and class_id!=''";
        } 
        if( $stu_batch!=''){
        	$wh.=" and batch_id=$stu_batch";
        } 
        if($roll!=''){
            $wh.=" and (stationary.roll_no like '$roll%')";
        } 
        if($i_from!='' && $i_to==''){
            $wh.=" and datee='$i_from'";
        }
        elseif($i_from=='' && $i_to!=''){
            $wh.=" and datee='$i_to'";
        }elseif($i_from!='' && $i_to!=''){
            $wh.=" and (datee>='$i_from' and datee<='$i_to')";
        }
            $qry="select stationary.id,stu_profile.name as student , stationary.name,amount,datee,stationary.roll_no,stu_profile.name as stu,f_name from stationary join stu_profile on stationary.roll_no=stu_profile.roll_no $wh";
            echo "<tr><td>$qry</td></tr>";
            $pdc_dtl=fetchAll($qry);
            // print_r($pdc_dtl);
            $sno=1;
            foreach ($pdc_dtl as  $pdc_value) {
                ?>
        <tr class="primary1 table_style2">
            <td><?php echo $sno++; ?></td>
            <td><?php echo $pdc_value['roll_no'] ?></td>
            <td><?php echo $pdc_value['student'] ?></td>
            <td><?php echo $pdc_value['f_name'] ?></td>
            <td><?php echo $pdc_value['amount'] ?></td>
            <td><?php echo $pdc_value['datee'] ?></td>
            <td><?php echo $pdc_value['name'] ?></td>
            
        </tr>
        </table>
        <?php } ?>