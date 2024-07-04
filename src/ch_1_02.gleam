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

// Числа Фибоначчи
pub fn fib1(n: Int) -> Int {
  case n {
    0 -> 0
    1 -> 1
    _ -> fib1(n - 1) + fib1(n - 2)
  }
}

pub fn fib2(n: Int) -> Int {
  fib2_iter(1, 0, n)
}

fn fib2_iter(a, b, count: Int) -> Int {
  case count {
    0 -> b
    _ -> fib2_iter(a + b, a, count - 1)
  }
}

// Размен монет (вариант 1)
pub fn count_change(amount: Int) -> Int {
  cc(amount, 5)
}

fn cc(amount, kinds_of_coins: Int) -> Int {
  case amount {
    0 -> 1
    _ if amount < 0 || kinds_of_coins == 0 -> 0
    _ ->
      cc(amount, kinds_of_coins - 1)
      + cc(amount - first_denimination(kinds_of_coins), kinds_of_coins)
  }
}

fn first_denimination(kinds_of_coins: Int) -> Int {
  case kinds_of_coins {
    1 -> 1
    2 -> 5
    3 -> 10
    4 -> 25
    5 -> 50
    _ -> 0
  }
}

// Размен монет ... (вариант 2)
pub fn count_change2(amount: Int) -> Int {
  cc2(amount, 5, 0)
}

fn cc2(amount, kinds_of_coins, acc: Int) -> Int {
  case amount {
    0 -> acc + 1
    _ if amount < 0 || kinds_of_coins == 0 -> acc
    _ ->
      cc2(
        amount - first_denimination(kinds_of_coins),
        kinds_of_coins,
        cc2(amount, kinds_of_coins - 1, acc),
      )
  }
}

// Размен монет ... (вариант 3)
pub fn count_change3(amount: Int) -> Int {
  cc3(amount, 0, [50, 25, 10, 5, 1])
}

fn cc3(amount, acc: Int, list_denomination: List(Int)) -> Int {
  case amount, list_denomination {
    0, _ -> acc + 1
    _, [] -> acc
    _, _ if amount < 0 -> acc
    _, [denimination, ..rest] ->
      cc3(amount - denimination, cc3(amount, acc, rest), list_denomination)
  }
}

// Возведение в степень
pub fn expt1(b, n: Int) -> Int {
  case n {
    0 -> 1
    _ -> b * expt1(b, n - 1)
  }
}

pub fn expt2(b, n: Int) -> Int {
  expt2_iter(b, n, 1)
}

fn expt2_iter(b, counter, product: Int) -> Int {
  case counter {
    0 -> product
    _ -> expt2_iter(b, counter - 1, b * product)
  }
}

pub fn fast_expt(b, n: Int) -> Int {
  case n, even(n) {
    0, _ -> 1
    _, True -> square(fast_expt(b, n / 2))
    _, False -> b * fast_expt(b, n - 1)
  }
}

fn even(n: Int) -> Bool {
  n % 2 == 0
}

fn square(n: Int) -> Int {
  n * n
}
// ----------------------------------------------------------------------------
