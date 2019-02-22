class SpaceAge

  def initialize(age)
    self.class.send(:define_method, 'on_earth') { (age / 31557600.0).round(2) }
    self.class.send(:define_method, 'on_mercury') { (age / (0.2408467 * 31557600.0)).round(2) }
    self.class.send(:define_method, 'on_venus') { (age / (0.61519726 * 31557600.0)).round(2) }
    self.class.send(:define_method, 'on_neptune') { (age / (164.79132 * 31557600.0)).round(2) }
    self.class.send(:define_method, 'on_uranus') { (age / (84.016846 * 31557600.0)).round(2) }
    self.class.send(:define_method, 'on_saturn') { (age / (29.447498 * 31557600.0)).round(2) }
    self.class.send(:define_method, 'on_jupiter') { (age / (11.862615 * 31557600.0)).round(2) }
    self.class.send(:define_method, 'on_mars') { (age / (1.8808158 * 31557600.0)).round(2) }
  end

end