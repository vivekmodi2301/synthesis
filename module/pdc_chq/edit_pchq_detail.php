<?php 
//print_r($_GET);
$id="";
if(isset($_GET['id'])){
$id=$_GET['id'];
//echo $id;exit;
$evalue=fetchOne("select id,roll,amount,chq_no,bank_name,datee,expiry_date,chequey,update_date from pdc where id=$id");
//print_r($value);exit;
}
if(isset($_POST['amount'])){

    $value['submit_by']=$_SESSION['logindtl']['id'];
    addUpdate('pdc',$_POST,$id);
    ?>
        <script>
            location.href=root_path+"index/pdc_chq/syn_pdc_dtl/<?php echo $evalue['roll']; ?>"
        </script>
    <?php
}
?>
<div class="form-group">
    <form method="post">
                	<label class="col-lg-4 control-label">PDC Cheque (1<sup>st</sup> Installment)</label>
                    <div class="col-lg-8">                    
                    <table class="table table-bordered table-hover">
            	<tr class="active1 table_style">
                    <td>Enter Cheque Amount <input type="text" class="form-control" placeholder="INR" id="amount1"  name="amount" required="required" value="<?php if($id){ echo $evalue['amount']; } ?>" /></td>
                    <td>Enter Cheque Number <input type="text" class="form-control" placeholder="Enter Cheque Number" name="chq_no" required="required" value= "<?php if($id){ echo $evalue['chq_no']; } ?>" /></td>
                    <td>Enter Bank Name <input type="text" class="form-control" placeholder="Enter Bank Name" name="bank_name" required="required" value="<?php if($id){ echo $evalue['bank_name']; } ?>" /></td>
                </tr>
                <tr class="active1 table_style">
                    <td>Enter Cheque Date (From)- <input type="date" name="datee" class="form-control" placeholder="Cheque Date" required="required" value="<?php if($id){ echo $evalue['datee']; } ?>"/></td>
                    <td>-(To) Cheque Expiring Date <input type="date" name="expiry_date" class="form-control" placeholder="Cheque Expiring Date" required="required" value="<?php if($id){ echo $evalue['expiry_date']; } ?>"/></td>
                    <td>Updated Cheque <input type="date" name="update_date" class="form-control" placeholder="Cheque Expiring Date"  value="<?php if($id){ echo $evalue['update_date']; } ?>"/></td>
                </tr>
            </table>
            <input type="submit" value="Submit">
                    </div>
                    </form>
                </div>
                