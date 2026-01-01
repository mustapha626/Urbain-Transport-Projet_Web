<!DOCTYPE html>
<?php
    include "BarNav.php";
    include "fonction.php";
    if (isset($_SESSION['identifiant']))
    {
        $cntmsg = '';
        $crdmsg = '';
        $id = $_SESSION['identifiant'];
        $estadmin = $_SESSION['admin'];
        if (isset($_POST['envoyer']))
        {
            $connexion = connexion();
            $objet =  mysqli_real_escape_string($connexion,$_POST['objet']);
            $contenu =  mysqli_real_escape_string($connexion,$_POST['contenu']);
            date_default_timezone_set('Europe/Paris');
            $date = date('Y-m-d');
            $heure = date('H:i');
            $requete = "insert into contacts (identifiant, objet, contenu, date, heure)
                values('$id', '$objet', '$contenu', '$date', '$heure');";
            $t = requete($connexion, $requete);
            if ($t == NULL)
                $cntmsg = "<p class='mesErr'>Un problème est survenu lors de l'envoie<br>Veuillez recommencer</p>";
            else 
                $cntmsg = "<p class='mesSucc'>Message envoyé avec succès<br>Notre équipe vous répondra très bientôt</p>";
            deconnexion($connexion);
        }
        $connexion = connexion();
        if(isset($_POST['save']))
        {
            $nom = $_POST['nom'];
            $prenom = $_POST['prenom'];
            $age = $_POST['age'];
            $tel = $_POST['tel'];

            $img = $_FILES['img']['name'];
            $imgsrv = $_FILES['img']['tmp_name'];
            $extension = strtolower(pathinfo($img, PATHINFO_EXTENSION));
            $extautor = array("jpg", "jpeg", "png", "gif");

            $requete = "select * from utilisateurs where identifiant='$id'";
            $data = requete($connexion, $requete);
            if (empty($img))
            {
                $requete = "update utilisateurs set  
                    nom='$nom', 
                    prenom='$prenom', 
                    age='$age', 
                    numtel='$tel' 
                    where identifiant='$id'";
                    $t = requete($connexion, $requete);
                    if ($t == NULL)
                        $crdmsg = "<p class='mesErr'>Un problème est survenu<br>Veuillez recommencer</p>";
                    else 
                        $crdmsg = "<p class='mesSucc'>Vos cordonnées ont été changées avec succès</p>";
            }
            else
            { 
                if (in_array($extension, $extautor)) 
                {
                    move_uploaded_file($imgsrv,"Images/Utilisateurs/$img");
                    $requete = "update utilisateurs set   
                        nom='$nom', 
                        prenom='$prenom', 
                        age='$age', 
                        numtel='$tel',
                        profilimg='Images/Utilisateurs/$img' 
                        where identifiant='$id'";
                    $t = requete($connexion, $requete);
                    if (!$t)
                        $crdmsg = "<p class='mesErr'>Un problème est survenu<br>Veuillez recommencer</p>";
                    else 
                        $crdmsg = "<p class='mesSucc'>Vos cordonnées ont été changées avec succès</p>";
                }
                else
                    $crdmsg = "<p class='mesErr'>Seules les images sont autorisées à télécharger<br>(jpg, jpeg, png, gif)</p>"; 
            }
        }
        deconnexion($connexion);    
    }
    else 
    {
        echo '<link rel="icon" href="Images/icon.png" type="image/png">
            <link rel="stylesheet" href="style.css" type="text/css">
            <title>Profil - Réseau QuickMove</title>';
        echo "<h1 class='prflh1'>Veuillez vous connecter s'il vous plait pour accéder à cette section !!</h1>";
        exit;
    }
?>
<html lang="fr">
    <head>
        <meta charset="UTF-8">
        <link rel="icon" href="Images/icon.png" type="image/png">
        <link rel="stylesheet" href="style.css" type="text/css">
        <title>Profil - Réseau QuickMove</title>
    </head>
    <body>
        <?php
            
            $connexion = connexion();
            $requete = "select * from utilisateurs where identifiant='$id'";
            $data = requete($connexion, $requete);
            while ($row = mysqli_fetch_assoc($data))
            {
                $nom = $row['nom'];
                $prenom = $row['prenom'];
                $age = $row['age'];
                $tel = '0'.$row['numtel'];
                $img = $row['profilimg'];
            }
            echo "<header id='profhead'><div id='profil'><div id='profilint'><h1>Bonjour $prenom </h1></div></div></header>\n";
            echo "<div class='prfh1'><h1>PROFIL</h1></div>"; 
        ?>
        <div class="ttprofil">
            <?php
                if ((!isset($_POST['modifier']))||(isset($_POST['save'])))
                    echo "<div class='crdsprofil'>$crdmsg<div class='imgprofil'><img src='$img'></div>";
                if(!isset($_POST['modifier']))
                {
                    echo '<div class="crdprofil">';
                    if ($estadmin)
                        echo "<strong>Rôle : </strong>Admin<br>"; 
                    echo "<strong>Nom : </strong>$nom<br>";
                    echo "<strong>Prénom : </strong>$prenom<br>";
                    echo "<strong>Identifiant : </strong>$id<br>";
                    echo "<strong>Age : </strong>$age ans<br>";
                    echo "<strong>Numéro de téléphone : </strong>$tel<br>";
                    echo '<form method="post"><input type="submit" name="modifier" value="Modifier" class="prflbtn"></form>';
                    echo '</div></div>';
                }
                else 
                {
                    echo '<div class="modifier">';
                    echo "<h1>Modifier vos cordonnées</h1>";
                    echo $crdmsg;
                    echo "
                        <form method='post' enctype='multipart/form-data'>
                            <label for='nom'>Nom :</label><br>
                            <input type='text' name='nom' value='$nom' id='nom'><br>
                            <label for='prenom'>Prénom :</label><br>
                            <input type='text' name='prenom' value='$prenom' id='prenom'><br>
                            <label for='tel'>Numéro de téléphone :</label><br>
                            <input type='number' name='tel' value='$tel' id='tel'><br>
                            <label for='nom'>Age :</label><br>
                            <input type='number' name='age' value='$age' id='age'><br>
                            <label for='file'>Changer la photo de profil :</label><br>
                            <input type='file' name='img' id='file'><br>
                            <div><input type='submit' name='save' value='Sauvegarder'></div>        
                        </form></div>";
                }
            ?>
            
                <?php
                    if (!$estadmin)
                    {
                        echo '<div class="cntprofil"><h1>Nous contacter</h1>';
                        echo $cntmsg;
                        echo 
                            '<form method="post">
                                <label for="objet"><strong>Objet :</strong> </label><br>
                                <input type="text" name="objet" id="objet" required><br>
                                <label for="contenu"><strong>Message :</strong></label><br>
                                <textarea name="contenu" id="contenu"
                                    cols="80"
                                    rows="8" 
                                    maxlength="400" 
                                    placeholder="Entrez votre message ici ...(max : 400 caractères)" required></textarea>
                                <div><input type="submit" name="envoyer" value="Envoyer"></div> 
                            </form></div>';
                    }
                    else 
                    {
                        echo '<div class="messages"><h1>Les messages réçus</h1>';
                        $connexion = connexion();
                        $requete = "select COUNT(c.identifiant) as nummsg, u.identifiant, nom, prenom, profilimg, date, heure from utilisateurs u, contacts c 
                        where u.identifiant=c.identifiant and reponse='Aucune réponse pour le moment'  group by identifiant
                        order by date desc, heure desc ;";
                        $data = requete($connexion, $requete);
                        if (!mysqli_num_rows($data))   
                            echo '<h3>Aucun nouveau message</h3>';
                        else 
                        {
                            while ($row = mysqli_fetch_assoc($data))
                            {
                                echo '<div class="msgetbtn"><div class="message">';
                                echo "<img src='$row[profilimg]'>";
                                echo "<strong>$row[nom] $row[prenom] <br>";
                                if ($row['nummsg']==1)
                                    echo "Un nouveau message</strong>";
                                else 
                                    echo "$row[nummsg] nouveaux messages</strong>";
                                echo '</div>';
                                echo "<div class='rpndr'>
                                    <form action='Reponse.php' method='post'>
                                    <input type='hidden' name='idclient' value='$row[identifiant]'>
                                    <input type='submit' name='repondre' value='Répondre'></form></div></div>";
                            }
                        }
                        echo "</div>";
                    }
                ?>
        </div>
        <?php include "BasPage.php"; ?>
    </body>
    
</html>