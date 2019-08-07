class Transpose
  def self.transpose(input)
    return '' if input == ''

    # split into array, convert spaces to a known char
    lines = input.split("\n").map {|v| v.tr(' ', '|')}

    # calculate the longest line length
    max_line = lines.max_by(&:length).length

    # make each line the same length, split fully into 2D matrix array form
    # transpose
    # join back, strip spaces from the end, convert known char back
    # join back to single string form
    lines.map {|v| v.ljust(max_line).chars}
        .transpose
        .map {|v| v.join.rstrip.tr('|', ' ')}
        .join("\n")
  end
end