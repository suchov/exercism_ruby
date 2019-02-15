class Squares
  def initialize(num)
    @num = num
  end

  def square_of_sum
     @square_of_sum = (1..@num).inject(:+)**2
  end

  def sum_of_squares
     @sum_of_squares = (1..@num).sum{|x| x*x}
  end

  def difference
    square_of_sum - sum_of_squares
  end
end