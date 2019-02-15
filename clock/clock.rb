class Clock
  def initialize(time_hash)
    @hours = time_hash[:hour] || 0
    @minutes  = time_hash[:minute] || 0
    @internal_minutes = @hours * 60 + @minutes
  end

  def to_s
    format '%02d:%02d', m_hours, m_minutes
  end

  def +(minutes)
    puts minutes
    puts @minutes
    puts m_minutes
    @minutes += minutes
    self
  end

  private

  def m_hours
    @internal_minutes / 60 % 24
  end

  def m_minutes
    @internal_minutes % 60
  end
end