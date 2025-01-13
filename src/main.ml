(* Ouverture des modules nécessaires *)
open Sat_solver
open Dimacs_to_cnf
open Quine_dpll

let () =
  (* Chemin vers le fichier DIMACS (ajustez si nécessaire) *)
  let filename = "uf20-91/uf20-01.cnf" in

  (* Chargement de la formule CNF depuis le fichier *)
  let cnf_formula = formula filename in

  (* Résolution avec l'algorithme DPLL *)
  let result, assignment_clause = dpll cnf_formula in

  (* Résultat final *)
  if result then begin
    print_endline "La formule est satisfiable.";
    print_endline "Assignation des littéraux :";
    List.iter (fun lit ->
      Printf.printf "Littéral %d : %b\n" 
        (int_of_litteral lit)
        (match lit with
         | Var _ -> true
         | NVar _ -> false)
    ) assignment_clause;
  end else
    print_endline "La formule n'est pas satisfiable."
