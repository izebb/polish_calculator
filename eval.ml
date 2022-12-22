open Base

let evaluates list_expr = 
    let rec aux stack l =
        match l with
        | [] -> stack
        | a::b when Parse.is_an_operator a -> 
                aux (let operator = 
                        match Parse.get_operators_fun a with
                        | Some op -> op
                        | None -> failwith "Invalid operator"
                      in
                      let result = 
                          match stack with
                          | [] | [_] -> failwith "Invalid expression"
                          | c::d::e -> let re = operator (Float.of_string c) (Float.of_string d) in
                          (Float.to_string re):: e
                      in
                      result) b

        | a::b -> aux (a::stack) b
        in
        match aux [] list_expr with
        | [x] -> x
        | _ -> failwith "invalid expression"
