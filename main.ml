open Stdio

let rec main () = 
    match  Inputs.read_expression () with
    | Some ex -> 
            let s = Eval.evaluates ex in
            print_endline s;
            main ()
    | None -> print_endline "Please enter an expression"; 
        main ()

let () = 
    print_endline "Welcome to polish calculator";
    print_endline "Enter an expression";
    main () 
