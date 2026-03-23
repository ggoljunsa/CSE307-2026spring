(* CSE307 Spring 2026 - Homework 1, Problem 3 *)
(* Name: *)
(* Student ID: *)

(* suml : int list list -> int *)
(* Sum all integers in a list of lists. *)
(*
let rec sum_list nl = 
  match nl with
  | [] -> 0
  | hd::tl -> hd + sum_list tl

let rec suml (ll : int list list) : int =
  match ll with
  | [] -> 0
  | hd::tl -> sum_list hd + suml tl
*)

let rec suml ll =
  let rec sum_list nl =
    match nl with
    | [] -> 0
    | hd::tl -> hd + sum_list tl
  in
  match ll with
  | [] -> 0
  | hd::tl -> sum_list hd + suml tl
  