SAT Solver
==========

Description
-----------
Ce projet implémente un solveur SAT capable de résoudre des formules logiques exprimées au format CNF (Conjunctive Normal Form). 
Il prend en entrée des fichiers au format DIMACS, un standard utilisé pour décrire des problèmes d'informatique fondamentale, et utilise un algorithme DPLL 
(Quine-DPLL) pour déterminer si la formule est satisfiable.

Structure du projet
-------------------
- **src/sat_solver.ml et src/sat_solver.mli** : Définition des types et fonctions de base pour manipuler les littéraux, clauses et formules CNF.
- **src/dimacs_to_cnf.ml et src/dimacs_to_cnf.mli** : Lecture des fichiers au format DIMACS et conversion en CNF.
- **src/quine_dpll.ml et src/quine_dpll.mli** : Implémentation de l'algorithme DPLL pour résoudre les formules CNF.
- **src/main.ml** : Point d'entrée du programme, permettant de charger une formule CNF et de la résoudre.
- **Makefile** : Automatisation de la compilation et de l'exécution.

Format DIMACS attendu
---------------------
Le solveur accepte des fichiers au format DIMACS standard, qui contiennent :
1. Une ligne commençant par `p cnf <nb_variables> <nb_clauses>` décrivant le nombre de variables et de clauses.
2. Les clauses sont définies par des entiers séparés par des espaces, avec un `0` marquant la fin de chaque clause.
   - Un entier positif représente une variable.
   - Un entier négatif représente la négation d'une variable.

Exemple d'entrée :
```
p cnf 3 3
1 -3 0
-1 2 0
2 -3 3 0
```

Compilation et exécution
------------------------
1. **Compilation** :
   Utilisez le `Makefile` pour compiler le projet :
   ```
   make
   ```
   Cela génère l'exécutable `sat_solver`.

2. **Exécution** :
   Lancez le solveur avec un fichier DIMACS en entrée :
   ```
   ./sat_solver
   ```

3. **Nettoyage** :
   Pour supprimer les fichiers compilés, utilisez :
   ```
   make clean
   ```
   Pour tout nettoyer (y compris l'exécutable), utilisez :
   ```
   make mrproper
   ```

Fonctionnalités
---------------
- Lecture de fichiers DIMACS et conversion en CNF.
- Résolution de la formule à l'aide de l'algorithme DPLL.
- Affichage des résultats (satisfiable ou insatisfiable) et des assignations de variables dans le cas satisfiable.


Exécution :
```
./sat_solver
```
