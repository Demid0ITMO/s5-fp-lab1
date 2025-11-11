(** Copyright 2025-2025, Lab1 Ryazanov Demid 367522 *)

(** SPDX-License-Identifier: NONE *)

(* Problem 17: Number letter counts *)

let ones = [|""; "one"; "two"; "three"; "four"; "five"; "six"; "seven"; "eight"; "nine"; "ten";
             "eleven"; "twelve"; "thirteen"; "fourteen"; "fifteen"; "sixteen"; "seventeen"; 
             "eighteen"; "nineteen"|]

let tens = [|""; ""; "twenty"; "thirty"; "forty"; "fifty"; "sixty"; "seventy"; "eighty"; "ninety"|]

let number_to_string n =
  if n = 1000 then "onethousand"
  else if n < 20 then ones.(n)
  else if n < 100 then tens.(n / 10) ^ ones.(n mod 10)
  else 
    let hundred_part = ones.(n / 100) ^ "hundred" in
    if n mod 100 = 0 then hundred_part
    else hundred_part ^ "and" ^ 
         (if n mod 100 < 20 then ones.(n mod 100) 
          else tens.((n mod 100) / 10) ^ ones.(n mod 10))

let solve_tail_rec () =
  let rec count_letters n acc =
    if n > 1000 then acc
    else count_letters (n + 1) (acc + String.length (number_to_string n))
  in
  count_letters 1 0

let solve_rec () =
  let rec count_letters n =
    if n > 1000 then 0
    else String.length (number_to_string n) + count_letters (n + 1)
  in
  count_letters 1

module NumberToWord = struct
  let to_string = number_to_string
  end

let solve_module () =
  let numbers = List.init 1000 (fun i -> i + 1) in
  let word_lengths = List.map (fun n -> String.length (NumberToWord.to_string n)) numbers in
  List.fold_left (+) 0 word_lengths

let solve_map () =
  List.init 1000 (fun i -> i + 1)
  |> List.map (fun n -> String.length (number_to_string n))
  |> List.fold_left (+) 0

let solve_lazy () =
  let number_seq = Seq.ints 1 |> Seq.take 1000 in
  number_seq
  |> Seq.map number_to_string
  |> Seq.map String.length
  |> Seq.fold_left (+) 0