
 
 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>boutique choisi</title>

<link href="css/style2.css" rel="stylesheet" type="text/css" />


</head>

<body>

 

  <?php
   
$connexion=mysql_connect('localhost','root',"") or die ("connexion impossible.");
$db=mysql_select_db('application',$connexion) or die ("base de données non accessible");
?>
<div id="body">
<div id="recherche" >
<div align="center">
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p><img src="images/logo.png" alt="logo" width="340" height="72" /></p>
      </div>




<?php


$idi=$_GET['id'] ;
 
 $separateur = '&nbsp;';
 $nbSep = 20;
 $nbo =16;
 $cnx=mysql_connect('localhost','root','');
  			mysql_set_charset("UTF-8");
$db=mysql_select_db("application");

$sql="SELECT * FROM boutique where id_boutique ='$idi'  ";


$requete=mysql_query($sql,$cnx) or die("Erreur MYSQL numéro : ".mysql_error()."<br>Type de cette erreur: ".mysql_error()."<br>\n");

while($result=mysql_fetch_array($requete) ){


echo'<div id="tabbed_box_1" class="tabbed_box"> ';  
    echo'<div class="tabbed_area">';   
      
         echo'<ul class="tabs"> '; 

  echo' <li><a href="recherche2.php?id='. $result ['id_boutique'].'" class="active">Description</a></li>';
   echo' <li><a href="visitev.php?idv='. $result ['id_boutique'].'">Visite Virtuelle</a></li>';
   echo' <li><a href="google-maps.php?idg='. $result ['id_boutique'].' ">Google Maps</a></li>';
   echo'</ul>';
   echo' <div id="content_1" class="content">  ';
  echo'<div style="margin-left:5% ;"  > <a href=""   style="color:#ee2251; text-decoration:none;"  ><h3 ></br>'.$result ['nom_boutique'].'</h3></a><br></div >'; 
  
  
    echo' <iframe src="https://www.facebook.com/plugins/like.php?href=https://apps.facebook.com/webinnov/"
        scrolling="no" frameborder="0"
        style="border:none; width:450px; height:80px"></iframe>';
  

 echo'<div style="margin-left:30%;" ><img  src="'.$result["image"].'.jpg" width="300"  height="200" border: 3px ;></div><br>';

  echo'<div style="margin-left:31%; margin-right:21%; color:#000000;"  >'.$result ['txt'].'</div><br>';
  

   echo '<div style="margin-left:41% ; font-size:24px ; volume:2px; color:#000000; font-weight:bold; "> Veuillez contacter </div > <br><br>';

  echo' <div style="margin-left:31%; margin-right:21%; color:#000000; "  > Nom  :' . str_repeat($separateur, $nbSep) .' '.$result ['nom2'].' <br></div>';
 
   
   echo'<div style="margin-left:31%; margin-right:21%;color:#000000; "  > Adresse :  ' . str_repeat($separateur, $nbo) .''.$result ['adresse_boutique'].' </div>';
     echo'<div style="margin-left:31%; margin-right:21%;color:#000000;  "  > Tel : ' . str_repeat($separateur, $nbSep) .''.$result ['tel_boutique'].' </div><br>';
  
 
   echo'<a href="index.php"><div style="margin-left:90% ;"> <img src="images/flech1.png" width="50" height="50"  "  /></div></a><br />';
 
   echo'</div>';
   echo' </div >'; 
 
 
   echo' </div >'; 
  
 
   echo' </div >'; 
 
}

             
 ?> 


<div style="margin-left:57%;"> <p>  Copyright © 2013-2014 www.tunisie-showroom.com  </p></div>

<div></div>
</div>
</body>
</html>
