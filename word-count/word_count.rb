class Phrase
  attr_reader :phrase

  def initialize(phrase)
    @phrase = phrase
  end

  def word_count
    process_phrase.map {|k| [k, process_phrase.count(k)]}.to_h
  end

  private
  
  def process_phrase
    phrase.strip.downcase.scan(/\b[^\s,]+\b/)
  end
end
