let is_an_operator =  function
    | "+" | "-" | "/" | "*"-> true
    | _ -> false
let get_operators_fun = function
    | "+" -> Some ( +. )
    | "-" -> Some ( -. )
    | "/" -> Some ( /. )
    | "*" -> Some ( *. )
    | _ -> None
