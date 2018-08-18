<?php
    if(isset($_GET['did'])){

        $del_data = fetchOne("Select photo,stu_id from stu_lib where id=$_GET[did]");
        if(file_exists("include/stu_lib/$del_data[photo]")){
            unlink("include/stu_lib/$del_data[photo]");
        }
        delete('stu_lib',$_GET['did']);
        ?>
        <script type="text/javascript">
            location.href=root_path+"index/stu_library/syn_a_lib/<?php echo $del_data['stu_id'] ?>"
        </script>
        <?php 
    }
    if(isset($_GET['id'])){
        $lib_data = fetchAll("select * from stu_lib where stu_id = '$_GET[id]'");
        // print_r($lib_data);exit;
    }
    if(isset($_POST['stu_id'])){
	//print_r($_FILES);//exit;
	//print_r($_POST);//exit;
        $tot_data = count($_POST['chq']);
		//echo $tot_data."hi";
        for($i=0;$i<$tot_data;$i++){
		//echo "hi";
            if($_FILES['photo']['type'][$i]=='image/jpeg' || $_FILES['photo']['type'][$i]=='image/png'){
                $data=array();
                $data['datee'] = date('Y-m-d');
                $data['submit_by'] = $_SESSION['logindtl']['id'];
                $data['photo'] = time()."_".$_FILES['photo']['name'][$i];
                move_uploaded_file($_FILES['photo']['tmp_name'][$i],"include/stu_lib/".$data['photo']);
                $data['stu_id'] =$_POST['stu_id'];
                $data['title'] = $_POST['chq'][$i]['title'];
                addUpdate('stu_lib',$data); 
            }
        }
        ?>
       	<script>
			location.href=root_path+"index/stu_library/syn_a_lib/<?php	echo $_POST['stu_id'];?>";
		</script>
        <?php 
    }
?>

<?php 
    if(isset($lib_data) && $lib_data){
        // echo "hi";
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
                    <td><?php if($lib_data['photo'] && file_exists("include/stu_lib/$lib_data[photo]")){
                        ?>
                        <img src="<?php echo ROOT; ?>include/stu_lib/<?php echo $lib_data['photo']; ?>" height="100" width="100">
                        <?php 
                    } ?></td>
                    <td><?php $submit_by = loginFetchOne("select uname from login where id=$lib_data[submit_by]"); echo $submit_by['uname'] ?></td>
                    <td><a href="#" onclick="del('<?php echo $lib_data['id']; ?>')" class="btn btn-danger">Delete</a></td>
                </tr><?php 
            } ?>
        </table>
        <?php 
    }else{
        ?>
        <table id="old_photo" class="table table-bordered"></table>
        <?php 
    }
?>
<form method="post" enctype="multipart/form-data">
<table class="table table-bordered">
	<tr>
		<th>Enter Roll no. or Token No.</th>
	</tr>
	<tr>
		<td><input type="text" id="roll" onkeyup="this.value=this.value.replace(/[^0-9]/g,'');" name="stu_id" value="<?php if(isset($_GET['id'])){echo $_GET['id'];} ?>" class="form-control" onchange="showdtl(this.value)"></td>
	</tr>
</table>
<p style="color:#CCCCCC;">Press Tab button after entering Roll No. or Token No.</p>
     <span><input type="hidden" value="0" id="total_chq"></span>


<div id="show">
</div>
</form>
<script type="text/javascript">
	function showdtl(roll){
		$.ajax({
			url:root_path+"module/stu_library/dtl_stu_lib.php",
	        data:"roll="+roll,
	        type:"post",
	        success:function(e){
                $('#show').html(e);
                old_photo(roll);
	        }
        });
	}
	function old_photo(roll){
        // alert(roll);
        $.ajax({
            url:root_path+"module/stu_library/old_photo.php",
            data:"roll="+roll,
            type:"post",
            success:function(e){
                $('#old_photo').html(e);
            }
        });   
    }
    //add cheque
    function add_more_cheque(){
        $('#total_chq').val(parseInt($('#total_chq').val())+1);
        var new_chq_no=$('#total_chq').val();
        $.ajax({
            url:root_path+"module/stu_library/addfile.php",
            data:"new_chq_no="+new_chq_no,
            type:"post",
            success:function(e){
                $('#new_chq').append(e);
            }
        });
    }
    //remove pdc
    function remove_pdc(){
        var last_chq_no=$('#total_chq').val();
        // alert(last_chq_no);
        if(last_chq_no>1){
            $('#new_'+last_chq_no).remove();
            $('#total_chq').val(last_chq_no-1);
        }
    }
    function del(did){
        if(confirm("Do you really want to delte")){
            location.href=root_path+"index/stu_library/syn_a_lib/did="+did;
        }
    }
</script>
<?php if(isset($_GET['id'])){
    ?>
    <script type="text/javascript">
        showdtl('<?php echo $_GET['id']; ?>')
    </script>
    <?php 
} ?>