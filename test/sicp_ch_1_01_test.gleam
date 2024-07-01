import gleeunit/should

import ch_1_01

pub fn circumference_test() {
  62.83185307179586
  |> should.equal(ch_1_01.circumference(10.0))
  0.0
  |> should.equal(ch_1_01.circumference(0.0))
}

pub fn square_test() {
  9.0
  |> should.equal(ch_1_01.square(3.0))
  9.0
  |> should.equal(ch_1_01.square(-3.0))
  0.0
  |> should.equal(ch_1_01.square(0.0))
}

pub fn sum_of_squares_test() {
  13.0
  |> should.equal(ch_1_01.sum_of_squares(3.0, 2.0))
  13.0
  |> should.equal(ch_1_01.sum_of_squares(-3.0, 2.0))
  4.0
  |> should.equal(ch_1_01.sum_of_squares(0.0, -2.0))
}

pub fn abs_test() {
  3.0
  |> should.equal(ch_1_01.abs(3.0))
  3.0
  |> should.equal(ch_1_01.abs(-3.0))
  0.0
  |> should.equal(ch_1_01.abs(0.0))
}

pub fn sqrt_test() {
  1.4142156862745097
  |> should.equal(ch_1_01.sqrt(2.0))
  3.00009155413138
  |> should.equal(ch_1_01.sqrt(9.0))
  1.0
  |> should.equal(ch_1_01.sqrt(1.0))
  1.7739279023207892
  |> should.equal(ch_1_01.sqrt(ch_1_01.sqrt(2.0) +. ch_1_01.sqrt(3.0)))
}

pub fn average_test() {
  3.5
  |> should.equal(ch_1_01.average(3.0, 4.0))
  -1.0
  |> should.equal(ch_1_01.average(-3.0, 1.0))
  -1.5
  |> should.equal(ch_1_01.average(0.0, -3.0))
}
