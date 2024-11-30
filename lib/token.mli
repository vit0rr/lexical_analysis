(** Token types for the Monkey language *)

type t =
| ILLEGAL
| EOF
(* Identifiers and literals *)
| IDENT of string
| INT of string
(* Operators *)
| ASSIGN
| PLUS
| MINUS
| BANG
| ASTERISK
| SLASH
| LT
| GT
(* -- Delimiters *)
| COMMA
| SEMICOLON
| LPAREN
| RPAREN
| LBRACE
| RBRACE
(* -- Keywords *)
| FUNCTION
| LET
| TRUE
| FALSE
| IF
| ELSE
| RETURN
| EQ
| NOT_EQ

(** Convert string to identifier token *)
val lookupIdent : string -> t

(** Convert token to string representation *)
val token_to_string : t -> string

(** Check if two tokens are equal *)
val tokens_eq : t -> t -> bool

(** Pretty print token *)
val pretty_print : Format.formatter -> t -> unit

