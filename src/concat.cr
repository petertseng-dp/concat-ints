module Concat
  def self.ints(ints : Array(String)) : Tuple(UInt64, UInt64)
    l = ints.sort { |a, b| a + b <=> b + a }
    {l.join.to_u64, l.reverse.join.to_u64}
  end
end
