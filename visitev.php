 
 
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
<div id="recherche">
<div align="center">
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p><img src="images/logo.png" alt="logo" width="340" height="72" /></p>
      </div>




<?php

$idu=$_GET['idv'] ;
 
 $separateur = '&nbsp;';
 $nbSep = 20;
 $nbo =16;
 $cnx=mysql_connect('localhost','root','');
  			mysql_set_charset("UTF-8");
$db=mysql_select_db("application");

$sql="SELECT * FROM boutique where id_boutique ='$idu'   ";


$requete=mysql_query($sql,$cnx) or die("Erreur MYSQL numéro : ".mysql_error()."<br>Type de cette erreur: ".mysql_error()."<br>\n");

while($result=mysql_fetch_array($requete) ){


echo'<div id="tabbed_box_1" class="tabbed_box"> ';  
    echo'<div class="tabbed_area">';   
      
         echo'<ul class="tabs"> '; 

  echo' <li><a href="recherche2.php?id='. $result ['id_boutique'].'" >Description</a></li>';
   echo' <li><a href="visitev.php?idv='. $result ['id_boutique'].'" class="active">Visite Virtuelle</a></li>';
   echo' <li><a href="google-maps.php?idg='. $result ['id_boutique'].' ">Google Maps</a></li>';
   echo'</ul>';
   echo' <div id="content_1" class="content">  ';
  echo'<div style="margin-left:5% ;"  > <a href=""   style="color:#ee2251; text-decoration:none;"  ><h3 ></br>'.$result ['nom_boutique'].'</h3></a><br></div >'; 
  
 echo '<div style="margin-left:32% ; font-size:24px ; volume:2px;color:#000000; font-weight:bold; "> Visite virtuelle de la boutique </div > <br>';

 
 
 
 echo'<div style="margin-left:10%;" > <iframe align="middle" height="480" scrolling="no" src="'.$result ['visite_virtuelle'].'" style="border: medium none;" width="600"></iframe></p></div>';
 
 
 
   echo'<a href="index.php"><div style="margin-left:90% ;"> <img src="images/flech1.png" width="50" height="50"  "  /></div></a><br />';
   echo'</div>';
   echo' </div >'; 
 
 
   echo' </div >'; 
  
 
   echo' </div >'; 
 


 

}


             
 ?> 

<div style="margin-left:57%;"> <p>  Copyright © 2013-2014 www.tunisie-showroom.com  </p></div>

</body>
</html>
