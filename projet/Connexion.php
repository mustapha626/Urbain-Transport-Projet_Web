<?php 
    session_start();
    include "fonction.php";
    $connexion = connexion();
    $errmsg = "";
    if(isset($_POST['identifiant']))
    {
	    $id = $_POST['identifiant'];
	    $mdp = $_POST['motdepasse'];	
		$requete = "select * from utilisateurs where identifiant='$id' and mdp='$mdp'";
		$data = requete($connexion, $requete);
		if($row = mysqli_fetch_assoc($data))
        {	  
			$_SESSION['identifiant'] = $row['identifiant'];
			$_SESSION['admin'] = $row['admin'];
			header("location:Index.php");
		}
		else
			$errmsg = '<p class="mesErr">Identifiant ou mot de passe incorrect !!</p>';
	}
?>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <link rel="icon" href="Images/icon.png" type="image/png">
    <link rel="stylesheet" href="style.css" type="text/css">
    <title>Connexion - Réseau QuickMove</title>
</head>
<body id="cnx">
    <div class="retour">
        <a href="Index.php">
            <div id="iconR"></div>
            <h3>Retour vers accueil</h3>
        </a>
    </div>
    <div class="conx">
        <h1>QuickMove Connect</h1>
        <?php
            echo $errmsg;
        ?>
        <form action="Connexion.php" method="post">
            <label id="lbl">
                Identifiant : <br>
                <input type="text"
                    name="identifiant"
                    placeholder="Entrez votre identifiant ... " required>
            </label> <br>
            <label>
                Mot de passe : <br>
                <input type="password"
                    name="motdepasse"
                    placeholder="Entrez votre mot de passe ... " required>
            </label> <br>
            
            <div class="btn">
                <input type="submit" value="Je me connecte" id="conxB">
            </div>
        </form>
        <p>Vous n'avez pas de compte ? <a href="Inscription.php">S'inscrire</a><p>
    </div>
</body>
</html>