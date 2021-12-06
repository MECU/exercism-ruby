class Robot
  attr_reader :name

  @@names = []
  @@pointer = 0

  def initialize
    generate_names
    assign_name
  end

  def reset
    assign_name
  end

  def self.forget
    @@pointer = 0
  end

  private
  def generate_names
    return unless @@names.count.zero?

    letters = ('A'..'Z').to_a

    (0..25).each do |a|
      (0..25).each do |b|
        (0..999).each do |x|
          @@names << letters[a] + letters[b] + format('%03d', x)
        end
      end
    end

    @@names.shuffle!
  end

  def assign_name
    @name = @@names[@@pointer]
    @@pointer += 1
  end
end
