class Raindrops
  RULES = {
    'Pling': 3,
    'Plang': 5,
    'Plong': 7
  }.freeze

  def self.convert(integer)
    noise = RULES.filter { |noise, factor| (integer % factor.to_i).zero? }.keys.join

    return noise unless noise.empty?

    integer.to_s
  end
end
