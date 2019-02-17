class Clock
  include Comparable

  def initialize(parameters)
    @total_minutes = to_minutes(parameters[:hour] || 0) + (parameters[:minute] || 0)
  end

  def minute
    @minute ||= @total_minutes % 60
  end

  def hour
    @hour ||= (@total_minutes / 60) % 24
  end

  def to_s
    "#{format hour}:#{format minute}"
  end

  def +(another_clock)
    Clock.new(:minute => self.minute + another_clock.minute, :hour => self.hour + another_clock.hour)
  end

  def -(another_clock)
    Clock.new(:minute => self.minute - another_clock.minute, :hour => self.hour - another_clock.hour)
  end

  def <=>(another_clock)
    (to_minutes self.hour + self.minute) <=> (to_minutes another_clock.hour + another_clock.minute)
  end

  private 

  def to_minutes(hours)
    hours * 60
  end

  def format(number)
    number.to_s.rjust(2, "0")
  end
end