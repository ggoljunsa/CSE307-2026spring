(* CSE307 Spring 2026 - Homework 1, Problem 6 *)
(* Name: *)
(* Student ID: *)

(* sigma : (int -> int) -> int -> int -> int *)
(* Compute the summation sum_{i=a}^{b} f(i). *)
let rec sigma (f : int -> int) (a : int) (b : int) : int =
  if a > b then 0
  else if a = b then f a
  else
    f a + sigma f (a+1) b

let rec sigma (f : int -> int) (a : int) (b : int) : int =
  let rec check (p : int) (q : int) : int =
    if p > q then 0
    else if p = q then f p
    else
      f p + check (p+1) q
  in
  check a b
    