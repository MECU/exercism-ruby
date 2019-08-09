class Phrase
  attr_reader :phrase

  def initialize(phrase)
    @phrase = phrase
  end

  def word_count
    word_array.each_with_object(Hash.new(0)) {|word, counted| counted[word] += 1}
  end

  private

  def word_array
    phrase.strip.downcase.scan(/\b[^\s,]+\b/)
  end
end
