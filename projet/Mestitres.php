<!DOCTYPE html>
<?php
    include "BarNav.php";
    include "fonction.php";
    $connexion = connexion();
    if (isset($_SESSION['identifiant']))
    {
        $msg = "";
        $id = $_SESSION['identifiant'];
        if (isset($_POST['confirmer']))
        {
            $msg = "";
            $numero = $_POST['numtitre'];
            date_default_timezone_set('Europe/Paris');
            $date = date('Y-m-d à H:i');
            $requete = "insert into titres (numero, identifiant, debutvalidite) values ('$numero', '$id', '$date')";
            $t = requete($connexion, $requete);
            if ($t == NULL)
                $msg = "<p class='mesErr'>Un problème est survenu lors de l'achat<br>Veuillez recommencer</p>";
            else 
                $msg = "<p class='mesSucc'>Achat effectué avec succès</p>";
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
        <title>Mes titres - Réseau QuickMove</title>
    </head>
    <body>
        <?php
            if (isset($_POST['acheter']))
            {
                $numtitre = $_POST['numtitre'];
                $requete = "select nom,prenom,profilimg,duree,tarif from utilisateurs, tarifs where identifiant='$id' and numero=$numtitre";
                $data = requete($connexion, $requete);
                while ($row = mysqli_fetch_assoc($data))
                {
                    $nom = $row['nom'];
                    $prenom = $row['prenom'];
                    $img = $row['profilimg'];
                    $duree = $row['duree'];
                    $prix = $row['tarif'];
                }
                echo "<h1 class='itinh1'>Veuillez confirmer votre achat à $prix euros s'il vous plait</h1>";
                echo '<div class="titrepage">';
                echo '<div class="utitre">';
                echo '<div class="titreimg">'."<img src='$img'>".'</div>';
                echo '<div class="titrecor">'."$nom $prenom</div>";
                echo '<div class="titretext">Carte à valider à chaque montée, y compris en correspondance</div>';
                echo '<div class="finvalidite">Valable jusqu\'à : '.fin_validite($duree).'</div>';
                echo '<div class="titrelogo"><h2>QUICKMOVE</h2>DEPLACEMENT RAPIDE</div>';
                echo '</div>';
                echo '<div class="confirmation">';
                echo "<form method='post'>
                        <input type='hidden' name='numtitre' value='$numtitre'>
                        <input type='submit' name='confirmer' value='Confirmer'>
                     </form>";
                echo '<div class="annuler"><a href="Tarifs.php">Annuler</a></div>';
                echo '</div>';
                echo '</div>';
            }
            else
            {
                echo "<h1 class='itinh1'>Consulter vos titres</h1>";
                echo $msg;
                echo '<div class="mestitres">';
                $requete = "select numtitre,nom,prenom,debutvalidite,tarif,duree 
                    from (utilisateurs u inner join titres ti using (identifiant)) inner join tarifs ta using (numero) 
                    where ti.identifiant='$id'";
                $data = requete($connexion, $requete);
                echo '<div class="afftable">';
                echo '<table><tr><th>N° du titre</th><th>Nom</th><th>Prénom</th><th>Début de validité</th><th>Fin de validité</th><th>Prix</th></tr>';
                if (mysqli_num_rows($data)==0)
                    echo '<tr><td colspan="6" class="auctitre">Aucun titre acheté pour le moment !!</td></tr>';
                while ($row = mysqli_fetch_assoc($data))
                {
                    echo "<tr>";
                    sscanf($row['debutvalidite'],'%s à %s',$da,$heu);
                    $deb = $da.$heu;
                    $fin = fin_validite2($deb,$row['duree']);
                    foreach($row as $cle => $valeur)
                    {
                        if ($cle == 'debutvalidite')
                        {
                            echo "<td>$valeur</td>";
                            echo "<td>$fin</td>";
                        }
                        else if ($cle != 'duree')
                            echo "<td>$valeur</td>";
                    }
                    echo "</tr>";
                }
                echo '</table></div>';
                echo '<div class="afftablereduit">';
                $requete = "select numtitre,debutvalidite,tarif,duree 
                    from (utilisateurs u inner join titres ti using (identifiant)) inner join tarifs ta using (numero) 
                    where ti.identifiant='$id'";
                $data = requete($connexion, $requete);
                if (mysqli_num_rows($data)==0)
                    echo '<h2 class="msgrduit">Aucun titre acheté pour le moment !!</h2>';
                while ($row = mysqli_fetch_assoc($data))
                {
                    echo '<table>';
                    foreach ($row as $cle => $valeur)
                    {
                        if ($cle == 'numtitre')
                            echo "<tr><th>N° du titre</th><td>$valeur</td></tr>";
                        else if ($cle == 'debutvalidite')
                        {
                            sscanf($row['debutvalidite'],'%s à %s',$da,$heu);
                            $deb = $da.$heu;
                            $fin = fin_validite2($deb,$row['duree']);
                            echo "<tr><th>Début de validité</th><td>$valeur</td></tr>";
                            echo "<tr><th>Fin de validité</th><td>$fin</td></tr>";
                        }
                        else if ($cle != 'duree')
                            echo "<tr><th>Prix</th><td>$valeur</td></tr>";
                    }
                    echo '</table>';
                }
                echo '</div>';
                echo '</div>';
            }
            include "BasPage.php";
        ?>
    </body>
</html>