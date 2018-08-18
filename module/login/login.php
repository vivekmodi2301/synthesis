<!--A Design by Raj Verma 
Author: Raj Verma
Author URL: http://facebook.com/rajverma827
License: Version 1.0.9
License URL: 
-->
<!doctype html>
<?php
      // print_r($_COOKIE);exit;

if(isset($_POST['roll'])){

  $pwd=md5(trim($_POST['pwd']));
  //echo $pwd;
  $uname=trim($_POST['roll']);
  if($pwd)
  {
    
    $qry="select id,password,uname,dept from login where password='$pwd' and uname='$uname'";
    // echo $qry; exit;
    if(loginFetchRow($qry))
    {
      if(isset($_POST['save'])){
        // echo "hi";exit;
        $cookie_name = "syn_uname";
        $cookie_value = "$_POST[roll]";
        setcookie($cookie_name, $cookie_value, time() + (86400 * 365), "/");

        $cookie_name = "syn_pswd";
        $cookie_value = "$_POST[pwd]";
        setcookie($cookie_name, $cookie_value, time() + (86400 * 365), "/");
      }
      // print_r($_COOKIE);//exit;
     // print_r($_POST);exit;
      $_SESSION['logindtl']=loginFetchOne($qry);
      $year=date('y');
      $month=date('m');
      if($month<=4){
        $last_year=$year-1;
        $curr_year=$last_year."-".$year;
      }else{
        $next_year=$year+1;
        $curr_year=$year."-".$next_year;
      }

      $db_name=loginFetchOne("select db from dbdata where year='$curr_year'");
      // print_r($db_name);
      $_SESSION['select_db']=$db_name['db'];
      switch ($_SESSION['logindtl']['dept']) {
        case 'masteradmin':
          ?>
          <script type="text/javascript">
            location.href=root_path+"index/stu_profile/syn_see_stu_profile";
          </script>    
          <?php
          break;
        
        case 'accountant':
          ?>
          <script type="text/javascript">
            location.href=root_path+"index/fee_dtl/syn_s_fee";
          </script>    
          <?php
          break;
        case 'inquiry':
          ?>
          <script type="text/javascript">
            location.href=root_path+"index/class/syn_s_class";
          </script>    
          <?php
          break;

        case 'recption':
          ?>
          <script type="text/javascript">
            location.href=root_path+"index/reception/recep_list";
          </script>    
          <?php
          break;
        case 'icard':
          ?>
          <script type="text/javascript">
            location.href=root_path+"index/i_crd/syn_i_per";
          </script>    
          <?php
          break;
        default:
          ?>
            <script type="text/javascript">
            location.href=root_path+"index/class/syn_s_class";
          </script>
          <?php
          break;
      }
      ?>
      <?php
      }else{
            $error="Please enter correct both year and password.";
            
      
      }
  }else{
      $error="Please enter both year and password.";
    
  }
  
}
?>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Admin Panel</title>
<!-- fonts starts -->
<link href="//fonts.googleapis.com/css?family=Poiret+One" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Raleway:100,200,300,400,500,600,700,800,900" rel="stylesheet">
<!-- /fonts ends -->

<!-- css starts -->
<link rel="stylesheet" href="css/bootstrap.min.css"/>
<link rel="stylesheet" href="css/bootstrap-glyphicons.css"/>
<link rel="stylesheet" href="css/bootstrap-theme.min.css"/>
<link rel="stylesheet" href="css/style2_loginPage.css"/>
<!-- css ends -->

<!-- js starts -->
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.js"></script>
<!-- js ends -->
</head>
<body>

<div class="container">
  <div class="row">
  
		<div class="col-lg-2">&nbsp;</div>
		<div class="col-lg-4" style="background:#fff;">
  		<h1 class="" style="color:#000; font-family:'Comic Sans MS', cursive;">Synthesis DataBase Admin Panel</h1>
	    	<div style="height:40px;">&nbsp;</div>
        	<div align="center">
        	<a href="" class="logo-hover"><img src="<?php echo ROOT; ?>include/images/logo_building.jpg" class="img-rounded img-radius" height="140" width="140" /></a>
         </div>   
        <form role="form" class="form-vertical form-text" name="searchfrm"  method="post">
        <div class="form-group">
          <label for="name">Username</label>
          <input type="text" value="<?php if(isset($_COOKIE['syn_uname'])){echo $_COOKIE['syn_uname'];} ?>" class="form-control form-input-type-username" id="roll" name="roll" required placeholder="Username" />
        </div>

        <div class="form-group">
          <label for="mob">Password</label>
          <input type="password" value="<?php if(isset($_COOKIE['syn_uname'])){echo $_COOKIE['syn_uname'];} ?>" class="form-control form-input-type-username form-input-type-password" placeholder="Password"  id="f_mobile" name="pwd"/>
        </div>
        <div class="form-group" align="center">
        	<input type="checkbox" name="save" id="remember" value="yes" class="checks" style="margin-left:100px;">
				<label for="remember" style="margin-left:-80px;">Keep Me Logged In?</label>
        </div>
        <div class="form-group" align="center">
        <input type="submit" value="LOG IN" class="btn btn-danger btn-block">
        </div>
      </form>
        </div>
        <!--<div class="col-lg-4">&nbsp;</div>-->
  </div>
</div>
</body>
</html>