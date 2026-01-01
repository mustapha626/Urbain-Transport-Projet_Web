<?php
    include "fonction.php";
    $connexion = connexion();
    $msg = "";
    if(isset($_POST['inscrire']))
    {
        $id = $_POST['identifiant'];
        $mdp = $_POST['motdepasse'];
        $mdpc = $_POST['motdepassecnf'];
        $nom = $_POST['nom'];
        $prenom = $_POST['prenom'];
        $age = $_POST['age'];
        $tel = $_POST['telephone'];

        $img = $_FILES['profilimg']['name'];
        $imgsrv = $_FILES['profilimg']['tmp_name'];
        $extension = strtolower(pathinfo($img, PATHINFO_EXTENSION));
        $extautor = array("jpg", "jpeg", "png", "gif");

        $requete = "select * from utilisateurs where identifiant='$id'";
        $data = requete($connexion, $requete);
        if($row = mysqli_fetch_assoc($data))
	        $msg="<p class='mesErr'>L'identifiant '$id' est déja utilisé<br>Veuillez choisir un autre</p>";
        else 
        {
            if($mdp != $mdpc)
                $msg = "<p class='mesErr'>Le mot de passe et sa confirmation ne correspondent pas</p>";
            else
            {
                if (empty($img))
                {
                    $requete = "insert into utilisateurs (identifiant, nom, prenom, mdp, age, numtel) 
                        values ('$id','$nom','$prenom','$mdp','$age','$tel')";
                    $t = requete($connexion, $requete);
                    if ($t == NULL)
                        $msg = "<p class='mesErr'>Un problème est survenu<br>Veuillez recommencer</p>";
                    else 
                        $msg = "<p class='mesSucc'>Compte créé avec succès<br>Vous pouvez vous connecter</p>";
                }
                else
                { 
                    if (in_array($extension, $extautor)) 
                    {
                        move_uploaded_file($imgsrv,"Images/Utilisateurs/$img");
                        $requete = "insert into utilisateurs (identifiant, nom, prenom, mdp, age, numtel,profilimg) 
                            values ('$id','$nom','$prenom','$mdp','$age','$tel','Images/Utilisateurs/$img')";
                        $t = requete($connexion, $requete);
                        if (!$t)
                            $msg = "<p class='mesErr'>Un problème est survenu<br>Veuillez recommencer</p>";
                        else 
                            $msg = "<p class='mesSucc'>Compte créé avec succès<br>Vous pouvez vous connecter</p>";
                    }
                    else
                        $msg = "<p class='mesErr'>Seules les images sont autorisées à télécharger<br>(jpg, jpeg, png, gif)</p>"; 
                }
            }   
        }
        deconnexion($connexion);  
	}
?>

<html lang="fr">
<head>
    <meta charset="UTF-8">
    <link rel="icon" href="Images/icon.png" type="image/png">
    <link rel="stylesheet" href="style.css" type="text/css">
    <title>Inscription - Réseau QuickMove</title>
</head>
<body id="inscr">
    <div class="retour">
        <a href="Index.php">
            <div id="iconR"></div>
            <h3>Retour vers accueil</h3>
        </a>
    </div>
    <div class="insc">
        <h1>QuickMove Inscription</h1>
        <?php
            echo $msg;
        ?>
        <form action="Inscription.php" method="post" enctype="multipart/form-data">
            <div class="inscform">
                <div class="inscform1">
                    <label for="nom">Nom :</label>  
                    <input type="text"
                        name="nom"
                        id="nom"
                        placeholder="Entrez votre nom ... " required><br>
                    <label for="prenom">Prénom :</label>
                    <input type="text"
                        name="prenom"
                        id="prenom"
                        placeholder="Entrez votre prénom ... " required><br>
                    <label for="age">Age :</label>
                    <input type="number"
                        name="age"
                        id="age"
                        placeholder="Entrez votre age ... " required><br>
                    <label for="telephone">Numéro de téléphone :</label>
                    <input type="number"
                        name="telephone"
                        id="telephone"
                        placeholder="Entrez votre numéro de téléphone ... " required><br>
                </div>
                <div class="inscform2">
                    <label for="id">Identifiant :</label>
                    <input type="text"
                        name="identifiant"
                        id="id"
                        placeholder="Veuillez choisir votre identifiant ... " required><br>
                    <label for="mdp">Mot de passe :</label>
                    <input type="password"
                        name="motdepasse"
                        id="mdp"
                        placeholder="Veuillez choisir un mot de passe ..." required><br>
                    <label for="mdpc">Confirmer le mot de passe :</label>
                    <input type="password"
                        name="motdepassecnf"
                        id="mdpc"
                        placeholder="Veuillez confirmer votre mot de passe ..." required><br>
                    <label for="file">Choisir une photo de profil :</label>
                    <input type="file"
                        id="file"
                        name="profilimg"><br>
                </div>
            </div>
            <div class="btn">
                <input type="submit" name="inscrire" value="Je m'inscris" id="conxB">
            </div>
        </form>
        <p>Vous avez déja un compte ? <a href="Connexion.php">Se connecter</a><p>
    </div>

    
</body>
</html>