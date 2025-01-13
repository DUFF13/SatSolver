(* Types et fonctions exposés *)
open Sat_solver

val formula : string -> cnf
(** Lit une formule CNF depuis un fichier donné. 

    Le fichier doit être au format DIMACS où :
    - Les lignes commençant par 'p' ou 'c' sont ignorées.
    - Les clauses sont définies par des entiers séparés par des espaces, 
      avec un '0' marquant la fin de chaque clause.
    - Les littéraux sont convertis en leur représentation interne.

    @param filename Chemin vers le fichier contenant la formule CNF.
    @return Une formule CNF sous forme d'une liste de clauses.
*)
