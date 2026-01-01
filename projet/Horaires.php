<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <link rel="icon" href="Images/icon.png" type="image/png">
    <link rel="stylesheet" href="style.css" type="text/css">
    <title>Horaires - Réseau QuickMove</title>
</head>
<body>
    <?php
        include "BarNav.php";
        include "fonction.php";
        echo '<h1 class="horh1">Consulter les horraires</h1>';
        echo '<div class="horpage"><div class="hform">';
        include "formhor.php";
        echo '</div>';
    ?>
    
    <?php
        if (!isset($_GET['arret']) && !isset($_GET['ligne']))
            include "Urbain.php";
        else 
        {
            echo '<div class="hresultat">'."\n";
            if (!isset($_GET['arret']))
            {
                $ligne = $_GET['ligne'];
                echo "<h1>Horraires de passage des bus de la ligne $ligne</h1>";
                $connexion = connexion();
                $requete = "select direction,icon,arret,heurePassage1,heurePassage2,heurePassage3,heurePassage4,heurePassage5 from arrets 
                    where ligne='$ligne'";
                $data = requete($connexion, $requete);
                $regrouper = [];
                while ($row = mysqli_fetch_assoc($data))
                {
                    $cle = $row['direction'];
                    if (!isset($regrouper[$cle]))
                    {
                        $regrouper[$cle] = [
                            'direction' => $cle,
                            'icon' => $row['icon'],
                            'passages' => []
                        ];
                    }
                    $regrouper[$cle]['passages'][] = [
                        'Arret' => $row['arret'],
                        'Passage 1' => $row['heurePassage1'],
                        'Passage 2' => $row['heurePassage2'],
                        'Passage 3' => $row['heurePassage3'],
                        'Passage 4' => $row['heurePassage4'],
                        'Passage 5' => $row['heurePassage5']
                    ];     
                }
                echo '<img src="'.$regrouper[$cle]['icon'].'">';
                foreach ($regrouper as $val)
                {
                    echo "<h2>Direction $val[direction]</h2>";
                    echo '<table>';
                    $test = 1;
                    foreach ($val['passages'] as $valeur)
                    {
                        if ($test) 
                        {
                            echo '<tr>';
                            foreach ($valeur as $key => $value)
                            {
                                echo "<th>$key</th>";
                            }
                            echo '</tr>';
                            $test = 0;
                        }
                        echo '<tr>';
                        foreach ($valeur as $value)
                        {
                            echo "<td>$value</td>";
                        }
                        echo '</tr>';
                    }
                    echo '</table>';
                }
                echo '</div>';
                deconnexion($connexion);
            }
            else if(!isset($_GET['ligne']))
            {
                $arret = $_GET['arret'];
                echo "<h1>Prochains passages à l'arrêt $arret</h1>";
                $connexion = connexion();
                $requete = "select distinct ligne,direction,icon,heurePassage1,heurePassage2,heurePassage3,heurePassage4,heurePassage5
                from arrets where arret='$arret'";
                $data = requete($connexion, $requete);
                while ($row = mysqli_fetch_assoc($data))
                {
                    echo '<div class="hres">';
                    echo '<div class="hresimg"><img src="'."$row[icon]\"></div>";
                    echo '<div class="hrestitre"><strong> Ligne : </strong>'.$row['ligne'].' <strong>- Direction : </strong>'.$row['direction'].'</div>';
                    echo '<div class="hresheures">&#128336; ';
                    echo $row['heurePassage1'].' - '.$row['heurePassage2'].' - '.$row['heurePassage3'].' - '.$row['heurePassage4'].' - '.$row['heurePassage5'];
                    echo '</div></div>';
                }
                echo '</div>';
                deconnexion($connexion);
            }
            else 
            {
                $arret = $_GET['arret'];
                $ligne = $_GET['ligne'];
                $direction = $_GET['direction'];
                echo "<h1>Prochains passages des bus de la ligne $ligne direction $direction à l'arrêt $arret</h1>";
                $connexion = connexion();
                $requete = "select distinct ligne,direction,icon,heurePassage1,heurePassage2,heurePassage3,heurePassage4,heurePassage5
                from arrets where arret='$arret' and ligne='$ligne' and direction='$direction'";
                $data = requete($connexion, $requete);
                if (mysqli_num_rows($data)==0)
                    echo "<h3>Aucun passage des bus de la ligne $ligne à l'ârret $arret a été trouvé !!</h3>";
                else 
                {
                    while ($row = mysqli_fetch_assoc($data))
                    {
                        echo '<div class="hres">';
                        echo '<div class="hresimg"><img src="'."$row[icon]\"></div>";
                        echo '<div class="hrestitre"><strong> Ligne : </strong>'.$row['ligne'].' <strong>- Direction : </strong>'.$row['direction'].'</div>';
                        echo '<div class="hresheures">&#128336; ';
                        echo $row['heurePassage1'].' - '.$row['heurePassage2'].' - '.$row['heurePassage3'].' - '.$row['heurePassage4'].' - '.$row['heurePassage5'];
                        echo '</div></div>';
                    }
                }
                echo '</div>';
                deconnexion($connexion);
            } 
    }
    ?>
    </div>
    <h3 class="horh1">Sélectionner une ligne : </h3>
    <div class="elignes">
        <?php
            $connexion = connexion();
            $requete = "select distinct ligne, direction, icon from arrets";
            $data = requete($connexion, $requete);
            $regrouper = [];
            while ($row = mysqli_fetch_assoc($data))
            {
                $cle = $row['ligne'];
                if (!isset($regrouper[$cle]))
                {
                    $regrouper[$cle] = [
                        'ligne' => $cle,
                        'icon' => $row['icon'],
                        'directions' => []
                    ];
                }
                $regrouper[$cle]['direction'][] = $row['direction'];
            }
            echo '<form method="get" action="Horaires.php">';
            echo '<div class="hlignes">';
            foreach($regrouper as $val)
            {
                echo '<input type="radio" name="ligne" id="'."$val[ligne]\" value="."\"$val[ligne]\">";
                echo '<label for="'."$val[ligne]\">";
                echo '<div class="hligne">';
                echo '<div class="htitre"><strong>Ligne : </strong>'.$val['ligne'].'</div>';
                echo '<img src="'."$val[icon]\">";
                echo '<div class="htitre"><strong>Directions : </strong><ul>';
                foreach($val['direction'] as $valeur)
                {
                    echo "<li>$valeur</li>";
                }
                echo '</ul></div></div></label>';
            }
            echo '</div><div class="hbtn"><input type="submit" value="Consulter" class="boutton"></div>';
            echo '</form></div>';    
            include "BasPage.php";
            ?>
    
    
</body>
</html>