<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <link rel="icon" href="Images/icon.png" type="image/png">
    <link rel="stylesheet" href="style.css" type="text/css">
    <title>Tarifs - Réseau QuickMove</title>
</head>
<body>
    <?php
    include "BarNav.php";
    include "fonction.php";
    echo '
    <div class="backgr">
        <div class="titre">
            <h1>Titres et tarifs</h1>
            <p>Plongez dans notre gamme de titres et découvrez des tarifs aussi variés que vos besoins ! Que vous soyez jeune explorateur, 
            ou travailleur acharné, nos prix s\'adaptent à votre profil, à la durée de vos déplacements et même à votre situation familiale
            grâce à notre système de tarification flexible. Faites votre choix en toute liberté et trouvez le titre qui vous convient le mieux. 
            Parcourez notre sélection en filtrant par âge, durée, profil et quotient familial, et partez à la découverte de Maatkas sans 
            contraintes !</p> <hr>
        <div class="tarifForm"><form action="Tarifs.php" method="get">';
    $connexion = connexion();
    $elem=array('Age :'=>'age','Durée :'=>'duree','Profil :'=>'profil','Quotient familial :'=>'qf');
    $i=0;
    echo '<table class="table">';
    foreach($elem as $cle => $valeur)
    {
        $requete="select distinct $valeur from tarifs where $valeur is not NULL";
        $data = requete($connexion,$requete);
        echo '<tr><td><h3>'.$cle."</h3></td>\n";
        while($row = mysqli_fetch_assoc($data))
        {
            foreach($row as $val)
            {
                echo '<td><input type="radio" name='."\"$valeur\"".' value="'."$val\"".' id="'."$i\"".'>'.'<label class="labelRadio" for='."\"$i\"".">$val</label></td>"."\n";
                $i++;                
            }
        }
        echo '</tr>';
    }
    echo '</table>';
    echo '<div class="btnTarif"><input type="submit" value="Filtrer" class="filtr">
        <input type="reset" value="Réinitialiser" class="filtr"></div></form></div>';
    echo '<div class="formSelect"><form action="Tarifs.php" method="get">';
    foreach($elem as $cle => $valeur)
    {
        $requete="select distinct $valeur from tarifs where $valeur is not NULL";
        $data = requete($connexion,$requete);
        echo '<div class="element"><h3>'.$cle."</h3>\n<select name=\"$valeur\">";
        echo '<option value="" disabled selected>Séléctionnez un choix ..<option>';
        while($row = mysqli_fetch_assoc($data))
        {
            foreach($row as $val)
            {
                echo '<option value='."\"$val\">".$val.'</option>';
            }
        }
        echo '</select></div>';
    }
    deconnexion($connexion);
    echo '<div class="btnTarif"><input type="submit" value="Filtrer" class="filtr">
        <input type="reset" value="Réinitialiser" class="filtr"></form></div></div></div></div>'."\n";
    $form = array("age"=> isset($_GET['age']),"duree"=> isset($_GET['duree']),"profil"=> isset($_GET['profil']),"qf"=> isset($_GET['qf']));
    $test = 0;
    foreach ($form as $val)
        if ($val == 1) $test = 1;
    if (!$test) 
        $requete1='select description,image,tarif,numero from tarifs';
    else 
    {
        $requete1='select description,image,tarif,numero from tarifs where ';
        $and=1;
        foreach ($form as $cle => $val)
        {
            if ($val == 1)
            {
                if ($and)
                {
                    $requete1 = $requete1.$cle."='$_GET[$cle]'";
                    $and=0; 
                }
                else 
                    $requete1 = $requete1.' and '.$cle."='$_GET[$cle]'";
            }
        }
    }
    $connexion = connexion();
    $data=requete($connexion,$requete1);
    nbResultat(mysqli_num_rows($data));
    echo '<div class="resultats">';
    while($row=mysqli_fetch_assoc($data))
    {
        echo '<div class="resultat">';
        foreach ($row as $cle => $val)
        {
            if ($cle=='image')
                echo '<div class="resulimg">'."<img src='$val' class='image'></div>";
            else if ($cle=='tarif')
                {
                echo '<div class="prix"><div>'."Prix : $val"."£</div>";
                echo "<form method='post' action='Mestitres.php'>
                    <input type='hidden' name='numtitre' value='$row[numero]'>
                    <input type='submit' name='acheter' value='Acheter'>
                    </form>";
                echo "</div>";
                }
            else if ($cle == 'description')
                echo '<div class="descrip">'.$val.'</div>';
        }
        echo '</div>';
    }
    echo '</div>';
    deconnexion($connexion);
    include "BasPage.php";
    ?>
</body>
</html>
