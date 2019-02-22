class SpaceAge
  EARTH_YR = 31557600.0

  def initialize(age)
    self.class.send(:define_method, 'on_earth') { (age / EARTH_YR).round(2) }
    self.class.send(:define_method, 'on_mercury') { (age / (0.2408467 * EARTH_YR)).round(2) }
    self.class.send(:define_method, 'on_venus') { (age / (0.61519726 * EARTH_YR)).round(2) }
    self.class.send(:define_method, 'on_neptune') { (age / (164.79132 * EARTH_YR)).round(2) }
    self.class.send(:define_method, 'on_uranus') { (age / (84.016846 * EARTH_YR)).round(2) }
    self.class.send(:define_method, 'on_saturn') { (age / (29.447498 * EARTH_YR)).round(2) }
    self.class.send(:define_method, 'on_jupiter') { (age / (11.862615 * EARTH_YR)).round(2) }
    self.class.send(:define_method, 'on_mars') { (age / (1.8808158 * EARTH_YR)).round(2) }
  end

end