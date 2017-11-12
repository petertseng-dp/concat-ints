require "spec"
require "../src/concat"

describe Concat do
  cases = [
    { %w(5 56 50), 50556_u64, 56550_u64},
    { %w(79 82 34 83 69), 3469798283_u64, 8382796934_u64},
    { %w(420 34 19 71 341), 193413442071_u64, 714203434119_u64},
    { %w(17 32 91 7 46), 173246791_u64, 917463217_u64},
  ]

  it "works" do
    cases.each { |w, s, l|
      Concat.ints(w).should eq({s, l})
    }
  end
end
