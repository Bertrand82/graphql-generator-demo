# graphql-generator-demo
Demo : Génération d'une appli web fonctionnelle générée à  partir d'un graphql
Usage du plugin Maven 	bg.graphql.tool:graphql-generator-maven-plugin

# start:
* run : bg.demo.Application
* check : 
[http://localhost:8080/welcome](http://localhost:8080/welcome) 

# Deploiement sur Docker
* Voir le [DockerFile](./Dockerfile)
* Installer docker sur sa machine (MSL si windows puis docker)
* Rechercher une image java >$docker search alpine
* Recupere l'image >$docker pull alpine
* construire un container  >$docker build --tag "docker-hello-world:latest" 
* demarrer le container en mappant le port 8080 >$docker run -p 8080:8080 docker-helloworld:latest
* Tester avec un navigateursur port http://localhost:8080 

