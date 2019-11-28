To compile parser run ocamllex lexer.mll && ocamlyacc parser.mly && ocamlc -c parser.mli && ocamlc -c lexer.ml && ocamlc -c parser.ml && ocamlc -c main.ml && ocamlc -o main lexer.cmo parser.cmo main.cmo 
To use it run ./main then type in the expression you want to parse and press Ctrl+D and the parsed result will be returned. 
To see parser debugging set the enviromental variable  export OCAMLRUNPARAM='p'
Even though it produces an error the program still seems to work fine

**Add parsing for the 'or' keyword
