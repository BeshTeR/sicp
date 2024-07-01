//// ГЛАВА 1.1 (упражнения)

import ch_1_01

import gleam/float
import gleam/function

// ----------------------------------------------------------------------------

// Упражнение 1.1
pub fn ex_1_1() -> Bool {
  let a = 3
  let b = a + 1
  10 == 10
  && 5 + 3 + 4 == 12
  && 9 - 1 == 8
  && 6 / 2 == 3
  && 2 * 4 + { 4 - 6 } == 6
  && a == 3
  && a + b + a * b == 19
  && a - b == -1
  && case b > a && b < a * b {
    True -> b
    False -> a
  }
  == 4
  && case a == 4, b == 4 {
    True, _ -> 6
    False, True -> 6 + 7 + a
    False, False -> 25
  }
  == 16
  && 2
  + case b > a {
    True -> b
    False -> a
  }
  == 6
}

// Упражнение 1.2
pub fn ex_1_2() -> String {
  "(/ (+ 5 (+ 4 (- 2 (- 3 (+ 6 (/ 4 5)))))) (* 3 (* (- 6 2) (- 2 7))))"
}

// Упражнение 1.3
pub fn ex_1_3(x, y, z: Float) -> Float {
  ch_1_01.sum_of_squares(max(x, y), max(y, z))
}

fn max(x, y: Float) -> Float {
  case x <. y {
    True -> y
    False -> x
  }
}

// Упражнение 1.4
pub fn a_plus_abs_b(a, b: Float) -> Float {
  case b >. 0.0 {
    True -> float.add
    False -> float.subtract
  }
  |> function.apply2(a, b)
}

// Упражнение 1.5
pub fn ex_1_5() {
  p_test(0, p)
}

fn p() -> Int {
  p()
}

fn p_test(x: Int, y: fn() -> Int) -> Int {
  case x == 0 {
    True -> 0
    False -> y()
  }
}
// ----------------------------------------------------------------------------
