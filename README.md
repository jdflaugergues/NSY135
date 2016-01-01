# [NSY135] Applications orientées données - patrons, framework, ORM

Ce dépot concerne les exercices à effectuer par l'unité d'enseignement NSY135 - Applications orientées données - patrons, framework, ORM proposé par le CNAM. Ce cours est disponible [en ligne](http://orm.bdpedia.fr/)


##Chapitre 11 - [Le langage HQL](http://orm.bdpedia.fr/HQL.html)

###S3: Les jointures
#####Exercice: pour quelques jointures de plus

**Trouvez les films avec l’acteur Bruce Willis.**
```
SELECT film.titre
FROM Film film
JOIN film.acteurs acteur
WHERE acteur.nom = 'Willis' AND acteur.prenom='Bruce'
```
**Affichez les noms des acteurs ayant joué le rôle de ‘Jack Dawson’, et le metteur en scène qui les a dirigés.**
```
SELECT acteur.prenom,acteur.nom, film.realisateur.prenom, film.realisateur.nom
FROM Film film
JOIN film.roles as role
JOIN film.acteurs as acteur
WHERE role.nom = 'Jack Dawson'
AND acteur.nom = role.pk.acteur.nom
```
**Affichez la liste des metteurs en scène, et les films qu’ils ont réalisés**
```
SELECT realisateur.prenom,realisateur.nom, film.titre
FROM Film film
RIGHT JOIN film.realisateur as realisateur
ORDER BY realisateur.prenom,realisateur.nom
```

**Affichez les films dans lesquels le metteur en scène est également un acteur (pensez: “HQL, langage objet”!)**
```
SELECT film.titre, acteur.prenom,acteur.nom
FROM Film film
JOIN film.acteurs as acteur
WHERE acteur.nom = film.realisateur.nom AND acteur.prenom = film.realisateur.prenom
ORDER BY acteur.prenom,acteur.nom
```
**Affichez la liste des genres, et pour chaque genre les films correspondant.**
```
SELECT genre.code, film.titre
FROM Film film
RIGHT JOIN film.genre as genre
ORDER BY genre.code
```
