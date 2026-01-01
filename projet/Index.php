<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <link rel="icon" href="Images/icon.png" type="image/png">
    <link rel="stylesheet" href="style.css" type="text/css">
    <title>Accueil - Réseau QuickMove</title>
</head>
<body id="acc">
    <?php
        include "BarNav.php";
    ?>
    <header>
        <h1>QuickMove</h1>
        <p> Votre partenaire de mobilité au sein de la Communauté de Maatkas. 
            <br>Explorez la ville en toute simplicité avec notre réseau de transports en commun.</p>
    </header>
    <section class="deplacer">
        <div class="itin">
            <h1>Où est ce que je veux aller ?</h1>
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
        </div>
        <div class="horr">
            <?php
                include "formhor.php";
            ?>
        </div>
    </section>
    <div>
        <script>
            
        </script>
    </div>
    <?php
        include "BasPage.php";
    ?>
</body>
</html>
