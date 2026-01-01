<!DOCTYPE html>
<?php
    include "BarNav.php";
    include "fonction.php";
    $cntmsg = "";
    if (isset($_SESSION['identifiant']))
    {
       $id = $_SESSION['identifiant'];
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
                $cntmsg = "<p class='mesErr'>Un problème est survenu lors de l'envoie<br>Veillez recommencer et ne pas utiliser ni les apostrophes ni les guillemets</p>";
            else 
                $cntmsg = "<p class='mesSucc'>Message envoyé avec succès<br>Notre équipe vous répondra très bientôt</p>";
            deconnexion($connexion);
        }
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
        <title>Messagerie - Réseau QuickMove</title>
    </head>
    <body>
        <h1 class="itinh1">Votre messagerie</h1>
        <?php
            $connexion = connexion();
            $requete = "select * from utilisateurs where identifiant='$id'";
            echo $cntmsg;
            $data = requete($connexion, $requete);
            while ($row = mysqli_fetch_assoc($data))
            {
                $nom = $row['nom'];
                $prenom = $row['prenom'];
                $age = $row['age'];
                $tel = $row['numtel'];
                $img = $row['profilimg'];
            }
            echo '<div class="messagerie"><div class="mdestinataire">';
            echo "<img src='$img'>";
            echo "<div class='mdescor'><strong>$nom $prenom</strong><p><strong>Age : </strong>$age ans";
            echo "<strong> Téléphone : </strong>$tel</p></div></div>";
            $requete = "select objet, contenu, reponse, date, heure from contacts where identifiant='$id'";
            $data = requete($connexion, $requete);
            while ($row = mysqli_fetch_assoc($data))
            {
                echo '<div class="mdiscussion">';
                echo '<div class="mdate">';
                echo "<p>$row[date] à $row[heure]</p></div>";
                echo '<div class="mmsg">';
                echo '<div><strong>Objet : </strong>';
                echo "$row[objet]<br>";
                echo '<strong>Message : </strong>';
                echo "$row[contenu]</div></div>";
                echo '<div class="mreponse">';
                echo "<div>$row[reponse]</div></div>";
                echo "</div>";
            }
            echo '<div class="mrepondre"><form method="post">';
            echo '<div><h4>Objet :</h4>';
            echo "<input type='text' name='objet' placeholder=\"Entrez l'objet de votre message ici . . .\" required></div>";
            echo '<div><h4>Message :</h4>';
            echo "<input type='text' name='contenu' placeholder='Entrez votre message  ici . . .' required></div>";
            echo "<div class='send'><input type='submit' name='envoyer' value='Envoyer'></div></form></div>"; 
            echo '</div>';
            include "BasPage.php";
            ?>
    </body>
</html>