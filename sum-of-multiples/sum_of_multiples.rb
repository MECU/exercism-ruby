class SumOfMultiples
  attr_reader :factors

  def initialize(*args)
    @factors = args
  end

  def to(limit)
    (1..limit - 1).select {|v| @factors.map {|f| v % f == 0}.any?()}.sum
  end
end