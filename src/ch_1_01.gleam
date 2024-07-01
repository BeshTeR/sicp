//// ГЛАВА 1. "ПОСТРОЕНИЕ АБСТРАКЦИЙ С ПОМОЩЬЮ ПРОЦЕДУР"

import gleam/float

// ----------------------------------------------------------------------------
// 1.1. "Элементы программирования"

// Число "пи"
pub const pi = 3.1415926535897932384626433832795

// Длина окружности
pub fn circumference(r: Float) -> Float {
  2.0 *. pi *. r
}

// Квадрат действительного числа
pub fn square(x: Float) -> Float {
  x *. x
}

// Сумма квадратов двух действительных чисел
pub fn sum_of_squares(x, y: Float) -> Float {
  square(x) +. square(y)
}

// Абсолютная величина действительного  числа
pub fn abs(x: Float) -> Float {
  case x <. 0.0 {
    True -> x |> float.negate()
    False -> x
  }
}

// Квадратный корень из действительного числа (метод Ньютона)
pub fn sqrt(x: Float) -> Float {
  sqrt_iter(1.0, x)
}

fn sqrt_iter(guess, x: Float) -> Float {
  case sqrt_good_enough(guess, x) {
    True -> guess
    False -> sqrt_iter(sqrt_improve(guess, x), x)
  }
}

pub fn sqrt_good_enough(guess, x: Float) -> Bool {
  float.absolute_value(square(guess) -. x) <. 0.001
}

pub fn sqrt_improve(guess, x: Float) -> Float {
  average(guess, { x /. guess })
}

// Среднее арифметическое двух вещественных чисел
pub fn average(x, y: Float) -> Float {
  { x +. y } /. 2.0
}
// ----------------------------------------------------------------------------
