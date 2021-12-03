class Microwave
  attr_reader :input

  def initialize(input)
    @input = input
  end

  def timer
    input_str = input.to_s

    seconds = input
    seconds = input_str[-2, 2].to_i if input_str.size > 1

    minutes = input_str[0...-2].to_i

    while seconds > 59
      seconds -= 60
      minutes += 1
    end

    "#{sprintf('%02d', minutes)}:#{sprintf('%02d', seconds)}"
  end
end
