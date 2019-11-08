{
open Parser 
}

rule token = 
  parse
      ['A'-'Z''a'-'z']['A'-'Z''a'-'z''0'-'9''_']* as s
                        { IDENT s }
    | ['0'-'9']+ as s   { NUMBER s }
    | "?"['A'-'Z''a'-'z''0'-'9''_']* as s
                        { VAR s }    
    | "("               { OPEN }
    | ")"               { CLOSE }
    | "<="              { IMPLIES }
    | [' ''\t']+        { token lexbuf }
    | "\r"              { token lexbuf }
    | "\n"              { token lexbuf }
    | ";"               { comment lexbuf; token lexbuf }
    | _                 { BADTOK }
    | eof               { EOF }
    
and comment = 
  parse
    | "\n"              { () }
    | _                 { comment lexbuf }
    | eof               { () }


