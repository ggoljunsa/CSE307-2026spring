(* CSE307 Spring 2026 - Homework 1, Problem 1 *)
(* Name: *)
(* Student ID: *)

(* prime : int -> bool *)
(* Check whether a number is prime. *)
let prime (n : int) : bool =
  if n < 2 then false
  else
    let rec check i = 
      if i*i > n then true
      else if n mod i = 0 then false
      else check (i+1)
    in check 2
    
let _ =
  print_string("prime 2 = ")
let _ =
  print_endline (string_of_bool (prime 2))
  let _ =
    print_string("prime 3 = ")
  let _ =
    print_endline (string_of_bool (prime 3))
  let _ =
    print_string("prime 4 = ")
  let _ =
    print_endline (string_of_bool (prime 4))

    let _ =
      print_string("prime 17 = ")
    let _ =
      print_endline (string_of_bool (prime 17))
  