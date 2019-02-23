class Triplet
  attr_reader :a, :b, :c
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def sum
    a + b + c
  end

  def product
    a * b * c
  end

  def pythagorean?
    unless a**2 + b**2 == c**2
      return false
    end
    true
  end

  def self.where(limit)
    triplets = []
    limit[:min_factor] ||= 1
    (limit[:min_factor]..limit[:max_factor]).to_a.combination(3).to_a.each do |arr|
      a = Triplet.new(*arr)
      triplets << a if a.sum == limit[:sum] && a.pythagorean?
      triplets << a if a.pythagorean? && limit[:sum].nil?
    end
  triplets
  end
end