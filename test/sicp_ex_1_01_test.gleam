import gleeunit/should

import ex_1_01

pub fn ex_1_1_test() {
  True
  |> should.equal(ex_1_01.ex_1_1())
}

pub fn ex_1_2_test() {
  "(/ (+ 5 (+ 4 (- 2 (- 3 (+ 6 (/ 4 5)))))) (* 3 (* (- 6 2) (- 2 7))))"
  |> should.equal(ex_1_01.ex_1_2())
}

pub fn ex_1_3_test() {
  13.0
  |> should.equal(ex_1_01.ex_1_3(2.0, 1.0, 3.0))
  5.0
  |> should.equal(ex_1_01.ex_1_3(2.0, 1.0, -3.0))
  9.0
  |> should.equal(ex_1_01.ex_1_3(-2.0, 0.0, 3.0))
}

pub fn a_plus_abs_b_test() {
  7.0
  |> should.equal(ex_1_01.a_plus_abs_b(2.0, 5.0))
  7.0
  |> should.equal(ex_1_01.a_plus_abs_b(2.0, -5.0))
  3.0
  |> should.equal(ex_1_01.a_plus_abs_b(-2.0, 5.0))
  3.0
  |> should.equal(ex_1_01.a_plus_abs_b(-2.0, -5.0))
}

pub fn ex_1_5_test() {
  0
  |> should.equal(ex_1_01.ex_1_5())
}
