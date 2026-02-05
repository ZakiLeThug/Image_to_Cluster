## 🎯 But de l’atelier

Cet atelier a pour objectif d’industrialiser le déploiement d’une application web simple en utilisant des outils DevOps et d’Infrastructure as Code.

À partir d’un simple fichier index.html, nous :

construisons une image Docker personnalisée avec Packer

importons cette image dans un cluster Kubernetes (K3d)

déployons automatiquement l’application avec Ansible

automatisons tout le processus grâce à un Makefile

exécutons le tout dans un environnement reproductible via GitHub Codespaces

👉 L’objectif est de comprendre comment passer d’un artefact applicatif (HTML) à un déploiement automatique sur Kubernetes, sans intervention manuelle.

## 🧱 Architecture

![Architecture](Architecture_cible.png)


Ensuite direct :

## ⚙️ Commandes


    make setup
    
    make all
    
    make status

Puis faut tester le port    

Si c'est bon lancez


    make clean

    make stop

    make status

