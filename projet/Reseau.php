<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <link rel="icon" href="Images/icon.png" type="image/png">
    <link rel="stylesheet" href="style.css" type="text/css">
    <link rel="stylesheet" href="https://unpkg.com/leaflet/dist/leaflet.css" />
    <title>Le Réseau - Réseau QuickMove</title>
</head>
<body>
    <?php
        include "fonction.php";
        include "BarNav.php";
        echo '<h1 class="itinh1">Carte intéractive du réseau</h1>';
        echo '<div id="carte">
        <script src="https://unpkg.com/leaflet/dist/leaflet.js"></script>';
        echo "<script>
        var map = L.map('carte').setView([36.5950832,4.007301], 14);
        L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
          attribution: '© OpenStreetMap contributors'
        }).addTo(map);\n"; 
        $co = connexion();
        $req = "select distinct arret,localisation from arrets";
        $data = requete($co,$req);
        while ($row = mysqli_fetch_assoc($data))
        {
            echo "var busStop = L.marker([$row[localisation]]).addTo(map);\n
                busStop.bindPopup('<b>Arrêt de Bus</b><br>$row[arret]')\n";
        }
        echo "</script></div>";
      include "BasPage.php";
    ?>