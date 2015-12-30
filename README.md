# NSY135
[NSY135] Applications orientées données - patrons, framework, ORM



##Exercice: pour quelques jointures de plus

###Trouvez les films avec l’acteur Bruce Willis.
```
select film.titre
from Film film
join film.acteurs acteur
where acteur.nom = 'Willis' and acteur.prenom='Bruce'
```
###Affichez les noms des acteurs ayant joué le rôle de ‘Jack Dawson’, et le metteur en scène qui les a dirigés.
```
select acteur.prenom,acteur.nom, film.realisateur.prenom, film.realisateur.nom
from Film film
join film.roles as role
join film.acteurs as acteur
where role.nom = 'Jack Dawson'
and acteur.nom = role.pk.acteur.nom
```
###Affichez la liste des metteurs en scène, et les films qu’ils ont réalisés
```
select realisateur.prenom,realisateur.nom, film.titre
from Film film
right join film.realisateur as realisateur
order by realisateur.prenom,realisateur.nom
```

###Affichez les films dans lesquels le metteur en scène est également un acteur (pensez: “HQL, langage objet”!)
```
select film.titre, acteur.prenom,acteur.nom
from Film film
join film.acteurs as acteur
where acteur.nom = film.realisateur.nom and acteur.prenom = film.realisateur.prenom
order by acteur.prenom,acteur.nom
```
###Affichez la liste des genres, et pour chaque genre les films correspondant.
```
select genre.code, film.titre
from Film film
right join film.genre as genre
order by genre.code
```
