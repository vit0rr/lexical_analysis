(** Lexer module for tokenizing Monkey language source code *)

type lexer = {
  input: string;
  position: int;
  read_position: int;
  ch: char;
}

(** Create a new lexer from input string *)
val new_lexer : string -> lexer

(** Generate list of tokens from input string *)
val generate_tokens : string -> Token.t list

(** Get next token and updated lexer state *)
val next_char : lexer -> lexer * Token.t 