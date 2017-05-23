type token =
  | EOF
  | LPAR
  | RPAR
  | ARROW
  | VNAME of (string)
  | FNAME of (string)
  | BAD_CHAR
  | EQ
  | SEMI_COLON

open Parsing;;
let _ = parse_error;;
# 19 "completion/cparser.mly"
  open Term;;
  open Symb;;
  open Var;;
  open Rule;;
  open Equation;;
# 21 "completion/cparser.ml"
let yytransl_const = [|
    0 (* EOF *);
  257 (* LPAR *);
  258 (* RPAR *);
  259 (* ARROW *);
  262 (* BAD_CHAR *);
  263 (* EQ *);
  264 (* SEMI_COLON *);
    0|]

let yytransl_block = [|
  260 (* VNAME *);
  261 (* FNAME *);
    0|]

let yylhs = "\255\255\
\006\000\006\000\006\000\005\000\004\000\004\000\004\000\003\000\
\002\000\002\000\001\000\001\000\008\000\008\000\007\000\007\000\
\000\000\000\000\000\000\000\000\000\000\000\000"

let yylen = "\002\000\
\000\000\001\000\003\000\003\000\000\000\001\000\003\000\003\000\
\001\000\002\000\001\000\004\000\001\000\001\000\001\000\002\000\
\002\000\002\000\002\000\002\000\002\000\002\000"

let yydefred = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\013\000\014\000\017\000\011\000\000\000\009\000\018\000\000\000\
\019\000\000\000\020\000\000\000\021\000\000\000\022\000\000\000\
\000\000\010\000\000\000\000\000\000\000\000\000\000\000\016\000\
\008\000\007\000\004\000\003\000\012\000"

let yydgoto = "\007\000\
\014\000\016\000\018\000\019\000\022\000\023\000\026\000\012\000"

let yysindex = "\012\000\
\001\255\021\255\021\255\021\255\021\255\021\255\000\000\006\255\
\000\000\000\000\000\000\000\000\001\255\000\000\000\000\016\255\
\000\000\012\255\000\000\014\255\000\000\019\255\000\000\001\255\
\001\255\000\000\021\255\021\255\021\255\021\255\026\255\000\000\
\000\000\000\000\000\000\000\000\000\000"

let yyrindex = "\000\000\
\000\000\000\000\000\000\030\000\000\000\033\000\000\000\000\000\
\000\000\000\000\000\000\000\000\003\000\000\000\000\000\000\000\
\000\000\034\000\000\000\000\000\000\000\035\000\000\000\000\000\
\001\000\000\000\000\000\030\000\000\000\033\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000"

let yygindex = "\000\000\
\255\255\002\000\036\000\008\000\032\000\010\000\241\255\000\000"

let yytablesize = 267
let yytable = "\011\000\
\015\000\008\000\014\000\015\000\009\000\010\000\020\000\020\000\
\031\000\032\000\024\000\025\000\001\000\002\000\003\000\004\000\
\005\000\006\000\027\000\028\000\029\000\008\000\025\000\025\000\
\009\000\013\000\030\000\037\000\033\000\005\000\035\000\020\000\
\001\000\006\000\002\000\034\000\021\000\000\000\017\000\036\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\015\000\015\000\000\000\014\000\000\000\015\000\
\015\000\014\000\014\000"

let yycheck = "\001\000\
\000\000\001\001\000\000\002\000\004\001\005\001\005\000\006\000\
\024\000\025\000\005\001\013\000\001\000\002\000\003\000\004\000\
\005\000\006\000\003\001\008\001\007\001\001\001\024\000\025\000\
\004\001\005\001\008\001\002\001\027\000\000\000\029\000\030\000\
\000\000\000\000\000\000\028\000\005\000\255\255\003\000\030\000\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\002\001\003\001\255\255\003\001\255\255\007\001\
\008\001\007\001\008\001"

let yynames_const = "\
  EOF\000\
  LPAR\000\
  RPAR\000\
  ARROW\000\
  BAD_CHAR\000\
  EQ\000\
  SEMI_COLON\000\
  "

let yynames_block = "\
  VNAME\000\
  FNAME\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    Obj.repr(
# 46 "completion/cparser.mly"
                                  ( EqnSet.empty )
# 168 "completion/cparser.ml"
               : Equation.EqnSet.t))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : Equation.eqn) in
    Obj.repr(
# 47 "completion/cparser.mly"
                                  ( EqnSet.singleton _1 )
# 175 "completion/cparser.ml"
               : Equation.EqnSet.t))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : Equation.eqn) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : Equation.EqnSet.t) in
    Obj.repr(
# 48 "completion/cparser.mly"
                                  ( EqnSet.add _1 _3 )
# 183 "completion/cparser.ml"
               : Equation.EqnSet.t))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : Term.term) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : Term.term) in
    Obj.repr(
# 52 "completion/cparser.mly"
                         ( Equation.mk (_1, _3) )
# 191 "completion/cparser.ml"
               : Equation.eqn))
; (fun __caml_parser_env ->
    Obj.repr(
# 56 "completion/cparser.mly"
                           ( RulSet.empty )
# 197 "completion/cparser.ml"
               : Rule.RulSet.t))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : Rule.rule) in
    Obj.repr(
# 57 "completion/cparser.mly"
                           ( RulSet.singleton _1 )
# 204 "completion/cparser.ml"
               : Rule.RulSet.t))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : Rule.rule) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : Rule.RulSet.t) in
    Obj.repr(
# 58 "completion/cparser.mly"
                           ( RulSet.add _1 _3 )
# 212 "completion/cparser.ml"
               : Rule.RulSet.t))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : Term.term) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : Term.term) in
    Obj.repr(
# 62 "completion/cparser.mly"
                            ( Rule.mk (_1, _3) )
# 220 "completion/cparser.ml"
               : Rule.rule))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : Term.term) in
    Obj.repr(
# 66 "completion/cparser.mly"
                ( _1 )
# 227 "completion/cparser.ml"
               : Term.term))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : string) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'terms) in
    Obj.repr(
# 67 "completion/cparser.mly"
                ( App (symbol_of_string _1, _2) )
# 235 "completion/cparser.ml"
               : Term.term))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'name) in
    Obj.repr(
# 71 "completion/cparser.mly"
                          ( _1 )
# 242 "completion/cparser.ml"
               : Term.term))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'terms) in
    Obj.repr(
# 72 "completion/cparser.mly"
                          ( App (symbol_of_string _2, _3) )
# 250 "completion/cparser.ml"
               : Term.term))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 76 "completion/cparser.mly"
          ( Var (var_of_string _1) )
# 257 "completion/cparser.ml"
               : 'name))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 77 "completion/cparser.mly"
          ( App (symbol_of_string _1, []) )
# 264 "completion/cparser.ml"
               : 'name))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : Term.term) in
    Obj.repr(
# 81 "completion/cparser.mly"
               ( [ _1 ] )
# 271 "completion/cparser.ml"
               : 'terms))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : Term.term) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'terms) in
    Obj.repr(
# 82 "completion/cparser.mly"
               ( _1 :: _2 )
# 279 "completion/cparser.ml"
               : 'terms))
(* Entry term *)
; (fun __caml_parser_env -> raise (Parsing.YYexit (Parsing.peek_val __caml_parser_env 0)))
(* Entry top_term *)
; (fun __caml_parser_env -> raise (Parsing.YYexit (Parsing.peek_val __caml_parser_env 0)))
(* Entry rule *)
; (fun __caml_parser_env -> raise (Parsing.YYexit (Parsing.peek_val __caml_parser_env 0)))
(* Entry rules *)
; (fun __caml_parser_env -> raise (Parsing.YYexit (Parsing.peek_val __caml_parser_env 0)))
(* Entry equation *)
; (fun __caml_parser_env -> raise (Parsing.YYexit (Parsing.peek_val __caml_parser_env 0)))
(* Entry equations *)
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
let term (lexfun : Lexing.lexbuf -> token) (lexbuf : Lexing.lexbuf) =
   (Parsing.yyparse yytables 1 lexfun lexbuf : Term.term)
let top_term (lexfun : Lexing.lexbuf -> token) (lexbuf : Lexing.lexbuf) =
   (Parsing.yyparse yytables 2 lexfun lexbuf : Term.term)
let rule (lexfun : Lexing.lexbuf -> token) (lexbuf : Lexing.lexbuf) =
   (Parsing.yyparse yytables 3 lexfun lexbuf : Rule.rule)
let rules (lexfun : Lexing.lexbuf -> token) (lexbuf : Lexing.lexbuf) =
   (Parsing.yyparse yytables 4 lexfun lexbuf : Rule.RulSet.t)
let equation (lexfun : Lexing.lexbuf -> token) (lexbuf : Lexing.lexbuf) =
   (Parsing.yyparse yytables 5 lexfun lexbuf : Equation.eqn)
let equations (lexfun : Lexing.lexbuf -> token) (lexbuf : Lexing.lexbuf) =
   (Parsing.yyparse yytables 6 lexfun lexbuf : Equation.EqnSet.t)
;;
# 86 "completion/cparser.mly"
(*
 Local Variables:
  compile-command: "cd ..; make"
  End:
*)
# 330 "completion/cparser.ml"
