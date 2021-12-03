class Palindromes
  attr_reader :value

  def initialize(max_factor:, min_factor: 1)
    @max = max_factor
    @min = min_factor
    @products = {}
  end

  def generate
    (@min..@max).each do |x|
      (@min..@max).each do |y|
        next unless palindrome(x, y)

        @products[x * y] = [] if @products[x * y].nil?
        next if @products[x * y].include?([y, x])

        @products[x * y].push([x, y])
      end
    end
    @products
  end

  def largest
    @value = @products.keys.max
    self
  end

  def smallest
    @value = @products.keys.min
    self
  end

  def factors
    @products[@value]
  end

  private

  def palindrome(x, y)
    list = (x * y).to_s.split('')

    while list.count > 1
      return true if list.count == 1
      return false unless list.shift == list.pop
    end

    true
  end
end
