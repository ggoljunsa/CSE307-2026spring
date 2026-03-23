(* CSE307 Spring 2026 - Homework 1, Problem 4 *)
(* Name: *)
(* Student ID: *)

(* drop : 'a list -> int -> 'a list *)
(* Remove the first n elements of a list. *)
let rec drop (l : 'a list) (n : int) : 'a list =
  if n = 0 then l
  else
    match l with
    | [] -> []
    | hd::tl -> drop tl (n-1)

let rec drop l n =
  if n=0 then l
  else
    match l with
    | [] -> []
    | hd::tl -> drop tl (n-1)