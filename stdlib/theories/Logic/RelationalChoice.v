(************************************************************************)
(*         *      The Rocq Prover / The Rocq Development Team           *)
(*  v      *         Copyright INRIA, CNRS and contributors             *)
(* <O___,, * (see version control and CREDITS file for authors & dates) *)
(*   \VV/  **************************************************************)
(*    //   *    This file is distributed under the terms of the         *)
(*         *     GNU Lesser General Public License Version 2.1          *)
(*         *     (see LICENSE file for the text of the license)         *)
(************************************************************************)

(** This file axiomatizes the relational form of the axiom of choice *)

Axiom relational_choice :
  forall (A B : Type) (R : A->B->Prop),
   (forall x : A, exists y : B, R x y) ->
     exists R' : A->B->Prop,
       subrelation R' R /\ forall x : A, exists! y : B, R' x y.
