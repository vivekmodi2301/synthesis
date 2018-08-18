<?php 
	if(isset($_POST['x_roll'])){
		// print_r($_POST);exit;
		// echo "hi";exit;
		if($_POST['id']){
			$id=$_POST['id'];
			unset($_POST['id']);
			if(isset($_FILES['propic']['name']) && $_FILES['propic']['name'])
    {
        if($_FILES['propic']['type']=='image/jpeg'||$_FILES['propic']['type']='image/png'){
          // echo "hi";exit;
          if($id && $stu_data['propic']){
            
              // unlink($stu_data['propic']);
            
          }

          $upload_dir = "include/student_propic/"; 
          $file_name = time().$_FILES["propic"]["name"];
          // echo $file_name;exit;
          $upload_file = $upload_dir.$file_name;    
          if(move_uploaded_file($_FILES['propic']['tmp_name'],$upload_file)){        

             $source_image = $upload_file;
             $image_destination = $upload_dir."min-".$file_name;
             // echo $image_destination;exit;
             $compress_images = compressImage($source_image, $image_destination);
             $_POST['propic']=$image_destination;      
          }
             unlink($upload_file);

        }
        
    }
    elseif(isset($_SESSION['image_upload'])){

            if($id && $stu_data['propic']){
              
                unlink(ROOT.$stu_data['propic']);
              
            }
            $_POST['propic']=$_SESSION['image_upload'];
            unset($_SESSION['image_upload']);
        }
			addUpdate('stu_profile',$_POST,$id);
			?>
			<script type="text/javascript">
				alert("Data inserted");
				location.href=root_path+"index/stu_profile/other_dtl";
			</script>
			<?php
		}
	}
?>
<table class="table table-bordered">
	<tr>
		<th>Enter Roll no. or Token No.</th>
	</tr>
	<tr>
		<td><input type="text" id="roll" onkeyup="this.value=this.value.replace(/[^0-9]/g,'');" class="form-control" onchange="showdtl(this.value)"></td>
	</tr>
</table>
<div id="show">
</div>
<script type="text/javascript">
	function showdtl(roll){
		// alert(roll);
		$.ajax({
	        url:root_path+"module/stu_profile/form.php",
	        data:"roll="+roll,
	        type:"post",
	        success:function(e){
	            $('#show').html(e);
	        },error:function(e){
	        	alert(e);
	        }
        });
	}
</script>
<?php 
	if(isset($_GET['id'])){
		$id=$_GET['id'];
		?>
		<script type="text/javascript">
			showdtl('<?php echo $id ?>')
			$('#roll').val('<?php echo $id ?>');
		</script>
		<?php
	}
?>