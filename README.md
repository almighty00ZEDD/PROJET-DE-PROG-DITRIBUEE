# INTRODUCTION

Dans le cadre de notre UE programmation ditribuée , nous somme chargés de la création d'un webservice avec un back end déployé avec docker et kubernetes.

Notre projet est un jeu de tir multijoueur en ligne que nous avons appelé SHAPE SHIFTERS FEUD, un jeu dans lequel le  joueur aura impérativement besoin d'une connexion internet et d'au minimum un autre joueur connecté au serveur pour pouvoir jouer une partie.

# DOSSIERS

Le repo se compose de trois dossier:

Jeu : le jeu final, or il n'y a qu'a choisir la version adéquate pour son système d'exploitation pour le  lançer et jouer

src_jeu : les fichier sources lançables sur godot engine pour voir et / ou reprendre le projet

src_serveur : les fichier et documents nécaissaires pour le déploiement dans un serveur

# UTILISATION

Transférer les fichiers présents dans le dossier src_serveur vers votre serveur ou machine virtuelle après l'avoir compressé, par example via une scp

```bash
scp src_serveur.zip user@ip_serveur:chemin_destination
```

Effectuer les configuration que vous souhaités pour customiser le déploiement (site web,  ports ....), puis dans le meme dossier que le fichier docker-compose.yml lancer la commande :

```bash
docker-compose up
```

Ou en arrière plan

```bash
docker-compose up -d
```

# APERÇU

Vous pouvez voir un aperçu de déploiement  ce projet à l'adresse : www.zedd-games.ga
Et jouer à la version html5 de notre jeu sur : www.zedd-games.ga/jeu.html 
