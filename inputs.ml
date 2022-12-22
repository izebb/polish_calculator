open Base
open Stdio

let read_expression  () = 
    let line = In_channel.input_line In_channel.stdin in
    match line with
    | None -> None
    | Some str -> Some (String.split ~on: ' ' str 
        |> List.filter ~f: (fun i -> not (String.equal i  "")) 
        |> List.rev)
