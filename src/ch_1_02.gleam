//// ГЛАВА 1. "ПОСТРОЕНИЕ АБСТРАКЦИЙ С ПОМОЩЬЮ ПРОЦЕДУР"

// ----------------------------------------------------------------------------
// 1.2. "Процедуры и порождаемые ими процессы"

// Факториал натурального числа
pub fn factorial1(n: Int) -> Int {
  case n {
    0 -> 1
    _ -> n * factorial1(n - 1)
  }
}

pub fn factorial2(n: Int) -> Int {
  factorial2_iter(1, 1, n)
}

fn factorial2_iter(product, counter, max_count: Int) -> Int {
  case counter > max_count {
    True -> product
    False -> factorial2_iter(counter * product, counter + 1, max_count)
  }
}
// ----------------------------------------------------------------------------
