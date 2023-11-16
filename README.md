Ce script Bash automatise l'installation et la configuration initiale de Jenkins sur un système Debian. Il réalise les tâches suivantes :

Vous avez une version avec le sudo et une version sans sudo.
Mise à jour du système et installation des dépendances nécessaires (Java, wget, certificats).
Ajout du dépôt Jenkins et installation de Jenkins.
Démarrage et activation du service Jenkins.
Attente du démarrage complet de Jenkins et affichage du mot de passe initial pour la configuration.
Possibilité d'extension pour des configurations automatiques supplémentaires.
Prérequis
Un système d'exploitation Debian.
Droits d'administrateur (sudo).
Utilisation



Pour commencer on va :

1/ Copiez le script dans un fichier, par exemple install_jenkins.sh.

2/ Rendez le script exécutable avec la commande : chmod +x install_jenkins.sh.

3/ Exécutez le script avec les droits d'administrateur : sudo ./install_jenkins.sh.

Détails du Script :

Variables Initiales : Configuration des chemins et identifiants de base pour Jenkins.

Mise à Jour Système : Mise à jour des paquets et installation des prérequis.

Installation de Jenkins : Ajout du dépôt Jenkins, installation et démarrage du service.

Attente du Démarrage de Jenkins : Vérification périodique du démarrage de Jenkins sur le port défini.

Configuration Initiale : Affichage du mot de passe initial de Jenkins pour la configuration via l'interface web.

Post-installation



Après l'exécution du script :

Accédez à Jenkins via http://<adresse_ip_du_serveur>:8080.
Utilisez le mot de passe initial affiché par le script pour déverrouiller Jenkins.
Suivez les instructions de l'assistant de configuration Jenkins pour installer les plugins nécessaires et configurer l'instance.
Extensions Possibles
Le script peut être étendu pour inclure :

L'installation automatique de plugins spécifiques.
La création et configuration de jobs Jenkins via CLI ou API.
Des scripts de post-installation personnalisés.
Remarques
Assurez-vous de changer les mots de passe et les configurations par défaut pour sécuriser votre instance Jenkins.
Le script doit être exécuté avec des droits d'administrateur pour fonctionner correctement.