<?php
  if(isset($do)){
    $page=$do;
  }else{
    $page="";
  }
  switch ($page) {
    case 'syn_add_spr':
      include_once("module/spr/add_spr.php");
      break;
    
    case 'syn_see_spr':
      include_once("module/spr/see_spr.php");    
      break;
    case 'syn_show_spr':
      include_once("module/spr/show_spr.php");
      break;
    default:
      echo "Page not found";
  }
?>
