type token =
  | IDENT of (string)
  | VAR of (string)
  | NUMBER of (string)
  | OPEN
  | CLOSE
  | IMPLIES
  | BADTOK
  | EOF

val main :
  (Lexing.lexbuf  -> token) -> Lexing.lexbuf -> string
