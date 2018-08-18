<!-- <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script> -->
<style>
/********* SIDE NAV BAR ***********/
a {
color:#000;
}

li {
list-style:none;
} 

.panel-default
{
	background:#CF6;
}

.panel-heading {
    color: #fff;
    background-color: #00436a;
    border-color: #ddd;
	text-align:left;
}

.panel-group .panel+.panel {
    margin-top: 0px;
}
.panel-group {
	margin-top: 35px;
}
.panel-collapse {
	/*background-color:rgba(220, 213, 172, 0.5);*/
	background:#F96;
}

.glyphicon { 
margin-right:10px; 
}


ul.list-group {
	margin:0px;
}

ul.bulletlist li {
	list-style:disc;
}


ul.list-group  li a {
 display:block;
 padding:5px 0px 5px 15px;
 text-decoration:none;
}

ul.list-group li {
	border-bottom: 1px dotted rgba(0,0,0,0.2);
}
	

ul.list-group  li a:hover, ul li a:focus {
 color:#fff;
 background-color: #00436a;
}

.panel-title a:hover,
.panel-title a:active,
.panel-title a:focus,
.panel-title .open a:hover,
.panel-title .open a:active,
.panel-title .open a:focus
 {
	text-decoration:none;
	color:#FF6600;
}

.panel-title>.small, .panel-title>.small>a, .panel-title>a, .panel-title>small, .panel-title>small>a {
        display: block;
}

@media (min-width: 768px){
.navbar-collapse.collapse 
	{
    display: block!important;
    height: auto!important;
    padding-bottom: 0;
    overflow: visible!important;
	padding-left:0px; 
}
}

@media (min-width: 992px){
.menu-hide {
    display: none;
}

}
.menu-hide .panel-default>.panel-heading {
    color: #fff;
    background-color: #8e8c8c;
    border-color: #ddd;
}

/********** END SIDEBAR *************/

/********** NAVBAR TOGGLE *************/

.navbar-toggle .icon-bar {
    background-color: #fff;
}
.navbar-toggle {
    padding: 11px 10px;
    margin-top: 8px;
    margin-right: 15px;
    margin-bottom: 8px;
    background-color: #a32638;
    border-radius: 0px;
}

/********** END NAVBAR TOGGLE *************/

</style>
<!------ Include the above in your HEAD tag ---------->
  <?php 
  if(isset($_SESSION['logindtl'])){
  ?>
  <div class="col-md-12" style="margin-top:-35px;">
  <div id="sidenav1">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#sideNavbar"> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
    </div>

    <div class="collapse navbar-collapse" id="sideNavbar">
      <div class="panel-group" id="accordion">
        <div class="panel panel-default">
          <div class="panel-heading">
            <h4 class="panel-title"><a href="<?php echo ROOT;?>index/stu_profile/syn_see_stu_profile"><span class="glyphicon glyphicon-home"></span>Dashboard</a> </h4>
          </div>
        </div>
        <?php if(isset($_SESSION['logindtl']) && ($_SESSION['logindtl']['dept']=='inquiry' || $_SESSION['logindtl']['dept']=='accountant' || $_SESSION['logindtl']['dept']=='masteradmin' ||  $_SESSION['logindtl']['dept']=='icard')){?>
        <div class="panel panel-default">
          <div class="panel-heading">
            <h4 class="panel-title"> <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne"><img src="<?php echo ROOT;?>include/images/profile_icon.png" height="30" width="30" /> Student Profile<span class="caret"></span></a> </h4>
          </div>
          <!-- Note: By adding "in" after "collapse", it starts with that particular panel open by default; remove if you want them all collapsed by default --> 
          <div id="collapseOne" class="panel-collapse collapse <?php if(isset($_GET['mod']) && $_GET['mod']=='stu_profile'){echo "in";} ?>">
            <ul class="list-group">
              <?php if($_SESSION['logindtl']['dept']!='icard'){ ?>
              <li><a href="<?php echo ROOT;?>index/stu_profile/syn_see_stu_profile" class="navlink">See All Students (Permanent)</a></li>
              <li><a href="<?php echo ROOT;?>index/stu_profile/syn_e_studnt" class="navlink">Add New Student</a></li>
              <li><a href="<?php echo ROOT;?>index/stu_profile/syn_demo_class_list" class="navlink">Registered Students</a></li>
              <li><a href="<?php echo ROOT;?>index/stu_profile/exp_demo_class_list" class="navlink">Expired Registration Students</a></li>
              <li><a href="<?php echo ROOT;?>index/stu_profile/upload_csv" class="navlink">Upload Students Via CSV File</a></li>
              <li><a href="<?php echo ROOT;?>index/stu_profile/syn_pdc_msg" class="navlink">Send Fee and PDC Msg. to Director</a></li>
              <li><a href="<?php echo ROOT;?>index/stu_profile/syn_reg_msg" class="navlink">Send Registration and Admission Msg. to Director</a></li>
              <li><a href="<?php echo ROOT;?>index/stu_profile/csv_export" class="navlink">Export data in csv</a></li>
              <?php 
              $data=fetchOne("select name from per_stu_exe where id=1");
              ?>
              <li><a href="<?php echo ROOT.$data['name'];?>" class="navlink">Download Exe file</a></li>
              <?php } ?>
              
              <li><a href="<?php echo ROOT;?>index/stu_profile/syn_list_other_dtl" class="navlink">Add other details</a></li>
            </ul>
          </div>
        </div>
        <?php } ?>



        <?php if(isset($_SESSION['logindtl']) && ($_SESSION['logindtl']['dept']=='inquiry' || $_SESSION['logindtl']['dept']=='accountant' || $_SESSION['logindtl']['dept']=='masteradmin')){?>
        
        <div class="panel panel-default">
          <div class="panel-heading">
            <h4 class="panel-title"> <a data-toggle="collapse" data-parent="#accordion" href="#scholar"><span class="glyphicon glyphicon-cog"> </span>Scholarship Reason<span class="caret"></span></a> </h4>
          </div>
          <!-- Note: By adding "in" after "collapse", it starts with that particular panel open by default; remove if you want them all collapsed by default --> 
          <div id="scholar" class="panel-collapse collapse  <?php if(isset($_GET['mod']) && $_GET['mod']=='scholar'){echo "in";} ?>">
            <ul class="list-group">
              <li><a href="<?php echo ROOT;?>index/scholar/syn_a_reson" class="navlink">Add new reason</a></li>
              <li><a href="<?php echo ROOT;?>index/scholar/syn_s_reson" class="navlink">See All Scholarship Reasons</a></li>
            </ul>
          </div>
        </div>
        <?php } ?>
        


        <?php if(isset($_SESSION['logindtl']) && ($_SESSION['logindtl']['dept']=='inquiry' || $_SESSION['logindtl']['dept']=='masteradmin' || $_SESSION['logindtl']['dept']=='recption' || $_SESSION['logindtl']['dept']=='accountant')){ ?>
        <div class="panel panel-default">
          <div class="panel-heading">
            <h4 class="panel-title"> <a data-toggle="collapse" data-parent="#accordion" href="#collapseFortten"><span class="glyphicon glyphicon-cog"> </span>Generate Token/ Enquiry<span class="caret"></span></a> </h4>
          </div>
          <div id="collapseFortten" class="panel-collapse collapse <?php if(isset($_GET['mod']) && $_GET['mod']=='reception'){echo "in";} ?>">
            <ul class="list-group">
              <li><a href="<?php echo ROOT;?>index/reception/recep_list" class="navlink">See All Token/ Enquiry</a></li>
              <li><a href="<?php echo ROOT;?>index/reception/recep_add" class="navlink">Add New Token/ Enquiry</a></li>
              <li><a href="<?php echo ROOT;?>index/reception/upload_csv" class="navlink">Upload data by csv</a></li>
			        <li><a href="<?php echo ROOT;?>index/stu_profile/syn_msg" class="navlink">Send Enquiry Msg. to Director</a></li>
              <li><a href="<?php echo ROOT;?>index/stu_profile/syn_num" class="navlink">Director's Number</a></li>
              <li><a href="<?php echo ROOT;?>index/reception/csv_export" class="navlink">Export data in csv</a></li>
              <?php 
              $data=fetchOne("select name from inq_stu_exe where id=1");
              ?>
              <li><a href="<?php echo ROOT.$data['name'];?>" class="navlink">Download Exe file</a></li>
            </ul>
          </div>
        </div>
        <div class="panel panel-default">
          <div class="panel-heading">
            <h4 class="panel-title"> <a data-toggle="collapse" data-parent="#accordion" href="#stulib"><span class="glyphicon glyphicon-cog"> </span>Student Library<span class="caret"></span></a> </h4>
          </div>
          <div id="stulib" class="panel-collapse collapse <?php if(isset($_GET['mod']) && $_GET['mod']=='stu_library'){echo "in";} ?>">
            <ul class="list-group">
              <li><a href="<?php echo ROOT;?>index/stu_library/syn_a_lib" class="navlink">Add New Library</a></li>
            </ul>
          </div>
        </div>
        <?php } ?>


        <?php if(isset($_SESSION['logindtl']) && ($_SESSION['logindtl']['dept']=='inquiry' || $_SESSION['logindtl']['dept']=='accountant' || $_SESSION['logindtl']['dept']=='masteradmin')){ ?>
        <div class="panel panel-default">
          <div class="panel-heading">
            <h4 class="panel-title"> <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo"><span class="glyphicon glyphicon-cog"> </span>Class Settings<span class="caret"></span></a> </h4>
          </div>
          <div id="collapseTwo" class="panel-collapse collapse <?php if(isset($_GET['mod']) && $_GET['mod']=='class'){echo "in";} ?>">
            <ul class="list-group">
            <!--<li class="navlink2"><a href=""><span class="glyphicon glyphicon-book"></span>Overview</a></li>-->
              <li><a href="<?php echo ROOT;?>index/class/syn_a_class" class="navlink">Add New Class</a></li>
              <li><a href="<?php echo ROOT;?>index/class/syn_s_class" class="navlink">See All Class</a></li>
              <li><a href="<?php echo ROOT;?>index/class/syn_a_batch" class="navlink">Add New Batch</a></li>
              <li><a href="<?php echo ROOT;?>index/class/syn_s_batch" class="navlink">See All Batches</a></li>
            </ul>
          </div>
        </div>
        <?php } ?>


        <?php if(isset($_SESSION['logindtl']) && ($_SESSION['logindtl']['dept']=='inquiry' || $_SESSION['logindtl']['dept']=='masteradmin')){ ?>
        <div class="panel panel-default">
          <div class="panel-heading">
            <h4 class="panel-title"> <a data-toggle="collapse" data-parent="#accordion" href="#collapseThirteen"><span class="glyphicon glyphicon-cog"> </span>Pattern<span class="caret"></span></a> </h4>
          </div>
          <div id="collapseThirteen" class="panel-collapse collapse <?php if(isset($_GET['mod']) && $_GET['mod']=='pattern'){echo "in";} ?>">
            <ul class="list-group">
            <!--<li class="navlink2"><a href=""><span class="glyphicon glyphicon-book"></span>Overview</a></li>-->
              <li><a href="<?php echo ROOT;?>index/pattern/syn_a_patt" class="navlink">Add New Pattern</a></li>
              <li><a href="<?php echo ROOT;?>index/pattern/syn_s_patt">See All Pattern</a> </li>
              <li><a href="<?php echo ROOT;?>index/pattern/syn_a_coloumn">Add New Subject</a> </li>
              <li><a href="<?php echo ROOT;?>index/pattern/syn_s_coloumn">See All Subject</a></li>
            </ul>
          </div>
        </div>
        <?php } ?>


        <?php if(isset($_SESSION['logindtl']) && ($_SESSION['logindtl']['dept']=='inquiry' || $_SESSION['logindtl']['dept']=='masteradmin' || $_SESSION['logindtl']['dept']=='accountant' || $_SESSION['logindtl']['dept']=='icard')){ ?>
        <div class="panel panel-default">
          <div class="panel-heading">
            <h4 class="panel-title"> <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree"><span class="glyphicon glyphicon-cog"> </span>Generate I-Cards<span class="caret"></span></a> </h4>
          </div>
          <div id="collapseThree" class="panel-collapse collapse <?php if(isset($_GET['mod']) && $_GET['mod']=='i_crd'){echo "in";} ?>">
            <ul class="list-group">
            <!--<li class="navlink2"><a href=""><span class="glyphicon glyphicon-book"></span>Overview</a></li>-->
              <!-- <li><a href="<?php //echo ROOT;?>index/i_crd/syn_r_per" class="navlink">Registration I-Card</a></li> -->
              <li><a href="<?php echo ROOT;?>index/i_crd/syn_i_per" class="navlink">Permanent I-Card</a></li>
              <!--<li><a href="<?php echo ROOT;?>index/i_crd/syn_lib_icrd" class="navlink">Library I-Card</a></li>-->
              <!-- <li><a href="<?php //echo ROOT;?>index/i_crd/syn_oth_icrd" class="navlink">Other I-Card </a></li>-->
            </ul>
          </div>
        </div>
        <?php } ?>

        <?php if(isset($_SESSION['logindtl']) && ($_SESSION['logindtl']['dept']=='inquiry' || $_SESSION['logindtl']['dept']=='masteradmin' || $_SESSION['logindtl']['dept']=='accountant')){ ?>
        <div class="panel panel-default">
          <div class="panel-heading">
            <h4 class="panel-title"> <a data-toggle="collapse" data-parent="#accordion" href="#collapseFour"><span class="glyphicon glyphicon-calendar"> </span>Fee Detail<span class="caret"></span></a> </h4>
          </div>
          <div id="collapseFour" class="panel-collapse collapse <?php if(isset($_GET['mod']) && $_GET['mod']=='fee_dtl'){echo "in";} ?>">
            <ul class="list-group">
            <!--<li class="navlink2"><a href=""><span class="glyphicon glyphicon-book"></span>Overview</a></li>-->
              <li><a href="<?php echo ROOT;?>index/fee_dtl/syn_a_feee" class="navlink">Add New Fee</a></li>
              <li><a href="<?php echo ROOT;?>index/fee_dtl/syn_s_fee" class="navlink">See All Fee</a></li>
              <li><a href="<?php echo ROOT;?>index/fee_dtl/upload_csv" class="navlink">Upload Fee Via CSV File</a></li>
              <li><a href="<?php echo ROOT;?>index/fee_dtl/syn_al_fee" class="navlink">Fee Allotment in Classes</a></li>
              <li><a href="<?php echo ROOT;?>index/fee_dtl/syn_al_fee_list" class="navlink">Fee Allotment in Classes List</a></li>
              <li><a href="<?php echo ROOT;?>index/fee_dtl/syn_pdc_fee" class="navlink">Student Detail</a></li>
              <li><a href="<?php echo ROOT;?>index/fee_dtl/csv_export" class="navlink">Export data in csv</a></li>
              <?php
              $data=fetchOne("select name from all_stu_fee where id=1");
              ?>
              <li><a href="<?php echo ROOT.$data['name'];?>" class="navlink">Download Exe file</a></li>
              <li><a href="<?php echo ROOT;?>index/fee_dtl/syn_search_fee" class="navlink">Search by date</a></li>

            </ul>
          </div>
        </div>
        <div class="panel panel-default">
          <div class="panel-heading">
            <h4 class="panel-title"> <a data-toggle="collapse" data-parent="#accordion" href="#refund"><span class="glyphicon glyphicon-calendar"> </span>Refund<span class="caret"></span></a> </h4>
          </div>
          <div id="refund" class="panel-collapse collapse <?php if(isset($_GET['mod']) && $_GET['mod']=='refund'){echo "in";} ?>">
            <ul class="list-group">
            <!--<li class="navlink2"><a href=""><span class="glyphicon glyphicon-book"></span>Overview</a></li>-->
              <li><a href="<?php echo ROOT;?>index/refund/syn_s_stu" class="navlink">Student List</a></li>
              <li><a href="<?php echo ROOT;?>index/refund/syn_see_stu_profile" class="navlink">Refunded Student</a></li>
              <li><a href="<?php echo ROOT;?>index/refund/csv_export" class="navlink">Export data in csv</a></li>
              <?php 
              $data=fetchOne("select name from refund_exe where id=1");
              ?>
              <li><a href="<?php echo ROOT.$data['name'];?>" class="navlink">Download Exe file</a></li>
             
            </ul>
          </div>
        </div>
        <?php } ?>


        <?php if(isset($_SESSION['logindtl']) && ($_SESSION['logindtl']['dept']=='inquiry' || $_SESSION['logindtl']['dept']=='masteradmin' || $_SESSION['logindtl']['dept']=='accountant')){ ?>
        <div class="panel panel-default">
          <div class="panel-heading">
            <h4 class="panel-title"> <a data-toggle="collapse" data-parent="#accordion" href="#stationary"><span class="glyphicon glyphicon-calendar"> </span>Stationary<span class="caret"></span></a> </h4>
          </div>
          <div id="stationary" class="panel-collapse collapse <?php if(isset($_GET['mod']) && $_GET['mod']=='stationary'){echo "in";} ?>">
            <ul class="list-group">
            <!--<li class="navlink2"><a href=""><span class="glyphicon glyphicon-book"></span>Overview</a></li>-->
              <li><a href="<?php echo ROOT;?>index/stationary/syn_a_stat" class="navlink">Add New Stationary</a></li>
              <li><a href="<?php echo ROOT;?>index/stationary/syn_s_stat" class="navlink">See Stationary</a></li>
              <li><a href="<?php echo ROOT;?>index/stationary/upload_csv" class="navlink">Upload stationary Via CSV File</a></li>
            </ul>
          </div>
        </div>
        <?php } ?>


        <?php if(isset($_SESSION['logindtl']) && ($_SESSION['logindtl']['dept']=='inquiry' || $_SESSION['logindtl']['dept']=='masteradmin' || $_SESSION['logindtl']['dept']=='accountant')){ ?>
        <div class="panel panel-default">
          <div class="panel-heading">
            <h4 class="panel-title"> <a data-toggle="collapse" data-parent="#accordion" href="#collapseFive"><span class="glyphicon glyphicon-calendar"> </span>PDC Cheque<span class="caret"></span></a> </h4>
          </div>
          <div id="collapseFive" class="panel-collapse collapse <?php if(isset($_GET['mod']) && $_GET['mod']=='pdc_chq'){echo "in";} ?>">
            <ul class="list-group">
            <!--<li class="navlink2"><a href=""><span class="glyphicon glyphicon-book"></span>Overview</a></li>-->
              <li><a href="<?php echo ROOT;?>index/pdc_chq/syn_a_chq" class="navlink">Add New PDC</a></li>


              <li><a href="<?php echo ROOT;?>index/pdc_chq/syn_s_chq" class="navlink">See All PDC(Student)</a></li>



              <li><a href="<?php echo ROOT;?>index/pdc_chq/syn_show_all_pdc" class="navlink">See All PDC</a></li>



              <li><a href="<?php echo ROOT;?>index/pdc_chq/syn_upcmng_pchq" class="navlink">Upcoming PDC</a></li>
              <li><a href="<?php echo ROOT;?>index/pdc_chq/syn_clerd_pchq" class="navlink">Cleared Cheque</a></li>
              <li><a href="<?php echo ROOT;?>index/pdc_chq/syn_bounced_pchq" class="navlink">Bounced Cheque</a></li>
              <li><a href="<?php echo ROOT;?>index/pdc_chq/syn_exp_pchq" class="navlink">Expired Cheque</a></li>
              <li><a href="<?php echo ROOT;?>index/pdc_chq/syn_updated_pchq" class="navlink">Updated Cheque</a></li>
              <li><a href="<?php echo ROOT;?>index/pdc_chq/upload_csv" class="navlink">Upload PDC Via CSV File</a></li>
              <li><a href="<?php echo ROOT;?>index/pdc_chq/syn_due_pdc" class="navlink">Due PDC(Ready to Apply)</a></li>
            </ul>
          </div>
        </div>
        <?php } ?>


        <?php if(isset($_SESSION['logindtl']) && ($_SESSION['logindtl']['dept']=='inquiry' || $_SESSION['logindtl']['dept']=='masteradmin' )){ ?>
        <div class="panel panel-default">
          <div class="panel-heading">
            <h4 class="panel-title"> <a data-toggle="collapse" data-parent="#accordion" href="#collapseSix"><span class="glyphicon glyphicon-user"></span> SPR<span class="caret"></span></a></h4>
          </div>
          <div id="collapseSix" class="panel-collapse collapse <?php if(isset($_GET['mod']) && $_GET['mod']=='spr'){echo "in";} ?>">
            <ul class="list-group">
            <!--<li class="navlink2"><a href=""><span class="glyphicon glyphicon-book"></span>Overview</a></li>-->
              <li><a href="<?php echo ROOT;?>index/spr/syn_add_spr" class="navlink">Add New SPR</a></li>
              <li><a href="<?php echo ROOT;?>index/spr/syn_see_spr" class="navlink">See All SPR</a></li>
              <li><a href="<?php echo ROOT;?>index/spr/dlt_spr" class="navlink">Delete SPR</a></li>
            </ul>
          </div>
        </div>
        <?php } ?>


        <?php if(isset($_SESSION['logindtl']) && ($_SESSION['logindtl']['dept']=='inquiry' || $_SESSION['logindtl']['dept']=='masteradmin')){ ?>
        <div class="panel panel-default">
          <div class="panel-heading">
            <h4 class="panel-title"> <a data-toggle="collapse" data-parent="#accordion" href="#collapseSeven"><span class="glyphicon glyphicon-user"></span> Attendance Report<span class="caret"></span></a></h4>
          </div>
          <div id="collapseSeven" class="panel-collapse collapse <?php if(isset($_GET['mod']) && $_GET['mod']=='attndnce'){echo "in";} ?>">
            <ul class="list-group">
            <!--<li class="navlink2"><a href=""><span class="glyphicon glyphicon-book"></span>Overview</a></li>-->
              <li><a href="<?php echo ROOT;?>index/attndnce/syn_a_attndnce" class="navlink">Add New Attendance</a></li>
              <li><a href="<?php echo ROOT;?>index/attndnce/syn_s_attndnce" class="navlink">See All Attendance</a></li>
              <li><a href="<?php echo ROOT;?>index/attndnce/syn_d_attndnce" class="navlink">Delete Attendance</a></li>
            </ul>
          </div>
        </div>
        <?php } ?>


        <?php if(isset($_SESSION['logindtl']) && ($_SESSION['logindtl']['dept']=='inquiry' || $_SESSION['logindtl']['dept']=='accountant' || $_SESSION['logindtl']['dept']=='masteradmin')){ ?>
        <div class="panel panel-default">
          <div class="panel-heading">
            <h4 class="panel-title"> <a data-toggle="collapse" data-parent="#accordion" href="#collapseEight"><span class="glyphicon glyphicon-user"></span> Employee Profile<span class="caret"></span></a></h4>
          </div>
          <div id="collapseEight" class="panel-collapse collapse <?php if(isset($_GET['mod']) && $_GET['mod']=='emp_profile'){echo "in";} ?>">
            <ul class="list-group">
            <!--<li class="navlink2"><a href=""><span class="glyphicon glyphicon-book"></span>Overview</a></li>-->
              <li><a href="<?php echo ROOT;?>index/emp_profile/syn_s_employee" class="navlink">See All Employee</a></li>
              <li><a href="<?php echo ROOT;?>index/emp_profile/syn_a_employee" class="navlink">Add New Employee</a></li>
              <li><a href="<?php echo ROOT;?>index/emp_profile/upload_csv" class="navlink">Upload Employee Via CSV File</a></li>
              <li><a href="<?php echo ROOT;?>index/emp_profile/csv_export" class="navlink">Export data in csv</a></li>
              <?php
              $data=fetchOne("select name from emp_exe where id=1");
              ?>
              <li><a href="<?php echo ROOT.$data['name'];?>" class="navlink">Download Exe file</a></li>
            </ul>
          </div>
        </div>
        <?php } ?>

        <?php if(isset($_SESSION['logindtl']) && ($_SESSION['logindtl']['dept']=='inquiry' || $_SESSION['logindtl']['dept']=='accountant' || $_SESSION['logindtl']['dept']=='masteradmin')){ ?>
        <div class="panel panel-default">
          <div class="panel-heading">
            <h4 class="panel-title"> <a data-toggle="collapse" data-parent="#accordion" href="#collapseNine"><span class="glyphicon glyphicon-user"></span> Teacher Profile<span class="caret"></span></a></h4>
          </div>
          <div id="collapseNine" class="panel-collapse collapse <?php if(isset($_GET['mod']) && $_GET['mod']=='teachr_profile'){echo "in";} ?>">
            <ul class="list-group">
            <!--<li class="navlink2"><a href=""><span class="glyphicon glyphicon-book"></span>Overview</a></li>-->
              <li><a href="<?php echo ROOT;?>index/teachr_profile/syn_s_profile" class="navlink">See All Faculty</a></li>
              <li><a href="<?php echo ROOT;?>index/teachr_profile/syn_a_profile" class="navlink">Add New Faculty</a></li>
              <li><a href="<?php echo ROOT;?>index/teachr_profile/upload_csv" class="navlink">Upload Faculty Via CSV File</a></li>
              <li><a href="<?php echo ROOT;?>index/teachr_profile/csv_export" class="navlink">Export data in csv</a></li>
              <?php 
              $data=fetchOne("select name from tec_exe where id=1");

              ?>
              <li><a href="<?php echo ROOT.$data['name']; ?>" class="navlink">Download Exe file</a></li>
            </ul>
          </div>
        </div>
        <?php } ?>



       
        <?php if(isset($_SESSION['logindtl']) && ($_SESSION['logindtl']['dept']=='masteradmin' || $_SESSION['logindtl']['dept']=='accountant')){ ?>
        <div class="panel panel-default">
          <div class="panel-heading">
            <h4 class="panel-title"> <a data-toggle="collapse" data-parent="#accordion" href="#salary"><span class="glyphicon glyphicon-user"></span> Employee/Teacher Salary<span class="caret"></span></a></h4>
          </div>
          <div id="salary" class="panel-collapse collapse <?php if(isset($_GET['mod']) && $_GET['mod']=='salary'){echo "in";} ?>">
            <ul class="list-group">
              <li><a href="<?php echo ROOT;?>index/salary/syn_a_salary" class="navlink">Add Salary</a></li>
              <li><a href="<?php echo ROOT;?>index/salary/syn_salary_list" class="navlink">Salary List</a></li>
              <li><a href="<?php echo ROOT;?>index/salary/upload_csv" class="navlink">Upload by csv</a></li>
              <li><a href="<?php echo ROOT;?>index/salary/csv_export" class="navlink">Export data in csv</a></li>
              <?php 
              $data=fetchOne("select name from salray_exe where id=1");
              ?>
              <li><a href="<?php echo ROOT.$data['name'];?>" class="navlink">Download Exe file</a></li>
            </ul>
          </div>
        </div>
        <?php } ?>

        

        <?php if(isset($_SESSION['logindtl']) && ($_SESSION['logindtl']['dept']=='accountant' || $_SESSION['logindtl']['dept']=='masteradmin')){ ?>
        <div class="panel panel-default">
          <div class="panel-heading">
            <h4 class="panel-title"> <a data-toggle="collapse" data-parent="#accordion" href="#collapseEleven"><span class="glyphicon glyphicon-user"></span> Miscellaneous Expenses<span class="caret"></span></a></h4>
          </div>
          <div id="collapseEleven" class="panel-collapse collapse <?php if(isset($_GET['mod']) && $_GET['mod']=='expenses'){echo "in";} ?>">
            <ul class="list-group">
              <li><a href="<?php echo ROOT;?>index/expenses/syn_s_expenses" class="navlink">See All Expenses</a></li>
              <li><a href="<?php echo ROOT;?>index/expenses/syn_a_expenses" class="navlink">Add New Expence</a></li>
              <li><a href="<?php echo ROOT;?>index/expenses/syn_org_list" class="navlink">Organization List</a></li>
            </ul>
          </div>
        </div>


        <?php } ?>

        



        <?php if(isset($_SESSION['logindtl']) && ($_SESSION['logindtl']['dept']=='inquiry' || $_SESSION['logindtl']['dept']=='accountant' || $_SESSION['logindtl']['dept']=='masteradmin')){ ?>
        <div class="panel panel-default">
          <div class="panel-heading">
            <h4 class="panel-title"> <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwelve"><span class="glyphicon glyphicon-user"></span> Vehicle Details<span class="caret"></span></a></h4>
          </div>
          <div id="collapseTwelve" class="panel-collapse collapse <?php if(isset($_GET['mod']) && $_GET['mod']=='vehicl_profile'){echo "in";} ?>">
            <ul class="list-group">
              <li><a href="<?php echo ROOT;?>index/vehicl_profile/syn_see" class="navlink">See All Drivers</a></li>
              <li><a href="<?php echo ROOT;?>index/vehicl_profile/syn_add" class="navlink">Add New Driver</a></li>
              <li><a href="<?php echo ROOT;?>index/vehicl_profile/upload_csv" class="navlink">Upload Driver Via CSV File</a></li>
              <?php 
              $data=fetchOne("select name from vec_exe where id=1");
              ?>
              <li><a href="<?php echo ROOT.$data['name'];?>" class="navlink">Download Exe file</a></li>
            </ul>
          </div>
        </div>
        <?php } ?>


       <?php /*?> <?php if(isset($_SESSION['logindtl']) && ($_SESSION['logindtl']['dept']=='inquiry' || $_SESSION['logindtl']['dept']=='accountant' || $_SESSION['logindtl']['dept']=='masteradmin')){ ?>
        <div class="panel panel-default">
          <div class="panel-heading">
            <h4 class="panel-title"> <a href=""><span class="glyphicon glyphicon-user"></span> Backup</a></h4>
          </div>
        </div>
        <?php } ?><?php */?>


        <?php if(isset($_SESSION['logindtl']) && ($_SESSION['logindtl']['dept']=='inquiry' || $_SESSION['logindtl']['dept']=='accountant' || $_SESSION['logindtl']['dept']=='masteradmin')){ ?>
        <div class="panel panel-default">
          <div class="panel-heading">
            <h4 class="panel-title"> <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwe"><span class="glyphicon glyphicon-user"></span>Office Detail(For Refer)<span class="caret"></span></a></h4>
          </div>
          <div id="collapseTwe" class="panel-collapse collapse <?php if(isset($_GET['mod']) && $_GET['mod']=='office_staff'){echo "in";} ?>">
            <ul class="list-group">
              <li><a href="<?php echo ROOT;?>index/office_staff/syn_s_office" class="navlink">See All Detail</a></li>
              <li><a href="<?php echo ROOT;?>index/office_staff/syn_a_office" class="navlink">Add New Staff</a></li>
      
            </ul>
          </div>
        </div>
        <?php } ?>


        <?php if(isset($_SESSION['logindtl']) && ($_SESSION['logindtl']['dept']=='inquiry' || $_SESSION['logindtl']['dept']=='accountant' || $_SESSION['logindtl']['dept']=='masteradmin')){ ?>
        <div class="panel panel-default">
          <div class="panel-heading">
            <h4 class="panel-title"> <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwee"><span class="glyphicon glyphicon-user"></span>PG Detail<span class="caret"></span></a></h4>
          </div>
          <div id="collapseTwee" class="panel-collapse collapse <?php if(isset($_GET['mod']) && $_GET['mod']=='provided_pg'){echo "in";} ?>">
            <ul class="list-group">
              <li><a href="<?php echo ROOT;?>index/provided_pg/syn_s_pg" class="navlink">See All PG Detail</a></li>
              <li><a href="<?php echo ROOT;?>index/provided_pg/syn_a_pg" class="navlink">Add New PG</a></li>
      
            </ul>
          </div>
        </div>
        <?php } ?>

        <?php if($_SESSION['logindtl']['dept']=='masteradmin'){ ?>
        <div class="panel panel-default">
          <div class="panel-heading">
            <h4 class="panel-title"> <a data-toggle="collapse" data-parent="#accordion" href="#collapseTweee"><span class="glyphicon glyphicon-user"></span>Users<span class="caret"></span></a></h4>
          </div>
          <div id="collapseTweee" class="panel-collapse collapse <?php if(isset($_GET['mod']) && $_GET['mod']=='users'){echo "in";} ?>">
            <ul class="list-group">
              <li><a href="<?php echo ROOT;?>index/users/syn_s_users" class="navlink">See All Users</a></li>
              <li><a href="<?php echo ROOT;?>index/users/syn_a_users" class="navlink">Add New Users</a></li>
      
            </ul>
          </div>
        </div>
        <?php } ?>
  
        <div class="panel panel-default">
          <div class="panel-heading">
            <h4 class="panel-title"> <a href="<?php echo ROOT;?>index/change_year/syn_chng_yr"><span class="glyphicon glyphicon-user"></span> Change Year</a></h4>
          </div>
        </div>
        <?php if($_SESSION['logindtl']['dept']=='masteradmin'){ ?>

          <div class="panel panel-default">
            <div class="panel-heading">
              <h4 class="panel-title"> <a href="<?php echo ROOT;?>try.php"><span class="glyphicon glyphicon-user"></span> New Year</a></h4>
            </div>
          </div>
        <?php }
        ?>
       <div class="panel panel-default">
          <div class="panel-heading">
            <h4 class="panel-title"> <a href="<?php echo ROOT; ?>index/login/change_password"><span class="glyphicon glyphicon-user"></span>Change Password</a></h4>
          </div>
        </div>

       <div class="panel panel-default">
          <div class="panel-heading">
            <h4 class="panel-title"> <a href="<?php echo ROOT; ?>index/login/syn_out"><span class="glyphicon glyphicon-user"></span> LOGOUT</a></h4>
          </div>
        </div>
        <!-- This is in case you want to add additional links that will only show once the Nav button is engaged; delete if you don't need -->
        <div class="menu-hide">
          <div class="panel panel-default">
            <div class="panel-heading">
              <h4 class="panel-title"><a href=""><span class="glyphicon glyphicon-new-window"></span>External Link</a> </h4>
            </div>
          </div>
          <div class="panel panel-default">
            <div class="panel-heading">
              <h4 class="panel-title"><a href=""><span class="glyphicon glyphicon-new-window"></span>External Link</a> </h4>
            </div>
          </div>
        </div>
        <!-- end hidden Menu items --> 
      </div>
    </div>
  </div>
</div>
<?php } ?>