class Series
  attr_reader :series

  def initialize(series)
    @series = series
  end

  def slices(slice_size)
    raise ArgumentError if slice_size > series.length
    series.each_char.to_enum.each_cons(slice_size).map(&:join)
  end
end