class Prime
  def self.nth(input)
    raise ArgumentError if input.zero?
    return 2 if input == 1

    found = 1
    3.step(999999, 2) do |num|
      found += 1 if is_prime?(num)

      return num if found == input
    end
  end

  def self.is_prime?(num)
    3.step(Math.sqrt(num).floor, 2) do |f|
      return false if num % f == 0
    end

    true
  end
end
