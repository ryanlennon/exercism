class Fixnum

  VERSION   = 1
  
  ROMAN_NUMERAL_CONVERSION = {
    1000 => "M",
    900 => "CM",
    500 => "D",
    400 => "CD",
    100 => "C",
    90 => "XC",
    50 => "L",
    40 => "XL",
    10 => "X",
    9 => "IX",
    5 => "V",
    4 => "IV",
    1 => "I"
  }

  def to_roman
    roman_numeral_array = []
    number = self

    ROMAN_NUMERAL_CONVERSION.each do | number_key, roman_numeral_value | 
      while number >= number_key
        roman_numeral_array << roman_numeral_value
        number -= number_key
      end
    end
    roman_numeral_array.join
  end

end
