require 'date'

class Meetup
  START_DATE = {
    first: 1,
    second: 8,
    third: 15,
    fourth: 22,
    teenth: 13,
    last: -7
  }

  def initialize(month, year)
    @month = month
    @year = year
  end

  def day(weekday, week)
    date = Date.new(@year, @month, START_DATE[week])
    date = date.next until date.send("#{weekday}?")
    date
  end
end
