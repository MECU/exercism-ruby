class Acronym
  def self.abbreviate(sentence)
    sentence.split(/\s|-/).map { |w| w[0,1]}.join.upcase
  end
end