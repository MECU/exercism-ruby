class Triangle
  attr_reader :sides

  def initialize(sides)
    @sides = sides
  end

  def equilateral?
    sides[0] == sides[1] && sides[1] == sides[2] && sides.none?(0) && self.inequality?
  end

  def isosceles?
    self.inequality? && (sides[0] == sides[1] || sides[1] == sides[2] || sides[0] == sides[2])
  end

  def scalene?
    self.inequality? && !self.equilateral? && !self.isosceles?
  end

  def inequality?
    sides[0] + sides[1] >= sides[2] &&
    sides[1] + sides[2] >= sides[0] &&
    sides[2] + sides[0] >= sides[1]
  end
end