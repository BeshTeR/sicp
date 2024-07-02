//// ГЛАВА 1.2 (упражнения)

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
// ----------------------------------------------------------------------------
