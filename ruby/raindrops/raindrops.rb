class Raindrops

  Raindrops::VERSION = 1

  def self.convert(num) 
    words = {3 => "Pling", 5 => "Plang", 7 => "Plong"}
    final_output = ""
    words.each do |key, value|
      if num % key == 0
        final_output << value 
      end
    end
    if final_output == ""
      final_output << num.to_s
    end
    final_output
  end
end
