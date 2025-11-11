open OUnit2

let test_problem13 _ =
  let expected = "5537376230" in
  assert_equal expected (Problem13.solve_tail_rec ());
  assert_equal expected (Problem13.solve_rec ());
  assert_equal expected (Problem13.solve_module_and_map ());
  assert_equal expected (Problem13.solve_lazy ())

let test_problem17 _ =
  let expected = 21124 in
  assert_equal expected (Problem17.solve_tail_rec ());
  assert_equal expected (Problem17.solve_rec ());
  assert_equal expected (Problem17.solve_module ());
  assert_equal expected (Problem17.solve_map ());
  assert_equal expected (Problem17.solve_lazy ())

let suite =
  "Lab1 Tests" >::: [
    "Problem 13 - Large Sum" >:: test_problem13;
    "Problem 17 - Number Letter Count" >:: test_problem17;
  ]

let () = run_test_tt_main suite