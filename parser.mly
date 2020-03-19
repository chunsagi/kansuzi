/* File parser.mly */
%token EOS
%token ITI
%token <int> NI
%token ZYU HYAKU SEN MAN OKU
%start main             /* the entry point */
%type <int> main
%%
main:
    oku EOS              { $1 }
;
oku:
    man { $1 }
  | sen0 OKU man { $1 * 100000000 + $3 }
man:
    sen { $1 }
  | sen0 MAN sen { $1 * 10000 + $3 }
sen:
    { 0 }
  | sen0 { $1 }
sen0:
    hyaku0 { $1 }
  | SEN hyaku1 { 1000 + $2 }
  | NI SEN hyaku1 { $1 * 1000 + $3 }
hyaku0:
    zyu0 { $1 }
  | HYAKU zyu1 { 100 + $2 }
  | NI HYAKU zyu1 { $1 * 100 + $3 }
zyu0:
    iti0 { $1 }
  | ZYU iti1 { 10 + $2 }
  | NI ZYU iti1 { $1 * 10 + $3 }
iti0:
  | ITI { 1 }
  | NI { $1 }
hyaku1:
    zyu1 { $1 }
  | HYAKU zyu1 { 100 + $2 }
  | NI HYAKU zyu1 { $1 * 100 + $3 }
zyu1:
    iti1 { $1 }
  | ZYU iti1 { 10 + $2 }
  | NI ZYU iti1 { $1 * 10 + $3 }
iti1:
    { 0 }
  | ITI { 1 }
  | NI { $1 }
;