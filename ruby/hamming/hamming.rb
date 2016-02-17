class Hamming

  VERSION = 1

  def self.compute(input1, input2)
    if input1.length != input2.length
      raise ArgumentError.new("Strings unequal in length")
    else
      array1 = input1.split('')
      difference = array1.select.with_index{|letter, index| letter != input2[index]}
      return difference.length
    end
    puts difference
  end
end
