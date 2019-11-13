open Printf

let _ =
  let gdl = "rules.gdl" and pl = "rules.pl" in
    let ic = open_in gdl and oc = open_out pl in
      let lexbuf = Lexing.from_channel ic in
      while true do
        let result = Parser.main Lexer.token lexbuf in
        close_in ic; Printf.fprintf oc "%s\n" result; close_out oc;
      done
