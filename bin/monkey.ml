open Monkey_lib
include Lexer
include Token

let input = "let five = 5;"
let tokens = Lexer.generate_tokens input |> List.map Token.token_to_string
let () = tokens |> List.iter (fun token -> print_endline token)
