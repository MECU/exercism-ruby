class ResistorColorDuo
  @values = ['black', 'brown', 'red', 'orange', 'yellow', 'green', 'blue', 'violet', 'grey', 'white']

  def self.value(list)
    output = []

    list.each do |color|
      output.push(@values.index(color).to_s)
    end

    return output.join.to_i
  end
end
