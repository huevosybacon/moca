(***********************************************************************)
(*                                                                     *)
(*                           Objective Caml                            *)
(*                                                                     *)
(*            Xavier Leroy, projet Cristal, INRIA Rocquencourt         *)
(*                                                                     *)
(*  Copyright 1997 Institut National de Recherche en Informatique et   *)
(*  en Automatique.  All rights reserved.  This file is distributed    *)
(*  under the terms of the Q Public License version 1.0.               *)
(*                                                                     *)
(***********************************************************************)

(* $Id: syntaxerr.mli,v 1.5 2012-01-31 09:12:58 bonichon Exp $ *)

(** {4 Auxiliary type for reporting syntax errors } *)

open Format

type error =
    Unclosed of Location.t * string * Location.t * string
  | Applicative_path of Location.t
  | Other of Location.t

exception Error of error
exception Escape_error

val report_error: formatter -> error -> unit

(*
 Local Variables:
  compile-command: "cd ../..; make"
  End:
*)
