class Clock
  attr_reader :minutes

  def initialize(hour: 0, minute: 0)
    @minutes = (hour * 60 + minute) % (24 * 60)
  end

  def +(another_clock)
    self.class.new(minute: minutes + another_clock.minutes)
  end

  def -(another_clock)
    self.class.new(minute: minutes - another_clock.minutes)
  end
  
  def ==(another_clock)
    minutes == another_clock.minutes
  end
  
  def to_s
    "%02i:%02i" % minutes.divmod(60)
  end
end