
<?php

//Connexion à la BDD et sélection de la base
$host = "localhost";
$user = "root";
$mdp = "";
$bdd = "application";
$connect = mysql_connect($host,$user,$mdp) or die("Erreur de connexion au serveur");
$select = mysql_select_db($bdd) or die("Erreur de connexion a la base de donnees");
 
// Sélection des ville
$req = 'SELECT * FROM ville'; 
$query = mysql_query($req,$connect)or die(mysql_error());

?>

<link href="css/style1.css" rel="stylesheet" type="text/css" />
<div id="fb-root"></div>

<script>(function(d, s, id) {

// programmation button j'aime facebook
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/fr_FR/all.js#xfbml=1&appId=458294684260740";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>

<script language="Javascript">
//Fonction nécessaire : ne rien modifier ici...
function getXhr()
{
    var xhr = null; 
  		
	if(window.XMLHttpRequest) // Firefox et autres
		xhr = new XMLHttpRequest(); 
	else if(window.ActiveXObject)
	{ // Internet Explorer 
		try 
		{
			xhr = new ActiveXObject("Msxml2.XMLHTTP");
		} catch (e) {
			xhr = new ActiveXObject("Microsoft.XMLHTTP");
		}
	}
	else 
	{ // XMLHttpRequest non supporté par le navigateur 
		alert("Votre navigateur ne supporte pas les objets XMLHTTPRequest..."); 
		xhr = false; 
	} 
            
	return xhr;
}

//Fonction de liste dynamique
function go()
{
	var xhr = getXhr();
			
	// On défini ce qu'on va faire quand on aura la réponse
	xhr.onreadystatechange = function()
	{
		// On ne fait quelque chose que si on a tout reçu et que le serveur est ok
		if(xhr.readyState == 4 && xhr.status == 200){
			leselect = xhr.responseText;
			// On se sert de innerHTML pour rajouter les options a la liste des categorie
			document.getElementById('categorie').innerHTML = leselect;
		}
	}

	// On poste la requête ajax vers le fichier de traitement
	xhr.open("POST","traitement_ajax.php",true);
	
	// ne pas oublier ça pour le post
	xhr.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
			
	// ne pas oublier de poster les arguments
		//On sélectionne la ville
		sel = document.getElementById('ville');
		//On sélectionne la value de la ville (cad : id_ville)
		ville = sel.options[sel.selectedIndex].value;
		//On met la sélection dans la variable que l'on va poster
		xhr.send("id_ville="+ville);
}
</script>

<html>
<link href="css/style2.css" rel="stylesheet" type="text/css">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>application_facebook</title>
</head>
<body>
<div id="body">
<div id="recherche">
		<form action="recherche.php" method="post">
        
 <!-- div de la place button j'aime de l'application facebook -->       
     <div style=" left:650px; " class="fb-like" data-href="http://apps.facebook.com/webinnov_showroom" data-send="false" data-width="450" data-show-faces="true"></div>
        
        <div id="anim-flash">
      <div align="center"><img src="images/logo.png" alt="logo" width="340" height="72" /></div>
    </div>
  <p align="center">&nbsp;</p>

<div align="center"> 
<fieldset style="border: 3px double #FFFFFF; width: 320px; HEIGHT: 200px;  ">

<legend>Sélectionnez une Ville</legend>


              
      </p><p align="center">
      <p align="center"><BR>
		
			<table align="center" width="200" border="0" cellpadding="2" cellspacing="2">
			
				<tr>
				
					<td  width="200"; id="table" >ville </td>
					
					<td width="100">
					<select name="ville" id="ville" onChange="go()">
						<option value="">-----selectionnez une ville -----</option>
							<!-- On affiche la liste des villes -->
							<?php
							while($row = mysql_fetch_array($query)){
							echo '<option value="'.$row['id_ville'].'">'.$row['nom_ville'].'</option>';
							}
							?>
							<!-- FIN -->
					</select>
					</td>
				</tr>
				<tr>
					<td width="200" id="table" >categorie </td>
					
					<td width="100">
					<select name="categorie" id="categorie">
						<option value=""></option>
						<!--Affichage AJAX des categorie en fonction de la ville sélectionnée-->
					</select>
					</td>
              
				</tr>
				</table>
				<div>
                    <input type="submit" class="submit" value="Rechercher" style="background-color:#ee2251; border:#000000;" />
				 <input type="submit" onClick="sendRequestViaMultiFriendSelector(); return false;"
      value="Invitez vos amis" style="background-color:#ee2251;border:#000000;" />
			
			</div>
		     </fieldset></div>
		</form>
        
        </body>
        

</html>
