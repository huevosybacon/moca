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

val term :
  (Lexing.lexbuf  -> token) -> Lexing.lexbuf -> Term.term
val top_term :
  (Lexing.lexbuf  -> token) -> Lexing.lexbuf -> Term.term
val rule :
  (Lexing.lexbuf  -> token) -> Lexing.lexbuf -> Rule.rule
val rules :
  (Lexing.lexbuf  -> token) -> Lexing.lexbuf -> Rule.RulSet.t
val equation :
  (Lexing.lexbuf  -> token) -> Lexing.lexbuf -> Equation.eqn
val equations :
  (Lexing.lexbuf  -> token) -> Lexing.lexbuf -> Equation.EqnSet.t
