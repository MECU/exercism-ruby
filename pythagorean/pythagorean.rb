Triplet = Struct.new(:a, :b, :c) do
  def self.where(max_factor:, min_factor: 0, sum: nil)
    (min_factor..max_factor)
      .to_a
      .combination(3)
      .each_with_object([]) do |(a, b, c), triplets|
      triplet = Triplet.new(a, b, c)
      triplets << triplet if triplet.pythagorean? && (sum.nil? || triplet.sum == sum)
    end
  end

  def sum
    a + b + c
  end

  def product
    a * b * c
  end

  def pythagorean?
    a**2 + b**2 == c**2
  end
end
