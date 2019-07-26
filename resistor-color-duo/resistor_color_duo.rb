class ResistorColorDuo
  RESISTOR_VALUES = ['black', 'brown', 'red', 'orange', 'yellow', 'green', 'blue', 'violet', 'grey', 'white']

  def self.value(list)
    list.map {|color| RESISTOR_VALUES.index(color).to_s}.join.to_i
  end
end
