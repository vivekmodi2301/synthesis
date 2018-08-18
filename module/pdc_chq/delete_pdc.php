<?php 	 
if(isset($_GET['id'])){
        delete('pdc',$_GET['id']);
        ?>
            <script type="text/javascript">
                location.href=root_path+"index/pdc_chq/syn_s_chq";
            </script>
        <?php
}
?>