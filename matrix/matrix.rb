class Matrix
  attr_reader :rows
  attr_reader :columns

  def initialize(matrix)
    @rows = matrix.split("\n").map{|v| v.split.map(&:to_i)}
    @columns = @rows.transpose
  end
end