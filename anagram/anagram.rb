class Anagram
  attr_reader :word

  def initialize(word)
    @word = word.downcase
  end

  def match(list)
    list.select{ |word| word if @word.chars.sort == word.downcase.chars.sort && word.downcase != @word }
  end
end