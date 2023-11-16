#!/bin/bash

# Initialisation des variables
JENKINS_HOME="/var/lib/jenkins"
JENKINS_PORT="8080"
JENKINS_ADMIN_USER="admin"
JENKINS_ADMIN_PASSWORD="testadmin"

# Mise à jour et préparation du système
apt-get update
apt-get upgrade -y
apt-get install -y openjdk-11-jdk wget ca-certificates

# Ajout du dépôt Jenkins et installation
wget -O /usr/share/keyrings/jenkins-keyring.asc  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]  https://pkg.jenkins.io/debian-stable binary/ | tee  /etc/apt/sources.list.d/jenkins.list > /dev/null
apt-get update
apt-get install jenkins
apt-get update
apt-get install -y jenkins

# Démarrage et activation de Jenkins
systemctl start jenkins
systemctl enable jenkins

# Attente du démarrage de Jenkins
echo "En attente du démarrage de Jenkins..."
while ! nc -z localhost $JENKINS_PORT; do
  sleep 1
done
echo "Jenkins a démarré sur le port $JENKINS_PORT."

# Configuration initiale de Jenkins via CLI ou API
JENKINS_INITIAL_PASSWORD=$(cat $JENKINS_HOME/secrets/initialAdminPassword)
echo "Mot de passe initial de Jenkins : $JENKINS_INITIAL_PASSWORD"

# Configuration automatique (à étendre selon les besoins)
# installations des plugins, créer des jobs, etc.

# Fin du script
echo "Installation et configuration initiale de Jenkins terminée."