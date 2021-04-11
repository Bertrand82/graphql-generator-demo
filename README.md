graphql-generator:v000# graphql-generator-demo
* Demo : Génération d'une appli web fonctionnelle générée à partir d'un fichier graphql
* Le fichier gphql est visible ici:
/src/main/resources/schema/schema.graphqls
* Usage du plugin Maven 	bg.graphql.tool:graphql-generator-maven-plugin

# start:
* run : bg.demo.Application
* check : 
[http://localhost:80/welcome](http://localhost:8080/welcome) 

# Déploiement sur Docker
* Voir le [DockerFile](./Dockerfile)
* Installer docker sur sa machine (WSL - Windows Subsystem for Linux - si windows puis docker)
* Rechercher une image java >$docker search alpine
* Récupérer l'image >$docker pull alpine
* Construire une image a partir du Dockerfile courrant:
>$docker build --tag "graphql-generator:v000" . 
* Démarrer le container en mappant le port 80 
* >$docker run -p 80:80 graphql-generator:v000
* ou bien en utilisant un profile par exemple:
* >$docker run -p 8080:80 -e SPRING_PROFILE=dev graphql-generator:v000
* Ou si il y a un acces a une bdd sur amazone:
* >$docker run -p 8080:80 -e SPRING_PROFILE=a graphql-generator:v000
* Tester avec un navigateur sur port http://localhost:80 

# Anomalie/Erreur au demarage:
*  Could not connect to address=(host=localhost)(port=3306)(type=master) : Socket fail to connect to host:localhost, port:3306. Connection refused (Connection refused) : localhost à l'interieur d'un container n'a pas le même sens que sur la machine. 
    * Utiliser l'ip de la base de donnée.
    * Passer l'url de la bdd au lancement: $docker run -e APP_DB_URL="jdbc:mariadb://172.21.208.1:3306/databasebg5?user=root&password=bg&useSSL=false&allowPublicKeyRetrieval=true"  -p 80:80 graphql-generator:v000
  
  
# Deploiement sur docker
$docker build --tag "bertrand82/graphql-demo:v001" . 
$docker push bertrand82/graphql_demo:v001

# Deploiement sur amazon   
    