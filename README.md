# Urbain-Transport-Projet_Web
Quickmove est une plateforme web dynamique simulant un réseau de transport urbain, développée dans un cadre académique.
Ce projet a été réalisé durant ma première année de licence en informatique, dans le but de mettre en pratique les bases du développement
web et de la gestion de bases de données.

L’application permet aux utilisateurs de consulter les horaires de passage des bus, de rechercher des itinéraires urbains et de gérer leurs
comptes personnels. Un système d’authentification différencie les utilisateurs et les administrateurs, et une messagerie intégrée permet la
communication entre les usagers et l’agence de transport. Les administrateurs peuvent accéder à un espace dédié afin de répondre aux 
messages et assurer le suivi des demandes.

Le projet est constitué de pages PHP assurant la logique applicative, d’une feuille de style CSS responsive pour la mise en forme de 
l’interface utilisateur, ainsi que de fichiers de données aux formats CSV et SQL utilisés pour l’initialisation et l’exploitation de la 
base de données.

# Preparation de l'environnement :
Après le démarrage d’un serveur web local (Apache) et d’un serveur de base de données (MySQL), le fichier /projet/database/transport.sql 
doit être importé via phpMyAdmin.
Cette opération permet la création du schéma de la base de données, des tables relationnelles et l’insertion des données initiales.
Un utilisateur MySQL doit ensuite être créé (identifiant : client, mot de passe : client) avec les privilèges nécessaires à l’accès et à la 
manipulation des données par l’application.
