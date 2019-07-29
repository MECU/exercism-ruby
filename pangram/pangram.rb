class Pangram
  def self.pangram?(sentence = '')
    (('a'..'z').to_a - sentence.downcase.scan(/[a-z]/)).count == 0
  end
end