<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- TemplateBeginEditable name="doctitle" -->
<title>Sélectionner un boutique</title>
<!-- TemplateEndEditable -->
<!-- TemplateBeginEditable name="head" -->
<!-- TemplateEndEditable -->
<link href="css/style1.css" rel="stylesheet" type="text/css" />
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


<div id="div"> 





<?php

$nom_C=$_POST['categorie'];
$ville_c=$_POST['ville'];


 echo'<div style="margin-left:2% ; width:414; font-weight:bold; color:#000000;  margin: auto;" >' .  $nom_C . ' "  ' .  $ville_c . ' " </div>';
 
  			$cnx=mysql_connect('localhost','root','');
				mysql_set_charset("UTF-8");
$db=mysql_select_db("application");
$sql="SELECT * FROM boutique WHERE id_categorie = '$nom_C' and  id_ville= '$ville_c' ";

$requete=mysql_query($sql,$cnx) or die("Erreur MYSQL numéro : ".mysql_error()."<br>Type de cette erreur: ".mysql_error()."<br>\n");

          
          
            






while($result=mysql_fetch_array($requete)){



  echo'<div style="margin-left:5% ; color:#ee2251; "  > <h3 ></br>'.$result ['nom_boutique'].'</h3><br> 
    </div >'; 
 


 echo'<div style="margin-left:30%;" ><img name="img_envoi"  src="'.$result["image"].'.jpg" width="300"  height="200" border: 3px ;></div><br>';

  echo'<div style="margin-left:31%; margin-right:21%; color:#000000; "  >'.$result ['txt'].'</div><br>';
  


echo '<div style="margin-left:45%;" ><a href="recherche2.php?id='. $result ['id_boutique'].' "  style="color:#ee2251; text-decoration:none; font-size:  small; font-weight:bold;"  >Voir Plus ...</a></div><br> ';





  }

  
 ?><a href="index.php"><img src="images/flech1.png" width="50" height="50" id="flech"/></a><br />
</div>
<div style="margin-left:57%;"> <p>  Copyright © 2013-2014 www.tunisie-showroom.com  </p></div>

</div>




</body>
</html>

