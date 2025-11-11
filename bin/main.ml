(** Copyright 2025-2025, Lab1 Ryazanov Demid 367522 *)

(** SPDX-License-Identifier: NONE *)

let () =
  Printf.printf "Problem 13: Large Sum\n";
  Printf.printf "Tail recursive: %s\n" (Problem13.solve_tail_rec ());
  Printf.printf "Recursive: %s\n" (Problem13.solve_rec ());
  Printf.printf "Module and map: %s\n" (Problem13.solve_module_and_map ());
  Printf.printf "Lazy: %s\n" (Problem13.solve_lazy ());

  Printf.printf "Problem 17: Number letter count\n";
  Printf.printf "Tail recursive: %d\n" (Problem17.solve_tail_rec ());
  Printf.printf "Recursive: %d\n" (Problem17.solve_rec ());
  Printf.printf "Module: %d\n" (Problem17.solve_module ());
  Printf.printf "Map: %d\n" (Problem17.solve_map ());
  Printf.printf "Lazy: %d\n" (Problem17.solve_lazy ())
