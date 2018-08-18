<?php
    $phpfiles = glob("../../include/php/*.php");
    foreach ($phpfiles as  $phpfile) {
        include_once($phpfile);
    }
    extract($_POST);
    $lib_data = fetchAll("select * from stu_lib where stu_id = '$roll'");
    //boreder not comming properly
?>
<table class="table table-bordered" id="old_photo">
            <tr>
                <td>S.No.</td>
                <td>Title</td>
                <td>Photo</td>
                <td>Submit by</td>
                <td>Action</td>
            </tr>
            <?php
            $sno = 1;
            foreach ($lib_data as  $lib_data) {
            ?>
                <tr>
                    <td><?php echo $sno++; ?></td>
                    <td><?php echo $lib_data['title']; ?></td>
                    <td><?php if($lib_data['photo'] && file_exists("../../include/stu_lib/$lib_data[photo]")){
                        ?>
                        <img src="<?php echo ROOT; ?>include/stu_lib/<?php echo $lib_data['photo']; ?>" height="100" width="100">
                        <?php 
                    } ?></td>
                    <td><?php $submit_by = loginFetchOne("select uname from login where id=$lib_data[submit_by]"); echo $submit_by['uname'] ?></td>
                    <td><a href="#" onclick="del('<?php echo $lib_data['id']; ?>')" class="btn btn-danger">Delete</a></td>
                </tr><?php 
            } ?>
        </table>