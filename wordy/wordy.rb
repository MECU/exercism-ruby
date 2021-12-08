class WordProblem
  def initialize(string)
    @string = string
  end

  def answer
    result = /What is /.match(@string)
    raise ArgumentError if result.nil?

    string = @string.gsub('What is ', '').gsub('?', '')
    parts = string.split(' ')

    first = parts.shift.to_i

    while parts.count > 0
      op = parts.shift
      # If Multiply or Divide, extra shift the by
      parts.shift if op == 'multiplied' || op == 'divided'
      second = parts.shift.to_i

      case op
      when 'plus'
        first += second
      when 'minus'
        first -= second
      when 'multiplied'
        first *= second
      when 'divided'
        first /= second
      else
        raise ArgumentError
      end
    end

    first
  end
end
