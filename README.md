# Projet THP Landing pages



Le but de ce projet est de synthétiser un grand nombre des notions que nous avons apprises au cours de la formation THP pendant les 6 dernieres semaines. Il s'agissait de créer une application Rails capable d'envoyer des mails à une liste de prospects, leur proposer d'atterir sur une landing page adaptée en fonction des publics visés, d'où ensuite ils pourront s'inscrire à une newsletter qui leur serait envoyée toutes les semaines. De même, deux actions marketing viennent compléter ce projet, avec un post automatique sur des réseaux sociaux généré chaque semaine.

La création du projet se décompose en 4 étapes :

# Etape 1: Choisir les cibles de notre campagne d'emailing

C'est l'étape qui nous a pris le plus de temps dans la reflexion, la faisabilité et la conception, en fonction de la possibilité d'obtenir rapidement un grand nombre d'adresse mails.
Notre choix s'est porté sur 3 publics différents dont l'intérêt pour la formation pourrait se manifester:
- les institutions culturelles de toute la région Bretagne
- les étudiants de la fac de Poitiers
- les étudiants de la fac de Nanterre

Une fois les emails reçus par différents biais, scrapping et formulaires publics sur le net, il s'agissait dès lors de concevoir une app automatique qui allait envoyer un mail adapté à chaque public, avec on l'espère un fort taux de conversion. Les mails ont été stockés sur Mailchimp.

## Etape 2: La landing page

Nous avons donc, comme demandé, généré 3 landing pages différents pour chacun de nos publics.
Chaque landing page a été créee par nos soins à l'aide d'Illustrator puis mis en production grace à Bootstrap, et sont parfaitement responsive.
Chaque landing page propose un discours adapté à la cible, une redirection vers le programme de la formation, et un CTA qui invite à s'inscrire sur la newsletter.

# Etape 3 : la newsletter

Une fois inscrit sur la newsletter, le subscriber reçoit un mail lui confirmant son inscription. Son adresse mail sera stockée sur Mailchimp dans une liste.

# Etape 4: Les tâches automatisées et les tests

Deux actions à effectuer par deux bots. Nous avons choisi Twitter avec un public ciblant les institutions culturelles, et Youtube, où il nous a semblé pertinent d'aller commenter des videos de Youtubers influents comme Norman, Cyprien et autres. Ces actions seront automatisées par le biais de Heroku Scheduler.


## Bilan

C'est la première fois depuis le début de la formation que nous avions à réaliser un projet de cette envergure. Un jour et demi pour penser et réaliser l'ensemble des programmes, des bases de données, et des implications nécessaires étaient courts pour faire appel à toutes les notions que nous avions vues au cours des semaines précédentes.


### Installation
