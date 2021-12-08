class Clock
  attr_reader :hour, :minute

  def initialize(hour: 0, minute: 0)
    @hour = hour
    @minute = minute
    normalize
  end

  def to_s
    sprintf('%02d:%02d', @hour, @minute)
  end

  def ==(clock)
    clock.hour == @hour && clock.minute == @minute
  end

  def +(clock)
    @hour += clock.hour
    @minute += clock.minute
    normalize
    self
  end

  def -(clock)
    @hour -= clock.hour
    @minute -= clock.minute
    normalize
    self
  end

  private
  def normalize
    (@minute -= 60) && (@hour += 1) while @minute > 59
    (@minute += 60) && (@hour -= 1) while @minute < 0

    @hour -= 24 while @hour > 23
    @hour += 24 while @hour < 0
  end
end
