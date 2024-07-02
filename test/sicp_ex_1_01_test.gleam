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

pub fn new_if_test() {
  5
  |> should.equal(ex_1_01.new_if(2 == 3, 0, 5))
  0
  |> should.equal(ex_1_01.new_if(1 == 1, 0, 5))
}

pub fn sqrt2_test() {
  1.41421356237468997
  |> should.equal(ex_1_01.sqrt2(2.0))
  3.000000001396984
  |> should.equal(ex_1_01.sqrt2(9.0))
  1.0
  |> should.equal(ex_1_01.sqrt2(1.0))
  1.7737712336472033
  |> should.equal(ex_1_01.sqrt2(ex_1_01.sqrt2(2.0) +. ex_1_01.sqrt2(3.0)))
}

pub fn sqrt3_test() {
  2.000000000012062
  |> should.equal(ex_1_01.sqrt3(8.0))
  3.0000000000000977
  |> should.equal(ex_1_01.sqrt3(27.0))
  1.0
  |> should.equal(ex_1_01.sqrt3(1.0))
}
