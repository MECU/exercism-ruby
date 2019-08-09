class Phrase
  attr_reader :phrase

  def initialize(phrase)
    @phrase = phrase
  end

  def word_count
    counted = {}
    word_array.each {|word| counted[word] = counted.key?(word) ? counted[word] += 1 : 1}
    counted
  end

  private

  def word_array
    phrase.strip.downcase.scan(/\b[^\s,]+\b/)
  end
end
