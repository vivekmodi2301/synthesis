
<?php
  $phpfiles=glob("include/php/*.php");
  foreach ($phpfiles as  $phpfile) {
    include_once($phpfile);
  }
  extract($_GET);
  $fee_data=fetchOne("select roll,amount,recipt_no, pay_by,number,datee, bank_name,stu_profile.name,class.name as class  from stu_profile join fee on roll=roll_no join class on class_id=class.id where fee.id=$id");
  extract($fee_data);
  $fee_without_gst=$amount*100/118;
  $fee_without_gst=round($fee_without_gst);
  $total_gst=$amount-$fee_without_gst;
  $total_gst=round($total_gst);
  $total_gst=substr($total_gst,0);
  $half=$total_gst/2;
?>
  <link rel="stylesheet" href="include/css/bootstrap.min.css">
  <link rel="stylesheet" href="include/css/bootstrap-theme.min.css"/>
  <link rel="stylesheet" href="include/css/style2.css"/>
  

  
                    <div class="col-lg-7 table-responsive" style="font-size:14px; text-align:center; border:solid 1px #ccc; border:solid 1px #000000;">
                    
                 <div class="col-lg-12 form-group" style="height:100px;">
                    <img  src="<?php echo ROOT; ?>include/images/receipt_header.jpg" height="100" width="100%" />
                 </div>
                       
                <div class="col-lg-12" style="height:40px; border:solid 1px #000000;">
                <table class="table" style="border:none;"><tr>
                <td>Sr. No. <span style="font-size:18px; font-weight:bold;"><?php echo $recipt_no ?></span></td>
                <td><span style="font-size:18px; font-weight:bold;">GST RECEIPT</span></td>
                <td>Receipt Date <span style="font-size:18px; font-weight:bold;"><?php echo $datee ?></span></td>
                </tr></table>
                </div>
                 
                 <br>
                 <div class="col-lg-12" style="margin-top:5px; text-align:left; border:solid 1px #000000;">
                <div class="col-lg-7" style="border-right:solid 1px #ccc; float:left;">
                	<table class="table">
                    <tr><td colspan="2"><u><b>Details of Receiver</b></u></td></tr>
                    <tr><td style="width:170px;">Name :</td><td><?php echo $name ?></td></tr>
                    <tr><td>Course code/ Name :</td><td><?php echo $class ?></td></tr>
                    <tr><td>GSTIN/ UIN :</td><td>08ABFFS8636Q1Z8</td></tr>
                    <tr><td>State :</td><td>State Code :</td></tr>
                    </table>
                 </div>
                 
                 <div class="col-lg-5" style="float:left;">
                    <p style="width:140px;">&nbsp;</p>
                    <p style="width:140px;">Reverse Charge :</p>
                    <p>Cheque Date :<?php if($pay_by=='cheque'){echo $datee;} ?></p>
                    <p>Cheque Number :<?php if($pay_by=='cheque'){echo $number;} ?></p>
                 </div>
                 </div>
                 
                 
                 <div class="col-lg-12" style="margin-top:5px; text-align:left;">
                	  <table width="750" border="1" cellspacing="0" cellpadding="0">
                	    <tr style="height:50px; background:#e5e5e5; text-align:center;">
                	      <th width="50">S. No.</th>
                	      <th width="210">Description of Product/ Service</th>
                	      <th width="100" align="center">HSN/ SAC</th>
                	      <th width="220">&nbsp;</th>
                	      <th width="150">Amount</th>
              	      </tr>
                	    <tr style="vertical-align:0px;">
                	      <td align="center">1.</td>
                	      <td>Coaching/ Tuition Fee (After Scholarship)</td>
                	      <td align="center">9992</td>
                	      <td><table class="table" width="300" border="0" cellspacing="0" cellpadding="0">
                	        <tr>
                	          <td><b>Total Amount Before Tax </b>&rarr;</td>
              	          </tr>
                	        <tr>
                	          <td>Add : CGST &nbsp; @ 9%</td>
              	          </tr>
                	        <tr>
                	          <td>Add : SGST &nbsp; @ 9%</td>
              	          </tr>
                	        <tr>
                	          <td>Total GST &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; @ 18%</td>
              	          </tr>
                	        <tr>
                	          <td><b>Total Amount After Tax </b>&rarr;</td>
              	          </tr>
                	        <tr>
                	          <td>GST Payable on Reverse Charge</td>
              	          </tr>
              	        </table></td>
                	      <td><table width="100" border="0" cellspacing="0" cellpadding="0" class="table">
                	        <tr>
                	          <td width="100"><?php echo $fee_without_gst; ?></td>
              	          </tr>
                	        <tr>
                	          <td><?php echo  $half; ?></td>
              	          </tr>
                	        <tr>
                	          <td><?php echo $half; ?></td>
              	          </tr>
                	        <tr>
                	          <td><?php echo $total_gst ?></td>
              	          </tr>
                	        <tr>
                	          <td><?php echo $amount; ?></td>
              	          </tr>
                	        <tr>
                	          <td></td>
              	          </tr>
              	        </table></td>
              	      </tr>
                      
                      <tr height="30"><th colspan="5">Rupees in words :</th></tr>
                      
              	    </table>
                 </div>
                 
              	<div class="col-lg-12 table-bordered" style="margin-top:5px; border:solid 1px #000000;">
                <div class="col-lg-8" align="left">
                	<table style="height:120px;"><tr>
                    <td style="border-right:solid 1px #ccc;">STATE BANK OF INDIA<br><b>BRANCH :</b> K.K. COLONY, BIKANER<br><b>Account Number :</b> 61008207323<br><b>IFSC Code :</b> SBIN0032048</td>
                    
                    <td>PUNJAB NATIONAL BANK<br><b>BRANCH :</b> JNV COLONY, BIKANER<br><b>Account Number :</b> 7692002100000201<br><b>IFSC Code :</b> PUNB0769200</td>
                    </tr></table>
                 </div>
                 
                 
                 
                 <div class="col-lg-4" style="border-left:solid 1px #ccc;">
                    <span style="font-size:7px;">Certified that particulars given above are true and correct</span> <br><span style="font-size:14px; font-weight:bold;">For, SYNTHESIS</span><br><br><br> <br><span style="font-size:14px; font-weight:bold;">Authorised Signatory</span>
                 </div>
                 </div>   
                 
                 <div>&nbsp;</div>
        </div>