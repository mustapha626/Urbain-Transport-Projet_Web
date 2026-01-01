<!DOCTYPE html>
<?php
    include "BarNav.php";
    include "fonction.php";
    if (isset($_SESSION['identifiant']))
    {
        if (!$_SESSION['admin'])
        {
            echo '<link rel="icon" href="Images/icon.png" type="image/png">
                <link rel="stylesheet" href="style.css" type="text/css">
                <title>Profil - Réseau QuickMove</title>';
                echo "<h1 class='prflh1'>Désolés vous n'avez pas accès à cette page</h1>";
            exit;
        }
        else 
        {
            if (isset($_POST['idclient']))
                $id = $_POST['idclient'];
            else 
            {
                $co = connexion();
                $req = "select identifiant from contacts order by date desc, heure desc";
                $data = requete($co, $req);
                $row = mysqli_fetch_assoc($data);
                $id = $row['identifiant'];
                deconnexion($co);
            }
            $msg = "";
            if (isset($_POST['reponseb']))
            {
                $connexion = connexion();
                $heure = $_POST['heure'];
                $date = $_POST['date'];
                $reponse =  mysqli_real_escape_string($connexion,$_POST['reponse']);
                $requete = "update contacts set reponse='$reponse' where 
                    identifiant='$id' and heure='$heure' and date='$date'";
                $t = requete($connexion, $requete);
                $t = requete($connexion, $requete);
                if ($t == NULL)
                    $msg = "<p class='mesErr'>Un problème est survenu lors de l'envoie<br>Veillez recommencer et ne pas utiliser ni les apostrophes ni les guillemets</p>";
                else 
                    $msg = "<p class='mesSucc'>Message envoyé avec succès</p>";
                deconnexion($connexion);
            }
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
<!DOCTYPE html>
<html lang="fr">
    <head>
        <meta charset="UTF-8">
        <link rel="icon" href="Images/icon.png" type="image/png">
        <link rel="stylesheet" href="style.css" type="text/css">
        <title>Messagerie - Réseau QuickMove</title>
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
        echo '<div class="pagereponse">';
        echo '<div class="personnes">';
        echo '<form method="post">';
        echo '<datalist id="pers">';
        $requete = "select distinct c.identifiant,nom,prenom from contacts c, utilisateurs u where c.identifiant=u.identifiant";
        $data = requete($connexion, $requete);
        while($row = mysqli_fetch_assoc($data))
        {
            echo "<option value='$row[identifiant]'>$row[nom] $row[prenom]</option>\n";
        }
        echo '</datalist>';
        echo '<input type="text" name="per" list="pers" placeholder="Rechercher une personne . . ." required>';
        echo "<input type='hidden' name='idclient' value='$id'>";
        echo '<div><input type="submit" name="recherche" value="Rechercher"></div></form>';
        echo '<div class="gens">';
        if (isset($_POST['recherche']))
        {
            $iden = $_POST['per'];
            $requete = "select distinct c.identifiant,nom,prenom,profilimg from contacts c, utilisateurs u 
                where c.identifiant=u.identifiant and c.identifiant='$iden'";
        }
        else 
            $requete = "select distinct c.identifiant,nom,prenom,profilimg from contacts c, utilisateurs u 
                where c.identifiant=u.identifiant; ";
        $data = requete($connexion, $requete);
        if (!mysqli_num_rows($data))   
            echo '<h3>Aucun résultat trouvé</h3>';
        else
        {
            while ($row = mysqli_fetch_assoc($data))
            {
                echo '<div class="msgetvr">';
                echo "<img src='$row[profilimg]'>";
                echo "<strong>$row[nom] $row[prenom]</strong> <br>";
                echo "
                    <form method='post'>
                        <input type='hidden' name='idclient' value='$row[identifiant]'>
                        <input type='submit' name='voir' value='Voir'></form></div>";
            }
        }
        echo '</div></div>';
        echo '<div class="amessagerie">';
        echo '<div class="destinataire">';
        echo "<img src='$img'>";
        echo "<div class='mdescor'><strong>$nom $prenom</strong><p><strong>Age : </strong>$age ans";
        echo "<strong> Téléphone : </strong>$tel</p></div></div>";
        $requete = "select objet, contenu, reponse, date, heure from contacts where identifiant='$id'";
        $data = requete($connexion, $requete);
        echo $msg;
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
            if ($row['reponse']==='Aucune reponse pour le moment')
            {
                echo '<form method="post">';
                echo "<input type='hidden' name='idclient' value='$id'>";
                echo "<input type='hidden' name='date' value='$row[date]'>";
                echo "<input type='hidden' name='heure' value='$row[heure]'>";
                echo "<div><h4>Répondre :</h4><input type='text' name='reponse' placeholder='Entrez votre réponse  ici . . .'>";
                echo "<input type='submit' name='reponseb' value='Répondre'></div></form>"; 
            }
            echo "</div>";
        }
        echo '</div></div>';
        include "BasPage.php";
        
?>