# graphql-generator-demo
Demo : Génération d'une appli web fonctionnelle générée à  partir d'un graphql
Le fichier gphql est visible:
/graphql-generator/src/main/resources/schema/schema.graphqls
Usage du plugin Maven 	bg.graphql.tool:graphql-generator-maven-plugin

# start:
* run : bg.demo.Application
* check : 
[http://localhost:8080/welcome](http://localhost:8080/welcome) 

# Déploiement sur Docker
* Voir le [DockerFile](./Dockerfile)
* Installer docker sur sa machine (MSL si windows puis docker)
* Rechercher une image java >$docker search alpine
* Récupèrer l'image >$docker pull alpine
* Construire un container  >$docker build --tag "docker-hello-world:latest" 
* Démarrer le container en mappant le port 8080 >$docker run -p 8080:8080 docker-helloworld:latest
* Tester avec un navigateur sur port http://localhost:8080 
