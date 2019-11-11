%token <string>         IDENT
%token <string>         VAR
%token <string>         NUMBER

%token                  OPEN CLOSE IMPLIES BADTOK EOF

%type <string> main

%start main

%%

main :
    clauses EOF                         { $1 };

clauses :
    clause clauses                      { String.concat ".\n" [$1; $2]}
  | clause                              { String.concat "." [$1; ""] };

clause :  
    OPEN fact CLOSE                     { $2 }
  | OPEN rule CLOSE                     { $2 };
  
rule: 
    IMPLIES conclusion conditions       { String.concat "" [$2; " :-\n    "; $3] };

conclusion :
    OPEN fact CLOSE                     { $2 }
  | IDENT                               { $1 } ;

conditions :
  | OPEN fact CLOSE conditions          { String.concat ",\n    " [$2; $4] }
  | OPEN fact CLOSE                     { $2 } ;


fact :
    IDENT terms                         { String.concat "" [$1; "("; $2; ")"] };
    
terms :
    term terms                          { String.concat "" [$1; ", "; $2] }
  | term                                { $1 };

term :
    OPEN fact CLOSE                     { $2 }
  | IDENT                               { $1 }
  | VAR                                 { String.capitalize_ascii (String.sub $1 1 ((String.length $1) - 1)) }
  | NUMBER                              { $1 };
    
