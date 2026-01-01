<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <link rel="icon" href="Images/icon.png" type="image/png">
    <link rel="stylesheet" href="style.css" type="text/css">
    <link rel="stylesheet" href="https://unpkg.com/leaflet/dist/leaflet.css" />
    <title>Itinéraire - Réseau QuickMove</title>
</head>
<body>
    <?php
        include "BarNav.php";
    ?>
    <h1 class="itinh1">Rechercher un itinéraire</h1>
    <div class="itin2">
        <div class="rech">
            <form action="Itineraire.php" method="get">
                <datalist id="arrets">
                <?php
                    include "fonction.php";
                    $connexion = connexion();
                    $requete="select distinct arret from arrets";
                    $data=requete($connexion, $requete);
                    while($row = mysqli_fetch_assoc($data))
                    {
                        echo "<option value=\"$row[arret]\">$row[arret]</option>\n";
                    }
                    deconnexion($connexion);
                ?>
                </datalist>
                <label>
                    Départ :
                    <input type="text"
                        name="depart"
                        list="arrets"
                        placeholder="Ex : Arrêt Thighilt . . ." required>
                </label>
                <label>
                    Arrivée :
                    <input type="text"
                        name="arrive"
                        list="arrets"
                        placeholder="Ex : Arrêt Tizagharine . . ." required>
                </label> <hr>
                <div class="parOuArr">
                    <input type="radio" name="parOuArr" value="partir" id="partir" checked>
                    <label for="partir">Partir à</label>
                    <input type="radio" name="parOuArr" value="arriver" id="arriver">
                    <label for="arriver">Arriver à</label>
                </div>
                <label>
                    Heure :
                    <input type="time" id="heure" name="heure" value="" />
                    <script>
                        var maintenant = new Date();
                        var heure = maintenant.toLocaleTimeString('fr-FR', { hour: '2-digit', minute: '2-digit' });
                        document.getElementById('heure').value = heure;
                      </script>
                    
                </label>
                <input type="submit" value="Rechercher" class="boutton">
            </form>
            <?php
                if(isset($_GET['depart']))
                {
                    $depart = $_GET['depart'];
                    $arriver = $_GET['arrive'];
                    $parOuArr = $_GET['parOuArr'];
                    $heure = $_GET['heure'];
                    $res = array();
                    $req="select ligne,direction,icon,arret";
                    for($i=1; $i<6; $i++)
                    {
                        $req=$req.',heurePassage'.$i;
                    }
                    $req=$req." from arrets a where heurePassage1 between 
                        (select heurePassage1 from arrets where arret='$depart' and ligne=a.ligne and direction=a.direction)
                        and (SELECT heurePassage1 FROM arrets where arret='$arriver' and ligne=a.ligne and direction=a.direction)";
                    $connexion = connexion();
                    $data = requete($connexion, $req);
                    while ($row = mysqli_fetch_assoc($data))
                    { 
                        $res[]=$row;
                    }
                    $regrouper = [];
                    foreach ($res as $ligne)
                    {
                        $key = $ligne['ligne'];
                        if (!isset($regrouper[$key])) 
                        {
                            $regrouper[$key] = [
                                'ligne' => $ligne['ligne'],
                                'direction' => $ligne['direction'],
                                'icon' => $ligne['icon'],
                                'arrets' => []];
                        }
                        $regrouper[$key]['arrets'][] = [
                        'arret' => $ligne['arret'],
                        'heures' => [
                            $ligne['heurePassage1'],
                            $ligne['heurePassage2'],
                            $ligne['heurePassage3'],
                            $ligne['heurePassage4'],
                            $ligne['heurePassage5']]
                        ];
                    }
                    if (count($regrouper) == 0)
                        echo '<h3 class="aucun">Aucun itinéraire trouvé !!</h3>';
                    else if (count($regrouper) == 1)
                        echo '<h3>Résultat : </h3>';
                    else 
                        echo '<h3>Résultats : </h3>';
                    echo '<div class="Iresultats">';
                    foreach ($regrouper as $data) 
                    {
                        echo '<div class="Iresultat">'."\n";
                        echo '<div class="ligne"><strong>Ligne :</strong> ' . $data['ligne'] . ' -<strong>Direction : </strong>' . $data['direction'] . '</div>'."\n";
                        echo '<div class="icon"><img src="' . $data['icon'] . '" alt="Icone"></div>'."\n";
                        echo '<div class="arrdep">&#128336 ';
                        $passage = 0;
                        $test = 0;
                        $j = count($data['arrets'])-1;
                        if ($parOuArr == 'partir')
                        {
                            foreach ($data['arrets'][0]['heures'] as $cle => $valeur)
                            {
                                if ($valeur > $heure)
                                {
                                    $passage = $cle-1;
                                    $test = 1;
                                    break;
                                }
                            }
                        }else{
                            foreach ($data['arrets'][$j]['heures'] as $cle => $valeur)
                            {
                                if ($valeur > $heure)
                                {
                                    $passage = $cle-1;
                                    $test = 1;
                                    break;
                                }
                            }
                        }
                        if ($passage == -1)
                            echo $data['arrets'][0]['heures'][0].' - '.$data['arrets'][count($data['arrets'])-1]['heures'][0];
                        else if ($test == 0)
                            echo $data['arrets'][0]['heures'][4].' - '.$data['arrets'][count($data['arrets'])-1]['heures'][4];
                        else 
                            echo $data['arrets'][0]['heures'][$passage].' - '.$data['arrets'][count($data['arrets'])-1]['heures'][$passage];
                        echo "</div>\n";
                        echo '<div id="Ibouton"><button>Détailler</button></div>';
                        echo '<div id="details">'."\n".'<ul>';
                        foreach ($data['arrets'] as $arret) 
                        {
                            echo  '<li>'.$arret['arret'].' - ';

                            foreach ($arret['heures'] as $num => $pass) 
                            {
                                if($passage == -1)
                                {
                                    echo $arret['heures'][0].'</li>'."\n";
                                    break;
                                }
                                else if ($test == 0)
                                {
                                    echo $arret['heures'][4].'</li>'."\n";
                                    break;
                                }
                                else if ($num == $passage)
                                    echo $pass.'</li>'."\n"; 

                            }
                        }
                        echo "</ul>\n</div>\n</div>\n";
                    }
                    echo "</div>\n";
                    
                }
            ?>
        </div>
        <div id="map"></div>
        <script src="https://unpkg.com/leaflet/dist/leaflet.js"></script>
        <script>    
            document.querySelectorAll("#Ibouton button").forEach(button => {
            button.addEventListener("click", () => {
            const details = button.parentElement.nextElementSibling;
            if (details.classList.contains("afficher")) {
                button.textContent = "Détailler";
            } else {
                button.textContent = "Masquer";
            }
            details.classList.toggle("afficher");
            });
        });
        </script>

<script>
  var map = L.map('map').setView([36.5950832,4.007301], 14);
  L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
    attribution: '© OpenStreetMap contributors'
  }).addTo(map); 
</script>
    </div>
    <?php
        include "BasPage.php";
    ?>
</body>
</html>