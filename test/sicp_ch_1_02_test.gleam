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
