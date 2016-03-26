class Squares
  VERSION = 2

  def initialize(num)
    @num = num
  end

  def square_of_sum
    sum = 0
    number = @num

    number.times do
      sum += number
      number -= 1
    end

    square_sum = sum**2
  end

  def sum_of_squares
    sum = 0
    number = @num
  
    number.times do
      sum += (number**2)
      number -= 1  
    end

    sum
  end

  def difference
    square_of_sum - sum_of_squares
  end


end
