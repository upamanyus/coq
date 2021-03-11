(************************************************************************)
(*         *   The Coq Proof Assistant / The Coq Development Team       *)
(*  v      *         Copyright INRIA, CNRS and contributors             *)
(* <O___,, * (see version control and CREDITS file for authors & dates) *)
(*   \VV/  **************************************************************)
(*    //   *    This file is distributed under the terms of the         *)
(*         *     GNU Lesser General Public License Version 2.1          *)
(*         *     (see LICENSE file for the text of the license)         *)
(************************************************************************)

(* $Id$ *)

open Names
open Constr
open Environ

val val_of_constr : env -> (existential -> constr option) -> constr -> Vmvalues.values

val set_opaque_const      : Constant.t -> unit
val set_transparent_const : Constant.t -> unit

val get_global_data : unit -> Vmvalues.vm_global
