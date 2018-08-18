<!DOCTYPE html>
<html lang="en"><head>
  <title>Institute MGMT Software</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <?php
  $cssfiles=glob("include/css/*.css");
  foreach ($cssfiles as $cssfile) 
  {
    if($cssfile=="include/css/style2_loginPage.css"){
      continue;
    }
  ?>
    <link rel="stylesheet" href="<?php echo ROOT.$cssfile;?>">
  <?php
  }
  ?>


  <?php
  $jsfiles=glob("include/js/*.js");
  foreach ($jsfiles as $jsfile) 
  {
  ?>
   <script src="<?php echo ROOT.$jsfile; ?>"></script>
  <?php
  }
  ?>  
  
  <!--for left side responsive menu start-->
  
  
  <!--for left side responsive menu end-->
  
	<link href="https://fonts.googleapis.com/css?family=Allerta+Stencil|Berkshire+Swash|Cute+Font|Faster+One|Orbitron|Righteous|Space+Mono|Vast+Shadow" rel="stylesheet">
	
	<style>
	    .font_1{font-family: 'Righteous', cursive;}
        .font_2{font-family: 'Berkshire Swash', cursive;}
        .font_3{font-family: 'Orbitron', sans-serif;}
        .font_4{font-family: 'Cute Font', cursive;}
        .font_5{font-family: 'Allerta Stencil', sans-serif;}
        .font_6{font-family: 'Space Mono', monospace; font-size:15px;}
        .font_7{font-family: 'Faster One', cursive; font-size:30px;}
        .font_8{font-family: 'Vast Shadow', cursive;}    
	</style>

</head>
<body>
  
<div class="container-fluid">
  <div class="row">
  	<div class="row" style="background:#F60; height:4px;">&nbsp;</div>	
    <div class="col-lg-12" style="margin-top:6px; height:100px;">
        <nav class="navbar navbar-default" style="background:none; border:none; box-shadow:none; font-family:'Century Gothic';">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a href="#"><img src="<?php echo ROOT;?>include/images/logo_synthesis.png" width="298" height="100"/></a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
      <li class="font_7"><a href="#">Synthesis Database Software</a></li>
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#"><img src="<?php echo ROOT;?>include/images/settings_icon.png" height="30" width="30" /> <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="index.php?mod=setting&do=edit_profile">Edit Profile</a><span><hr /></span></li>
            <li><a href="index.php?mod=setting&do=chang_paswd">Change Password</a><span><hr /></span></li>
            <li><a href="index.php?mod=setting&do=gen_seting">General Seetings</a><span><hr /></span></li>
            <li><a href="index.php?mod=login&do=logout">Logout</a></li>
          </ul>
        </li>
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#"><img src="<?php echo ROOT;?>include/images/profile_icon.png" height="30" width="30" /> <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="index.php?mod=user&do=see_users">See All Users</a><span><hr /></span></li>
            <li><a href="index.php?mod=user&do=add_user">Add New User <img src="images/plus.gif" /></a><span><hr /></span></li>
            <li><a href="index.php?mod=user&do=chng_user_permisn">Change Permission</a></li>
          </ul>
        </li>
        		<div><ul style="line-height:-100px; list-style:none;"><li class="font_8">Exclusive In All Streams</li></ul></div>
      </ul>
    </div>
  </div>
</nav>

      <!--<img src="images/banner.jpg" class="img-responsive" alt="Responsiveimage" height="300" width="100%" />-->
</div>
      <div class="col-lg-12 text-center">
        <h6>&nbsp;</h6>
        <div class="col-md-12">
        <table class="table table-bordered">
            	<tr class="content_page_heading" align="justify">
                    <td>Welcome Dear <?php echo ucwords($_SESSION['logindtl']['uname']) ?></td>
                </tr>
         </table>
         
         
         <!-- content area cutting start here -->
         
         <!-- left menu start here -->
         <div class="col-lg-3">
         <?php include_once('left_menu.php'); ?>
         </div>
    <!-- left menu end here -->
         <div class="col-lg-9" style="margin-left:-50px;">
<!-- content area cutting end here -->



