class Clock
  HOURS_PER_DAY = 24
  MINUTES_PER_HOUR = 60
  MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

  protected
  attr_reader :minutes

  public
  def initialize(hour: 0, minute: 0)
    @minutes = ((hour * MINUTES_PER_HOUR) + minute) % MINUTES_PER_DAY
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
    "%02i:%02i" % minutes.divmod(MINUTES_PER_HOUR)
  end
end