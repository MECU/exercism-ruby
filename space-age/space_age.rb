class SpaceAge
  @age = 0
  SECONDS_TO_EARTH_YEARS = 31557600.0

  PLANET = {
      :earth => 1,
      :mercury => 0.2408467,
      :venus => 0.61519726,
      :mars => 1.8808158,
      :jupiter => 11.862615,
      :saturn => 29.447498,
      :uranus => 84.016846,
      :neptune => 164.79132,
  }

  PLANET.each do |planet, value|
    define_method :"on_#{planet}" do
      @age / value
    end
  end

  def initialize(age)
    @age = age / SECONDS_TO_EARTH_YEARS
  end
end