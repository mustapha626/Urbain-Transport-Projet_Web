<h1>Quand est ce que mon bus arrive ?</h1>
<h3>Recherche par arrêt</h3>
<form action="Horaires.php" method="get">
    <datalist id="arrets">
                <?php
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
                    Arrêt :
                    <input type="text"
                        name="arret"
                        list="arrets"
                        placeholder="Sélectionner un arrêt . . ." required>
                </label><br>
                <div class="horbtn"><input type="submit" value="Rechercher" class="boutton"></div>
            </form>
            <hr>
            <h3>Rechercher par ligne</h3>
            <form action="Horaires.php" method="get">
                <label>
                    Ligne :
                    <select name="ligne" required>
                        <option value="" disabled selected hidden>Sélectionner une ligne</option>
                        <?php
                            $connexion = connexion();
                            $requete = "select distinct ligne from arrets";
                            $data = requete($connexion, $requete);
                            while ($row = mysqli_fetch_assoc($data))
                            {
                                echo '<option value="'.$row['ligne'].'">Ligne '.$row['ligne']."</option>\n";
                            }
                            deconnexion($connexion);
                        ?>
                    </select>
                </label><br>
                <label>
                    Direction :
                    <select name="direction" required>
                        <option value="" disabled selected hidden>Sélectionner une direction . . .</option>
                        <?php
                            $connexion = connexion();
                            $requete = "select distinct direction from arrets";
                            $data = requete($connexion, $requete);
                            while ($row = mysqli_fetch_assoc($data))
                            {
                                echo '<option value="'.$row['direction'].'">'.$row['direction']."</option>\n";
                            }
                            deconnexion($connexion);
                        ?>
                    </select>
                </label><br>
                    <label>
                        Arrêt :
                        <select name="arret" required>
                            <option value="" disabled selected hidden>Sélectionner un arrêt . . .</option>
                            <?php
                            $connexion = connexion();
                            $requete = "select distinct arret from arrets";
                            $data = requete($connexion, $requete);
                            while ($row = mysqli_fetch_assoc($data))
                            {
                                echo '<option value="'.$row['arret'].'">'.$row['arret']."</option>\n";
                            }
                            deconnexion($connexion);
                        ?>
                        </select>
                    </label>
                    <div class="horbtn"><input type="submit" value="Rechercher" class="boutton"></div>
            </form>
        