class Squares
  attr_reader :value

  def initialize(value)
    @value = value
  end

  def square_of_sum
    (1..@value).sum ** 2
  end

  def sum_of_squares
    (1..@value).map{|v| v**2}.sum
  end

  def difference
    square_of_sum - sum_of_squares
  end
end