
<?php
    $phpfiles=glob("../../include/php/*.php");
    foreach ($phpfiles as  $phpfile) {
        include_once($phpfile);
    }
    //boreder not comming properly
?>
<?php
extract($_POST);

        $stu_data=fetchOne("select roll_no,token_no,stu_profile.name as name,f_name,scholarship,class.name as class,batch.name as batch,class.id as class_id, genrate_token,inquiry_date,registration_date,demo_class,from_date,to_date,addmission_date,admission from stu_profile join class on class_id=class.id join batch on batch_id=batch.id where   roll_no='$roll' or token_no='$roll'");
        // echo "select roll_no,token_no,name,f_name,scholarship,class.name as class,batch.name as batch,class.id as class_id, genrate_token,inquiry_date,registration_date,demo_class,from_date,to_date,addmission_date,admission from stu_profile join class on class_id=class.id join batch on batch_id=batch.id where   roll_no='$roll' or token_no='$roll'";
?>

<table class="table table-bordered">
    <tr>
        <td>Roll No.</td>
        <td>Token No.</td>
        <td>Name</td>
        <td>Father Name</td>
        <td>Class</td>
        <td>Batch</td>
        
    </tr>
    <tr>
        <td><?php  echo $stu_data['roll_no']; ?></td>
        <td><?php  echo $stu_data['token_no']; ?></td>
        <td><?php  echo $stu_data['name']; ?></td>
        <td><?php  echo $stu_data['f_name']; ?></td>
        <td><?php  echo $stu_data['class']; ?></td>
        <td><?php  echo $stu_data['batch']; ?></td>
        
    </tr>
</table>