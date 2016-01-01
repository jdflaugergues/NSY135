# [NSY135] Applications orientées données - patrons, framework, ORM

Ce dépot concerne les exercices à effectuer par l'unité d'enseignement NSY135 - Applications orientées données - patrons, framework, ORM proposé par le CNAM. Ce cours est disponible [en ligne](http://orm.bdpedia.fr/).


##Chapitre 11 - [Le langage HQL](http://orm.bdpedia.fr/HQL.html)

###S2: base de HQL
#####Exercice: expression de restrictions

**1.Trouver lez films dont le titre comprend le mot ‘parrain’**
```
SELECT film.titre
FROM Film film
WHERE film.titre LIKE '%parrain%'
```
**2.Trouvez tous les drames**
```
SELECT film.titre, film.genre.code
FROM Film film
WHERE film.genre.code = 'Drame'
```
**3.Trouvez tous les artistes nés avant 1970**
```
SELECT artiste.prenom, artiste.nom, artiste.anneeNaissance
FROM Artiste artiste
WHERE artiste.anneeNaissance < 1970
ORDER BY artiste.anneeNaissance
```
**4.Trouvez tous les réalisateurs (c-à-d. les artistes qui ont mis en scène un film)**
```
SELECT DISTINCT film.realisateur.prenom, film.realisateur.nom
FROM Film film
ORDER BY film.realisateur.prenom, film.realisateur.nom
```

###S3: Les jointures
#####Exercice: pour quelques jointures de plus

**1. Trouvez les films avec l’acteur Bruce Willis.**
```
SELECT film.titre
FROM Film film
JOIN film.acteurs acteur
WHERE acteur.nom = 'Willis' AND acteur.prenom='Bruce'
```
**2. Affichez les noms des acteurs ayant joué le rôle de ‘Jack Dawson’, et le metteur en scène qui les a dirigés.**
```
SELECT acteur.prenom,acteur.nom, film.realisateur.prenom, film.realisateur.nom
FROM Film film
JOIN film.roles as role
JOIN film.acteurs as acteur
WHERE role.nom = 'Jack Dawson'
AND acteur.nom = role.pk.acteur.nom
```
**3. Affichez la liste des metteurs en scène, et les films qu’ils ont réalisés**
```
SELECT realisateur.prenom,realisateur.nom, film.titre
FROM Film film
RIGHT JOIN film.realisateur as realisateur
ORDER BY realisateur.prenom,realisateur.nom
```

**4. Affichez les films dans lesquels le metteur en scène est également un acteur (pensez: “HQL, langage objet”!)**
```
SELECT film.titre, acteur.prenom,acteur.nom
FROM Film film
JOIN film.acteurs as acteur
WHERE acteur.nom = film.realisateur.nom AND acteur.prenom = film.realisateur.prenom
ORDER BY acteur.prenom,acteur.nom
```
**5. Affichez la liste des genres, et pour chaque genre les films correspondant.**
```
SELECT genre.code, film.titre
FROM Film film
RIGHT JOIN film.genre as genre
ORDER BY genre.code
```
>>>>>>> 11_le_langage_HQL
