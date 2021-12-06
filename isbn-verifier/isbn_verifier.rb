class IsbnVerifier
  def self.valid?(input)
    filtered = input.gsub(/-/, '').tr('^[0-9]{9}X|^[0-9]{10}', '')
    return false unless filtered.length == 10

    input_array = filtered.split('')
    input_array[9] = input_array[9] == 'X' ? 10 : input_array[9]
    x1, x2, x3, x4, x5, x6, x7, x8, x9, x10 = input_array.map(&:to_i)

    ((x1 * 10 + x2 * 9 + x3 * 8 + x4 * 7 + x5 * 6 + x6 * 5 + x7 * 4 + x8 * 3 + x9 * 2 + x10 * 1) % 11).zero?
  end
end
