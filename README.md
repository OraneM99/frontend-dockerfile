# Frontend Dockerfile

## Description

Ce projet est une application Angular conteneurisée avec Docker.

L'objectif était de :

- Créer une application Angular nommée `frontend-dockerfile`
- Conteneuriser l'application avec Docker
- Permettre l'accès à l'application depuis l'environnement Hackeuse
- Résoudre les problèmes liés aux hôtes autorisés (`allowedHosts`)

---

## Création du projet

Création du projet Angular :

```bash
npx @angular/cli@latest new frontend-dockerfile
```

Lancement local :

```shell
npm install
npm start
```

Configuration Angular

Afin de permettre l'accès à l'application depuis l'URL fournie par la plateforme Hackeuse, le fichier angular.json a été modifié.

Ajout de la propriété :

```
"serve": {
"options": {
"allowedHosts": [
".code.hackeuse.fr"
    ]
  }
}
```

Cette configuration autorise les sous-domaines de code.hackeuse.fr.

Dockerisation

```
FROM node:24-alpine
WORKDIR /frontend-dockerfile
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 4200
CMD ["npm", "start", "--", "--host", "0.0.0.0"]
```
