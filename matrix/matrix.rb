class Matrix
  attr_reader :matrix

  def initialize(matrix)
    @matrix = matrix
  end

  def columns
    rows.transpose
  end

  def rows
    @matrix.each_line.map{|v| v.split.map(&:to_i)}
  end
end