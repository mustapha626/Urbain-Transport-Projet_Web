<nav id="nav">
        <h1><a href="index.php"><span>Q</span>uick<span>M</span>ove</a></h1>
        <ul>
            <li>Me Déplacer
                <ul class="sousmenu">
                    <li><a href="Itineraire.php">Itinéraires</a></li>
                    <li><a href="Horaires.php">Horraires</a></li>
                </ul>
            </li>
            <li>Nos Tarifs
                <ul class="sousmenu">
                    <li><a href="Tarifs.php?profil=Tout+public">Tous Publics</a></li>
                    <li><a href="Tarifs.php?duree=Un+mois">Solidaires</a></li>
                    <li><a href="Tarifs.php?age=Jeune<br>(18+ans+-+26+ans)">Jeunes</a></li>
                    <li><a href="Tarifs.php">Tous Nos Tarifs</a></li>
                </ul>
            </li>
            <li><a href="Reseau.php">Le Réseau</a></li>
            <?php 
                session_start();
                if (!isset($_SESSION['identifiant'])) 
                    echo 
                        '<li><a href="Connexion.php">Connexion</a></li>
                        <li><a href="Inscription.php">Inscription</a></li>';
                else
                {
                    if (!$_SESSION['admin'])
                        echo 
                            '<li>Mon espace
                                <ul class="sousmenu">
                                    <li><a href="Profil.php">Profil</a></li>
                                    <li><a href="Mestitres.php">Mes Titres</a></li>
                                    <li><a href="Messagerie.php">Messagerie</a></li>
                                    <li><a href="Deconnexion.php">Se déconnecter</a></li>
                                </ul>
                            </li>';
                    else 
                        echo 
                            '<li>Mon espace
                                <ul class="sousmenu">
                                    <li><a href="Profil.php">Profil</a></li>
                                    <li><a href="Reponse.php">Messagerie</a></li>
                                    <li><a href="Deconnexion.php">Se déconnecter</a></li>
                                </ul>
                            </li>'; 
                }
            ?>
        </ul>
        <div id="icons"></div>
</nav>
<script>
    icons.addEventListener("click", ()=> {
        nav.classList.toggle("active");
    });
</script>