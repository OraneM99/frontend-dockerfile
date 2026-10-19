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
