type token =
  | EOS
  | ITI
  | NI of (int)
  | ZYU
  | HYAKU
  | SEN
  | MAN
  | OKU

open Parsing;;
let _ = parse_error;;
let yytransl_const = [|
  257 (* EOS *);
  258 (* ITI *);
  260 (* ZYU *);
  261 (* HYAKU *);
  262 (* SEN *);
  263 (* MAN *);
  264 (* OKU *);
    0|]

let yytransl_block = [|
  259 (* NI *);
    0|]

let yylhs = "\255\255\
\001\000\002\000\002\000\003\000\003\000\005\000\005\000\004\000\
\004\000\004\000\006\000\006\000\006\000\008\000\008\000\008\000\
\010\000\010\000\007\000\007\000\007\000\009\000\009\000\009\000\
\011\000\011\000\011\000\000\000"

let yylen = "\002\000\
\002\000\001\000\003\000\001\000\003\000\000\000\001\000\001\000\
\002\000\003\000\001\000\002\000\003\000\001\000\002\000\003\000\
\001\000\001\000\001\000\002\000\003\000\001\000\002\000\003\000\
\000\000\001\000\001\000\002\000"

let yydefred = "\000\000\
\000\000\000\000\017\000\000\000\000\000\000\000\000\000\028\000\
\000\000\002\000\000\000\004\000\008\000\011\000\014\000\000\000\
\000\000\000\000\026\000\027\000\015\000\000\000\000\000\012\000\
\022\000\000\000\000\000\009\000\019\000\001\000\000\000\000\000\
\016\000\013\000\010\000\000\000\023\000\000\000\020\000\007\000\
\005\000\003\000\000\000\024\000\021\000"

let yydgoto = "\002\000\
\008\000\009\000\010\000\011\000\012\000\013\000\028\000\014\000\
\029\000\015\000\025\000"

let yysindex = "\003\000\
\020\255\000\000\000\000\023\255\003\255\032\255\012\255\000\000\
\040\255\000\000\030\255\000\000\000\000\000\000\000\000\003\255\
\032\255\012\255\000\000\000\000\000\000\038\255\003\255\000\000\
\000\000\026\255\032\255\000\000\000\000\000\000\020\255\020\255\
\000\000\000\000\000\000\003\255\000\000\032\255\000\000\000\000\
\000\000\000\000\036\255\000\000\000\000"

let yyrindex = "\000\000\
\043\255\000\000\000\000\000\255\002\255\002\255\002\255\000\000\
\000\000\000\000\044\255\000\000\000\000\000\000\000\000\002\255\
\002\255\002\255\000\000\000\000\000\000\011\255\002\255\000\000\
\000\000\011\255\002\255\000\000\000\000\000\000\043\255\043\255\
\000\000\000\000\000\000\002\255\000\000\002\255\000\000\000\000\
\000\000\000\000\044\255\000\000\000\000"

let yygindex = "\000\000\
\000\000\000\000\014\000\008\000\016\000\000\000\030\000\000\000\
\250\255\000\000\253\255"

let yytablesize = 48
let yytable = "\024\000\
\018\000\021\000\025\000\001\000\019\000\020\000\018\000\018\000\
\025\000\025\000\034\000\027\000\033\000\019\000\026\000\023\000\
\027\000\027\000\027\000\037\000\039\000\003\000\004\000\005\000\
\006\000\007\000\016\000\017\000\018\000\036\000\038\000\045\000\
\044\000\019\000\022\000\023\000\031\000\032\000\040\000\043\000\
\030\000\036\000\031\000\006\000\007\000\042\000\041\000\035\000"

let yycheck = "\006\000\
\001\001\005\000\001\001\001\000\002\001\003\001\007\001\008\001\
\007\001\008\001\017\000\001\001\016\000\002\001\003\001\004\001\
\005\001\007\001\008\001\023\000\027\000\002\001\003\001\004\001\
\005\001\006\001\004\001\005\001\006\001\004\001\005\001\038\000\
\036\000\002\001\003\001\004\001\007\001\008\001\031\000\032\000\
\001\001\004\001\007\001\001\001\001\001\032\000\031\000\018\000"

let yynames_const = "\
  EOS\000\
  ITI\000\
  ZYU\000\
  HYAKU\000\
  SEN\000\
  MAN\000\
  OKU\000\
  "

let yynames_block = "\
  NI\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'oku) in
    Obj.repr(
# 10 "parser.mly"
                         ( _1 )
# 110 "parser.ml"
               : int))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'man) in
    Obj.repr(
# 13 "parser.mly"
        ( _1 )
# 117 "parser.ml"
               : 'oku))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'sen0) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'man) in
    Obj.repr(
# 14 "parser.mly"
                 ( _1 * 100000000 + _3 )
# 125 "parser.ml"
               : 'oku))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'sen) in
    Obj.repr(
# 16 "parser.mly"
        ( _1 )
# 132 "parser.ml"
               : 'man))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'sen0) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'sen) in
    Obj.repr(
# 17 "parser.mly"
                 ( _1 * 10000 + _3 )
# 140 "parser.ml"
               : 'man))
; (fun __caml_parser_env ->
    Obj.repr(
# 19 "parser.mly"
    ( 0 )
# 146 "parser.ml"
               : 'sen))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'sen0) in
    Obj.repr(
# 20 "parser.mly"
         ( _1 )
# 153 "parser.ml"
               : 'sen))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'hyaku0) in
    Obj.repr(
# 22 "parser.mly"
           ( _1 )
# 160 "parser.ml"
               : 'sen0))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'hyaku1) in
    Obj.repr(
# 23 "parser.mly"
               ( 1000 + _2 )
# 167 "parser.ml"
               : 'sen0))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : int) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'hyaku1) in
    Obj.repr(
# 24 "parser.mly"
                  ( _1 * 1000 + _3 )
# 175 "parser.ml"
               : 'sen0))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'zyu0) in
    Obj.repr(
# 26 "parser.mly"
         ( _1 )
# 182 "parser.ml"
               : 'hyaku0))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'zyu1) in
    Obj.repr(
# 27 "parser.mly"
               ( 100 + _2 )
# 189 "parser.ml"
               : 'hyaku0))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : int) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'zyu1) in
    Obj.repr(
# 28 "parser.mly"
                  ( _1 * 100 + _3 )
# 197 "parser.ml"
               : 'hyaku0))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'iti0) in
    Obj.repr(
# 30 "parser.mly"
         ( _1 )
# 204 "parser.ml"
               : 'zyu0))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'iti1) in
    Obj.repr(
# 31 "parser.mly"
             ( 10 + _2 )
# 211 "parser.ml"
               : 'zyu0))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : int) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'iti1) in
    Obj.repr(
# 32 "parser.mly"
                ( _1 * 10 + _3 )
# 219 "parser.ml"
               : 'zyu0))
; (fun __caml_parser_env ->
    Obj.repr(
# 34 "parser.mly"
        ( 1 )
# 225 "parser.ml"
               : 'iti0))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 35 "parser.mly"
       ( _1 )
# 232 "parser.ml"
               : 'iti0))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'zyu1) in
    Obj.repr(
# 37 "parser.mly"
         ( _1 )
# 239 "parser.ml"
               : 'hyaku1))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'zyu1) in
    Obj.repr(
# 38 "parser.mly"
               ( 100 + _2 )
# 246 "parser.ml"
               : 'hyaku1))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : int) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'zyu1) in
    Obj.repr(
# 39 "parser.mly"
                  ( _1 * 100 + _3 )
# 254 "parser.ml"
               : 'hyaku1))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'iti1) in
    Obj.repr(
# 41 "parser.mly"
         ( _1 )
# 261 "parser.ml"
               : 'zyu1))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'iti1) in
    Obj.repr(
# 42 "parser.mly"
             ( 10 + _2 )
# 268 "parser.ml"
               : 'zyu1))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : int) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'iti1) in
    Obj.repr(
# 43 "parser.mly"
                ( _1 * 10 + _3 )
# 276 "parser.ml"
               : 'zyu1))
; (fun __caml_parser_env ->
    Obj.repr(
# 45 "parser.mly"
    ( 0 )
# 282 "parser.ml"
               : 'iti1))
; (fun __caml_parser_env ->
    Obj.repr(
# 46 "parser.mly"
        ( 1 )
# 288 "parser.ml"
               : 'iti1))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 47 "parser.mly"
       ( _1 )
# 295 "parser.ml"
               : 'iti1))
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
   (Parsing.yyparse yytables 1 lexfun lexbuf : int)
