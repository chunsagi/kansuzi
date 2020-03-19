(* File calc.ml *)
let _ =
  try
    while true do
      let line = read_line () in
      let lexbuf = Lexing.from_string line in
      try
        let result = Parser.main Lexer.token lexbuf in
        Printf.printf "%s => %d\n" line result
      with Parsing.Parse_error -> Printf.printf "%s => 不正\n" line
    done
  with End_of_file -> exit 0
