class Series
  attr_reader :input

  def initialize(input)
    @input = input
  end

  def slices(slice_size)
    raise ArgumentError if slice_size > @input.length
    (0..@input.length - slice_size).map {|i| @input[i..i + slice_size - 1]}
  end
end