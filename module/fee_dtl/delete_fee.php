<?php 	 
if(isset($_GET['id'])){
        delete('fee',$_GET['id']);
        ?>
            <script type="text/javascript">
                location.href=root_path+"index/fee_dtl/syn_s_fee";
            </script>
        <?php
}
?>