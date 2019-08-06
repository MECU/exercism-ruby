class Phrase
  attr_reader :phrase

  def initialize(phrase)
    @phrase = phrase
  end

  def word_count
    word_array = phrase.strip.downcase.scan(/\b[^\s,]+\b/)
    Hash[word_array.map {|k| [k, word_array.count(k)]}]
  end
end
