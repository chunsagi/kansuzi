(* File lexer.mll *)
{
open Parser        (* The type token is defined in parser.mli *)
}
rule token = parse
    [' ' '\t']     { token lexbuf }     (* skip blanks *)
  | "一" { ITI }
  | "二" { NI 2 }
  | "三" { NI 3 }
  | "四" { NI 4 }
  | "五" { NI 5 }
  | "六" { NI 6 }
  | "七" { NI 7 }
  | "八" { NI 8 }
  | "九" { NI 9 }
  | "十" { ZYU }
  | "百" { HYAKU }
  | "千" { SEN }
  | "万" { MAN }
  | "億" { OKU }
  | eof            { EOS }