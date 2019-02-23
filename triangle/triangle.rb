class Triangle

  def initialize(arr)
    # sizes of triangle
    @s1 = arr[0]
    @s2 = arr[1]
    @s3 = arr[2]
  end

  def equilateral?
    if @s1 == @s2 && @s2 == @s3 && @s1 == @s2 && @s1 != 0
      return true
    end
    return false
  end

  def isosceles?
    if  @s1 == @s2 || @s2 == @s3 || @s1 == @s3
      if @s1 + @s2 > @s3 and @s1 + @s3 > @s2 and @s2 + @s3 > @s1
        return true
      end
      return false
    end
    return false
  end

  def scalene?
    unless @s1 != @s2 && @s2 != @s3 && @s1 != @s3
      return false
    end
    return true unless @s1 + @s2 < @s3 || @s1 + @s3 < @s2 || @s2 + @s3 < @s1
  end

end