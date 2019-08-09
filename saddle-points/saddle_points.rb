class Matrix
  attr_accessor :rows, :columns

  def initialize(input)
    @rows = input.each_line.map {|e| e.split.map(&:to_i)}
    @columns = @rows.transpose
  end

  def saddle_points
    # Only the max of the row and min of the column make a saddle
    rows.each_with_object([]).with_index do |(row, results), index|
        all_indexes_of_min_or_max_array(row, 'max').each do |maxRowIndex|
        results << [index, maxRowIndex] if all_indexes_of_min_or_max_array(columns[maxRowIndex]).include?(index)
      end
    end
  end

  private

  def all_indexes_of_min_or_max_array(array, min_or_max = 'min')
    array.each_with_object([]).with_index {|(value, values), index| values << index if value == array.send(min_or_max)}
  end
end