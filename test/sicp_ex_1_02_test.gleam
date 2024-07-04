import gleeunit/should

import ex_1_02

pub fn add1_test() {
  9
  |> should.equal(ex_1_02.add1(4, 5))
}

pub fn add2_test() {
  9
  |> should.equal(ex_1_02.add2(4, 5))
}

pub fn ackerman_test() {
  1024
  |> should.equal(ex_1_02.ackerman(1, 10))
  65_536
  |> should.equal(ex_1_02.ackerman(2, 4))
  65_536
  |> should.equal(ex_1_02.ackerman(3, 3))
}

pub fn f_test() {
  2 * 0
  |> should.equal(ex_1_02.f(0))
  2 * 1
  |> should.equal(ex_1_02.f(1))
  2 * 2
  |> should.equal(ex_1_02.f(2))
  2 * 3
  |> should.equal(ex_1_02.f(3))
  2 * 4
  |> should.equal(ex_1_02.f(4))
}

pub fn g_test() {
  0
  |> should.equal(ex_1_02.g(0))
  2
  |> should.equal(ex_1_02.g(1))
  4
  |> should.equal(ex_1_02.g(2))
  8
  |> should.equal(ex_1_02.g(3))
  16
  |> should.equal(ex_1_02.g(4))
}

pub fn h_test() {
  0
  |> should.equal(ex_1_02.h(0))
  2
  |> should.equal(ex_1_02.h(1))
  4
  |> should.equal(ex_1_02.h(2))
  16
  |> should.equal(ex_1_02.h(3))
  65_536
  |> should.equal(ex_1_02.h(4))
}

pub fn k_test() {
  0
  |> should.equal(ex_1_02.k(0))
  5
  |> should.equal(ex_1_02.k(1))
  20
  |> should.equal(ex_1_02.k(2))
  45
  |> should.equal(ex_1_02.k(3))
  80
  |> should.equal(ex_1_02.k(4))
}

pub fn f_r_test() {
  0
  |> should.equal(ex_1_02.f_r(0))
  1
  |> should.equal(ex_1_02.f_r(1))
  2
  |> should.equal(ex_1_02.f_r(2))
  3
  |> should.equal(ex_1_02.f_r(3))
  6
  |> should.equal(ex_1_02.f_r(4))
  11
  |> should.equal(ex_1_02.f_r(5))
  20
  |> should.equal(ex_1_02.f_r(6))
  37
  |> should.equal(ex_1_02.f_r(7))
}

pub fn f_i_test() {
  0
  |> should.equal(ex_1_02.f_i(0))
  1
  |> should.equal(ex_1_02.f_i(1))
  2
  |> should.equal(ex_1_02.f_i(2))
  3
  |> should.equal(ex_1_02.f_i(3))
  6
  |> should.equal(ex_1_02.f_i(4))
  11
  |> should.equal(ex_1_02.f_i(5))
  20
  |> should.equal(ex_1_02.f_i(6))
  37
  |> should.equal(ex_1_02.f_i(7))
}

pub fn pascal_triangle_test() {
  1
  |> should.equal(ex_1_02.pascal_triangle(1, 1))
  1
  |> should.equal(ex_1_02.pascal_triangle(2, 1))
  1
  |> should.equal(ex_1_02.pascal_triangle(2, 2))
  1
  |> should.equal(ex_1_02.pascal_triangle(3, 1))
  2
  |> should.equal(ex_1_02.pascal_triangle(3, 2))
  1
  |> should.equal(ex_1_02.pascal_triangle(3, 3))
  1
  |> should.equal(ex_1_02.pascal_triangle(4, 1))
  3
  |> should.equal(ex_1_02.pascal_triangle(4, 2))
  3
  |> should.equal(ex_1_02.pascal_triangle(4, 3))
  1
  |> should.equal(ex_1_02.pascal_triangle(4, 4))
  1
  |> should.equal(ex_1_02.pascal_triangle(5, 1))
  4
  |> should.equal(ex_1_02.pascal_triangle(5, 2))
  6
  |> should.equal(ex_1_02.pascal_triangle(5, 3))
  4
  |> should.equal(ex_1_02.pascal_triangle(5, 4))
  1
  |> should.equal(ex_1_02.pascal_triangle(5, 5))
}

pub fn ex_1_13_test() {
  True
  |> should.equal(ex_1_02.ex_1_13(0))
  True
  |> should.equal(ex_1_02.ex_1_13(1))
  True
  |> should.equal(ex_1_02.ex_1_13(2))
  True
  |> should.equal(ex_1_02.ex_1_13(3))
  True
  |> should.equal(ex_1_02.ex_1_13(4))
  True
  |> should.equal(ex_1_02.ex_1_13(5))
  True
  |> should.equal(ex_1_02.ex_1_13(6))
  True
  |> should.equal(ex_1_02.ex_1_13(8))
  True
  |> should.equal(ex_1_02.ex_1_13(10))
  True
  |> should.equal(ex_1_02.ex_1_13(50))
}
