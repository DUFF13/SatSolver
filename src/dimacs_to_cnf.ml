open Sat_solver
  
let formula (filename : string) : cnf =
  let x = open_in filename in
  let f = ref [] in
  let b = ref true in
  try
    while !b do
      let line = input_line x in
      match line.[0] with
      | '%' -> b := false  (* Fin de la partie clauses *)
      | 'p' | 'c' -> ()    (* Ignorer les métadonnées ou commentaires *)
      | _ ->
        (* Séparer les éléments de la ligne et convertir en entiers *)
        let line_list = List.filter (fun s -> s <> "") (String.split_on_char ' ' line) in
        let literals = List.filter_map int_of_string_opt line_list in
        (* Construire une clause en excluant le marqueur de fin de clause "0" *)
        let c = List.map litteral_of_int (List.filter (fun x -> x <> 0) literals) in
        f := c :: !f
    done;
    close_in x;
    !f
  with
  | End_of_file ->
      close_in x;
      !f;;


