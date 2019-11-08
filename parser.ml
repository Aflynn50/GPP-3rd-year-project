type token =
  | IDENT of (string)
  | VAR of (string)
  | NUMBER of (string)
  | OPEN
  | CLOSE
  | IMPLIES
  | BADTOK
  | EOF

open Parsing;;
let _ = parse_error;;
let yytransl_const = [|
  260 (* OPEN *);
  261 (* CLOSE *);
  262 (* IMPLIES *);
  263 (* BADTOK *);
    0 (* EOF *);
    0|]

let yytransl_block = [|
  257 (* IDENT *);
  258 (* VAR *);
  259 (* NUMBER *);
    0|]

let yylhs = "\255\255\
\001\000\002\000\002\000\003\000\003\000\005\000\006\000\006\000\
\004\000\007\000\007\000\008\000\008\000\008\000\008\000\000\000"

let yylen = "\002\000\
\002\000\002\000\001\000\003\000\003\000\005\000\004\000\003\000\
\002\000\002\000\001\000\003\000\001\000\001\000\001\000\002\000"

let yydefred = "\000\000\
\000\000\000\000\000\000\016\000\000\000\000\000\000\000\000\000\
\000\000\000\000\001\000\002\000\013\000\014\000\015\000\000\000\
\009\000\000\000\000\000\004\000\005\000\000\000\010\000\000\000\
\012\000\000\000\000\000\006\000\000\000\000\000\007\000"

let yydgoto = "\002\000\
\004\000\005\000\006\000\009\000\010\000\028\000\017\000\018\000"

let yysindex = "\001\000\
\001\255\000\000\000\255\000\000\004\000\001\255\006\255\008\255\
\009\255\010\255\000\000\000\000\000\000\000\000\000\000\012\255\
\000\000\006\255\012\255\000\000\000\000\011\255\000\000\013\255\
\000\000\015\255\012\255\000\000\016\255\015\255\000\000"

let yyrindex = "\000\000\
\000\000\000\000\000\000\000\000\000\000\017\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\017\255\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\018\255\000\000"

let yygindex = "\000\000\
\000\000\014\000\000\000\240\255\000\000\250\255\007\000\000\000"

let yytablesize = 25
let yytable = "\022\000\
\007\000\001\000\024\000\011\000\003\000\008\000\013\000\014\000\
\015\000\016\000\029\000\019\000\007\000\020\000\021\000\025\000\
\003\000\026\000\027\000\012\000\030\000\011\000\008\000\031\000\
\023\000"

let yycheck = "\016\000\
\001\001\001\000\019\000\000\000\004\001\006\001\001\001\002\001\
\003\001\004\001\027\000\004\001\001\001\005\001\005\001\005\001\
\000\000\005\001\004\001\006\000\005\001\005\001\005\001\030\000\
\018\000"

let yynames_const = "\
  OPEN\000\
  CLOSE\000\
  IMPLIES\000\
  BADTOK\000\
  EOF\000\
  "

let yynames_block = "\
  IDENT\000\
  VAR\000\
  NUMBER\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'clauses) in
    Obj.repr(
# 14 "parser.mly"
                                        ( _1 )
# 94 "parser.ml"
               : string))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'clause) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'clauses) in
    Obj.repr(
# 17 "parser.mly"
                                        ( String.concat ".\n" [_1; _2])
# 102 "parser.ml"
               : 'clauses))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'clause) in
    Obj.repr(
# 18 "parser.mly"
                                        ( _1 )
# 109 "parser.ml"
               : 'clauses))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'fact) in
    Obj.repr(
# 21 "parser.mly"
                                        ( _2 )
# 116 "parser.ml"
               : 'clause))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'rule) in
    Obj.repr(
# 22 "parser.mly"
                                        ( _2 )
# 123 "parser.ml"
               : 'clause))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 2 : 'fact) in
    let _5 = (Parsing.peek_val __caml_parser_env 0 : 'conditions) in
    Obj.repr(
# 25 "parser.mly"
                                        ( String.concat "" [_3; " :-\n    "; _5] )
# 131 "parser.ml"
               : 'rule))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : 'fact) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : 'conditions) in
    Obj.repr(
# 28 "parser.mly"
                                        ( String.concat ",\n    " [_2; _4] )
# 139 "parser.ml"
               : 'conditions))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'fact) in
    Obj.repr(
# 29 "parser.mly"
                                        ( _2 )
# 146 "parser.ml"
               : 'conditions))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : string) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'terms) in
    Obj.repr(
# 33 "parser.mly"
                                        ( String.concat "" [_1; "("; _2; ")"] )
# 154 "parser.ml"
               : 'fact))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'term) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'terms) in
    Obj.repr(
# 36 "parser.mly"
                                        ( String.concat "" [_1; ", "; _2] )
# 162 "parser.ml"
               : 'terms))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'term) in
    Obj.repr(
# 37 "parser.mly"
                                        ( _1 )
# 169 "parser.ml"
               : 'terms))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'fact) in
    Obj.repr(
# 40 "parser.mly"
                                        ( _2 )
# 176 "parser.ml"
               : 'term))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 41 "parser.mly"
                                        ( _1 )
# 183 "parser.ml"
               : 'term))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 42 "parser.mly"
                                        ( String.capitalize_ascii (String.sub _1 1 ((String.length _1) - 1)) )
# 190 "parser.ml"
               : 'term))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 43 "parser.mly"
                                        ( _1 )
# 197 "parser.ml"
               : 'term))
(* Entry main *)
; (fun __caml_parser_env -> raise (Parsing.YYexit (Parsing.peek_val __caml_parser_env 0)))
|]
let yytables =
  { Parsing.actions=yyact;
    Parsing.transl_const=yytransl_const;
    Parsing.transl_block=yytransl_block;
    Parsing.lhs=yylhs;
    Parsing.len=yylen;
    Parsing.defred=yydefred;
    Parsing.dgoto=yydgoto;
    Parsing.sindex=yysindex;
    Parsing.rindex=yyrindex;
    Parsing.gindex=yygindex;
    Parsing.tablesize=yytablesize;
    Parsing.table=yytable;
    Parsing.check=yycheck;
    Parsing.error_function=parse_error;
    Parsing.names_const=yynames_const;
    Parsing.names_block=yynames_block }
let main (lexfun : Lexing.lexbuf -> token) (lexbuf : Lexing.lexbuf) =
   (Parsing.yyparse yytables 1 lexfun lexbuf : string)
