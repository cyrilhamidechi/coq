(***********************************************************************)
(*  v      *   The Coq Proof Assistant  /  The Coq Development Team    *)
(* <O___,, *        INRIA-Rocquencourt  &  LRI-CNRS-Orsay              *)
(*   \VV/  *************************************************************)
(*    //   *      This file is distributed under the terms of the      *)
(*         *       GNU Lesser General Public License Version 2.1       *)
(***********************************************************************)

(* $Id$ *)

Require Export Bool.
Require Export Ring_theory.
Require Export Quote.
Require Export Ring_normalize.
Require Export Ring_abstract.

(* As an example, we provide an instantation for bool. *)
(* Other instatiations are given in ArithRing and ZArithRing in the
   same directory *)

Definition BoolTheory :
  Ring_Theory xorb andb true false (fun b:bool => b) eqb.
split; simpl in |- *.
destruct n; destruct m; reflexivity.
destruct n; destruct m; destruct p; reflexivity.
destruct n; destruct m; reflexivity.
destruct n; destruct m; destruct p; reflexivity.
destruct n; reflexivity.
destruct n; reflexivity.
destruct n; reflexivity.
destruct n; destruct m; destruct p; reflexivity.
destruct x; destruct y; reflexivity || simpl in |- *; tauto.
Defined.

Add Ring bool xorb andb true false (fun b:bool => b) eqb BoolTheory
 [ true false ].