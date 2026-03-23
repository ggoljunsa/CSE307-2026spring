(* CSE307 Spring 2026 - Homework 1, Problem 5 *)
(* Name: *)
(* Student ID: *)

(* max : int list -> int *)
(* Find the maximum element of a list. *)
let rec max (l : int list) : int =
  match l with
  | [] -> failwith "Empty list"
  | [x] -> x
  | hd::tl -> if hd > max tl then hd else max tl

(* min : int list -> int *)
(* Find the minimum element of a list. *)
let rec min (l : int list) : int =
  match l with 
  | [] -> failwith "Empty list"
  | [x] -> x
  | hd::tl -> if hd < min tl then hd else min tl
