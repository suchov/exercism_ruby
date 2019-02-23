class PrimeFactors

  def self.for(n)
    divisor = []
    while n > 1
      divisor << first_factor(n)
      n /= divisor.last
    end
    divisor
  end

  def self.first_factor(number)
    (2..number).find {|x| number % x == 0}
  end
end