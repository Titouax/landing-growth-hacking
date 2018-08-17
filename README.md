# Projet THP Landing pages
 <a href="https://thp-growth-hack.herokuapp.com" target="_blank">Thp-Growth-Hack</a>

### Salut  mouss'!  😎
Bon comme d'hab on à fait du sale, mais tu le sais déja 😅

Comme demandé, on a 3 landing pages pour 3 cibles différentes : 
- <a href="https://thp-growth-hack.herokuapp.com" target="_blank">les étudiants de Poitiers</a>
- <a href="https://thp-growth-hack.herokuapp.com/pages/hometwo/" target="_blank">les étudiants de Nanterre</a>
- <a href="https://thp-growth-hack.herokuapp.com/pages/hometree/" target="_blank">les centres culturelles de Bretagne</a>

Le but de ce projet est de synthétiser un grand nombre de hacks que nous avons appris au cours de la formation THP pendant les 6 dernieres semaines. 
Il s'agissait de créer une application Rails capable d'envoyer des mails à une liste de prospects (#PasPropreDuTout / #LaRGPDestTuéeDansl'Oeuf), leur proposer d'atterir sur une landing page adaptée en fonction des publics visés(#AllezViensOnEstBien / #TuConnaisDisneyLand?), d'où ensuite ils pourront s'inscrire à une newsletter qui leur serait envoyée toutes les semaines(#T'enApourl'AnnéeÀteDésincrire). 
De même, deux actions marketing viennent compléter ce projet(Quand on fait du sale, rien ne nous arrête), avec un post automatique sur des réseaux sociaux généré chaque semaine. 😅

La création du projet se décompose en 4 étapes (enfin presque) :

# Etape 1: Choisir les cibles de notre campagne d'emailing 🎯

C'est l'étape qui nous a pris le plus de temps dans la reflexion, la faisabilité et la conception, en fonction de la possibilité d'obtenir rapidement un grand nombre d'adresse mails.
Notre choix s'est porté sur 3 publics différents dont l'intérêt pour la formation pourrait se manifester:
- les institutions culturelles de toute la région Bretagne
- les étudiants de la fac de Poitiers
- les étudiants de la fac de Nanterre

Une fois les emails reçus par différents biais, scrapping et formulaires publics sur le net, il s'agissait dès lors de concevoir une app automatique qui allait envoyer un mail adapté à chaque public, avec on l'espère un fort taux de conversion. Les mails ont été stockés sur Mailchimp.

# Etape 2: La landing page template MAISONNNN 👨‍💻  💪 🔥

Nous avons donc, comme demandé, généré 3 landing pages différents pour chacun de nos publics.
Chaque landing page a été créee par nos soins à l'aide d'Illustrator puis mis en production grace à Bootstrap, et sont parfaitement responsive.

Chaque landing page propose un discours adapté à la cible, une redirection vers le programme de la formation, et un CTA qui invite à s'inscrire sur la newsletter.

Choix du design : la landing page a été formulée dans un esprit digital pour attirer les jeunes étudiants, le fait d'utiliser les grilles permet de jouer sur la composition, il ne reste plus qu'à jouer avec les visuels, effets et couleurs pour adapter à la cible.

# Etape 3 : la newsletter 💌

Une fois inscrit sur la newsletter, le subscriber reçoit un mail lui confirmant son inscription. Son adresse mail sera stockée sur Mailchimp dans une liste. 😈

# Etape 4: Les tâches automatisées et les tests 🔁

Deux actions à effectuer par deux bots. Nous avons choisi Twitter avec un public ciblant les institutions culturelles, et Youtube, où il nous a semblé pertinent d'aller commenter des videos de Youtubers influents comme Norman, Cyprien et autres. Ces actions seront automatisées par le biais de Heroku Scheduler.

# Etape 5: Acquisitions 🚀

Nous avons choisi plusieurs méthodes d'acquisition : 
- Le bouche à oreille : 
Bah oui ! Rien de tel qu'un petit "Allo ... Mamie ?! Hey j'ai fait un super site tu va être super fier de moi #C'estMoiQuiL'aiFait 😅

- Les réseaux sociaux : 
1) On touch nos prospect en likant tout nos contact récupéré des scrapping.
2) Ensuite, on leur envoie différents messages sur les comptes.


# Etape 6: Tracking & Metrics 📈
## Google Analytics A.K.A. La Base
Pas besoin de t'expliquer, tu connais, on met un script, on track les Users, on créer nos funnels de conversion, on récupère des Insight Stylé comme le taux de rebond, le nombre de chats dans la maison au moment de la connexion, Le nombre de click sur le bouton bleu plutot que sur le bouton orange, toussa toussa, Mais tu connais ! 
## HotJar
Rien de tel qu'un bon HeatMap des familes pour te rendre compte de tes erreurs en UX desgin, du coup on à intégré HotJar, un super outil qui nous permet d'avoir <a href="https://insights.hotjar.com/h?site=981541&heatmap=3006616&token=d955ecbcc4441c5f9b5f4745b354c65d&device=desktop&type=click" target="_blank">Ceci</a>
Hey ouais !  Tiens ! t'en veux ? 👊
# Etape 7: Des test of course !!!!! 
D'ailleurs, on est encore en train de les test, donc bon ... 
Sinon :
```
Rails Test 
```
# Etape 8: Pistes d'amélioration 

- Nous pensons rajouter du JS afin d'animer les fond d'écran
- Nous pensons également améliorer le reponsive design de notre app en wrappant certain éléments 
- Nous souhaitons par la suite utiliser les avantages de notre graphisme pour effectuer des mouse:hover sur les elements et afficher de nouvelles options 

- Trouver du temps pour dormir 😅

## Bilan

C'est la première fois depuis le début de la formation que nous avions à réaliser un projet de cette envergure. Un jour et demi pour penser et réaliser l'ensemble des programmes, des bases de données, et des implications nécessaires étaient courts pour faire appel à toutes les notions que nous avions vues au cours des semaines précédentes.

### Installation

☀️   Cloner le repo

☀️   $ bundle install

☀️   $ rails db:create db:migrate

## Créateurs : La Fameuse Fine Équipe ##

Derrière cet énième repository stylé se cache...
* <a href="https://github.com/AniMoure">Anisoara</a>
* <a href="https://github.com/clydeat">Clyde</a>
* <a href="https://github.com/TheFSilver">François D.</a>
* <a href="https://github.com/skageraz">Jeremy Rak</a>
* <a href="https://github.com/Titouax">Titouan</a>

Made with ♥ in Paris
