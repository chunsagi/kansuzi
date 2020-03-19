type token =
  | EOS
  | ITI
  | NI of (int)
  | ZYU
  | HYAKU
  | SEN
  | MAN
  | OKU

val main :
  (Lexing.lexbuf  -> token) -> Lexing.lexbuf -> int
