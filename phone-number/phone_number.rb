class PhoneNumber
  def self.clean(number)
    # Remove all non digits
    cleanedNumber = number.gsub(/\D/, '')

    # If the first digit it 1, take it off
    cleanedNumber = cleanedNumber[0] == "1" ? cleanedNumber[1, cleanedNumber.length] : cleanedNumber

    # Check for 0 or 1 as first digit in area or exchange
    return nil if cleanedNumber.length != 10 ||
        cleanedNumber[0].to_i < 2 ||
        cleanedNumber[3].to_i < 2

    cleanedNumber
  end
end