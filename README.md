# Projet Prestashop avec Docker

## Architecture

- **prestashop** : Conteneur basé sur l’image officielle Prestashop, hébergeant la boutique.
- **db** : Conteneur MySQL 8.0 pour la base de données.
- **phpmyadmin** : Interface web pour gérer la base de données via un navigateur.
- **nginx** : Serveur proxy HTTP/HTTPS pour Prestashop.
- **prometheus, grafana, cadvisor, node-exporter, alertmanager** : Outils de monitoring pour surveiller les performances et la santé des conteneurs.
- **mysql-backup** : Conteneur pour effectuer des sauvegardes automatiques de la base de données.

---

## Mise en place

1. Cloner le dépôt du projet :
   ```bash
   git clone https://github.com/EngelibertTom/docker-global.git
   cd docker-global

## Créer un fichier .env à la racine du projet contenant :

MYSQL_ROOT_PASSWORD=root
MYSQL_DATABASE=prestashop
MYSQL_USER=user
MYSQL_PASSWORD=password

## Lancer le projet 

docker-compose up -d --build

## Accès 

| Service    | URL                                            | Utilisateur                   | Mot de passe                  |
| ---------- | ---------------------------------------------- | ----------------------------- | ----------------------------- |
| Prestashop | [http://localhost](http://localhost)           | Défini lors de l'installation | Défini lors de l'installation |
| phpMyAdmin | [http://localhost:8081](http://localhost:8081) | `user`                        | `password`                    |
| MySQL root | via conteneur Docker                           | `root`                        | `root`                        |
| Prometheus | [http://localhost:9090](http://localhost:9090) | -                             | -                             |
| Grafana    | [http://localhost:3000](http://localhost:3000) | admin                         | admin                         |

