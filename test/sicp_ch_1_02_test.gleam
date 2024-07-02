import ch_1_02
import gleeunit/should

pub fn factorial1_test() {
  1
  |> should.equal(ch_1_02.factorial1(0))
  1
  |> should.equal(ch_1_02.factorial1(1))
  120
  |> should.equal(ch_1_02.factorial1(5))
  3_628_800
  |> should.equal(ch_1_02.factorial1(10))
  815_915_283_247_897_734_345_611_269_596_115_894_272_000_000_000
  |> should.equal(ch_1_02.factorial2(40))
}

pub fn factorial2_test() {
  1
  |> should.equal(ch_1_02.factorial2(0))
  1
  |> should.equal(ch_1_02.factorial2(1))
  120
  |> should.equal(ch_1_02.factorial2(5))
  3_628_800
  |> should.equal(ch_1_02.factorial1(10))
  815_915_283_247_897_734_345_611_269_596_115_894_272_000_000_000
  |> should.equal(ch_1_02.factorial2(40))
}

pub fn fib1_test() {
  0
  |> should.equal(ch_1_02.fib1(0))
  1
  |> should.equal(ch_1_02.fib1(1))
  1
  |> should.equal(ch_1_02.fib1(2))
  2
  |> should.equal(ch_1_02.fib1(3))
  3
  |> should.equal(ch_1_02.fib1(4))
  5
  |> should.equal(ch_1_02.fib1(5))
  8
  |> should.equal(ch_1_02.fib1(6))
  55
  |> should.equal(ch_1_02.fib1(10))
}

pub fn fib2_test() {
  0
  |> should.equal(ch_1_02.fib2(0))
  1
  |> should.equal(ch_1_02.fib2(1))
  1
  |> should.equal(ch_1_02.fib2(2))
  2
  |> should.equal(ch_1_02.fib2(3))
  3
  |> should.equal(ch_1_02.fib2(4))
  5
  |> should.equal(ch_1_02.fib2(5))
  8
  |> should.equal(ch_1_02.fib2(6))
  55
  |> should.equal(ch_1_02.fib2(10))
  354_224_848_179_261_915_075
  |> should.equal(ch_1_02.fib2(100))
}

pub fn count_change_test() {
  292
  |> should.equal(ch_1_02.count_change(100))
  972
  |> should.equal(ch_1_02.count_change(150))
}

pub fn count_change2_test() {
  292
  |> should.equal(ch_1_02.count_change2(100))
  972
  |> should.equal(ch_1_02.count_change2(150))
}

pub fn count_change3_test() {
  292
  |> should.equal(ch_1_02.count_change3(100))
  972
  |> should.equal(ch_1_02.count_change3(150))
}
