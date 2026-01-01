<?php
    function connexion()
    {
	    $connection = mysqli_connect("localhost", "client", "client", "transport");	
	    if ( mysqli_connect_errno()) 
            die('<p class="mesErr">Echec lors de la connexion MySQL</p>');
        else 
        {
            mysqli_set_charset($connection , 'utf8');
	        return $connection;
        }
    }
    function nbResultat($n)
    {
        switch ($n) {
            case 0 : echo '<h3 class="restxt">Aucun résultat corresponds à votre recherche</h3>';break;
            case 1 : echo '<h3 class="restxt">Un seul résultat corresponds à votre recherche </h3>';break;
            default : echo '<h3 class="restxt">'.$n." résultats correspondent à votre recherche</h3>";break;
        }
    }
    function deconnexion($co)
    {
	    mysqli_close($co);
    }
    function requete($co,$req)
    {
	    $d = mysqli_query($co, $req);
	    return $d;
    }
    function fin_validite($duree) 
    {
        date_default_timezone_set('Europe/Paris');
        $date = time();
        switch ($duree) {
            case "Une heure (1h)":
                $date += 3600;
                break;
            case "Deux heures (2h)":
                $date += 7200;
                break;
            case "Une journée":
                $date += 86400;
                break;
            case "Un mois":
                $date += 2592000;
                break;
            case "Une année":
                $date += 31536000;
                break;
            default:
                return date('Y-m-d à H:i', $date) ;
        }
        return date('Y-m-d à H:i', $date);
    }

    function fin_validite2($date_debut, $duree) {
        date_default_timezone_set('Europe/Paris');
        $debut = strtotime($date_debut);
        $date_fin = $debut;
        switch ($duree) {
            case "Une heure (1h)":
                $date_fin += 3600;
                break;
            case "Deux heures (2h)":
                $date_fin += 7200;
                break;
            case "Une journée":
                $date_fin += 86400;
                break;
            case "Un mois":
                $date_fin = strtotime('+1 month', $debut);
                break;
            case "Une année":
                $date_fin = strtotime('+1 year', $debut);
                break;
            default:
                return date('Y-m-d à H:i', $debut);
        }
        return date('Y-m-d à H:i', $date_fin);
    }
    
      
?>
