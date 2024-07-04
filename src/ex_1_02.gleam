//// ГЛАВА 1.2 (упражнения)

import ch_1_02
import gleam/float
import gleam/int

// ----------------------------------------------------------------------------
// Упражнение 1.9
pub fn add1(a, b: Int) -> Int {
  case a {
    0 -> b
    _ -> inc(add1(dec(a), b))
  }
}

pub fn add2(a, b: Int) -> Int {
  case a {
    0 -> b
    _ -> add2(dec(a), inc(b))
  }
}

pub fn inc(n: Int) -> Int {
  n + 1
}

pub fn dec(n: Int) -> Int {
  n - 1
}

// Упражнение 1.10
pub fn ackerman(x, y: Int) -> Int {
  case x, y {
    _, 0 -> 0
    0, _ -> y * 2
    _, 1 -> 2
    _, _ -> ackerman(x - 1, ackerman(x, y - 1))
  }
}

// f(n) = 2 * n
pub fn f(n: Int) -> Int {
  ackerman(0, n)
}

// g(0) = 0, g(n) = 2 ^ n при n > 0
pub fn g(n: Int) -> Int {
  ackerman(1, n)
}

// h(0) = 0, h(n) = 2 ^ 2 ^ 2 ^ ... всего n раз, при n > 0
pub fn h(n: Int) -> Int {
  ackerman(2, n)
}

// k(n) = 5 * n ^ 2
pub fn k(n: Int) -> Int {
  5 * n * n
}

// Упражнение 1.11
pub fn f_r(n: Int) -> Int {
  case n < 3 {
    True -> n
    False -> f_r(n - 1) + f_r(n - 2) + f_r(n - 3)
  }
}

pub fn f_i(n: Int) -> Int {
  case n < 3 {
    True -> n
    False -> f_i_iter(n, 2, 1, 0)
  }
}

fn f_i_iter(n, m2, m1, m0: Int) -> Int {
  let m3 = m2 + m1 + m0
  case n {
    3 -> m3
    _ -> f_i_iter(n - 1, m3, m2, m1)
  }
}

// Упражнение 1.12
pub fn pascal_triangle(n, m: Int) -> Int {
  case m < 1 || n < m, m == 1 || n == m {
    True, _ -> 0
    False, True -> 1
    False, False -> pascal_triangle(n - 1, m - 1) + pascal_triangle(n - 1, m)
  }
}

// Упражнение 1.13
pub fn ex_1_13(n: Int) -> Bool {
  let assert Ok(sqrt5) = float.square_root(5.0)
  let fi = { 1.0 +. sqrt5 } /. 2.0
  let ki = { 1.0 -. sqrt5 } /. 2.0
  let assert Ok(fi_n) = float.power(fi, int.to_float(n))
  let assert Ok(ki_n) = float.power(ki, int.to_float(n))
  let fib_n = ch_1_02.fib2(n)
  fib_n == float.round(fi_n /. sqrt5)
  && fib_n == float.round({ fi_n -. ki_n } /. sqrt5)
}

// Упражнение 1.14
pub fn ex_1_14(n: Int) -> List(#(Int, Int)) {
  ex_1_14_iter(n, [])
}

fn ex_1_14_iter(n: Int, acc: List(#(Int, Int))) -> List(#(Int, Int)) {
  case n {
    1 -> acc
    _ -> ex_1_14_iter(n / 2, [#(n, ch_1_02.count_change3(n)), ..acc])
  }
}

// Упражнение 1.15
pub fn sine(angle: Float) -> Float {
  case float.absolute_value(angle) <. 0.1 {
    True -> angle
    False -> p(sine(angle /. 3.0))
  }
}

fn p(x: Float) -> Float {
  3.0 *. x -. 4.0 *. cube(x)
}

fn cube(x: Float) -> Float {
  x *. x *. x
}

// Упражнение 1.16
pub fn fast_expt2(n, m: Int) -> Int {
  fast_expt2_iter(n, m, 1)
}

fn fast_expt2_iter(n, m, acc: Int) -> Int {
  case m, m % 2 {
    0, _ -> acc
    _, 0 -> fast_expt2_iter(n * n, m / 2, acc)
    _, _ -> fast_expt2_iter(n, m - 1, n * acc)
  }
}
// ----------------------------------------------------------------------------
