class Garden
  PLANTS = {
    'G' => :grass,
    'C' => :clover,
    'R' => :radishes,
    'V' => :violets
  }

  STUDENTS = %w[Alice Bob Charlie David Eve Fred Ginny Harriet Ileana Joseph Kincaid Larry]

  def initialize(garden, students = STUDENTS)
    @garden = garden.split("\n").map { |r| r.split('') }
    @students = students.sort

    @students.map(&:downcase).each do |x|
      self.class.send(:define_method, "#{x}" ) do
        plants(@students.map(&:downcase).find_index(x) * 2)
      end
    end
  end

  private
  def plants(start)
    codes = @garden[0][start] + @garden[0][start+1] + @garden[1][start] + @garden[1][start+1]
    codes.split('').map { |c| PLANTS[c] }
  end
end
