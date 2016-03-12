class Complement

  VERSION = 3

  def self.of_dna(input)
    letters = input.split("")
    rna_strand = []
    letters.each do |letter|
      if letter == 'C'
        rna_strand << 'G'
      elsif letter == 'G'
        rna_strand << 'C'
      elsif letter == 'T'
        rna_strand << 'A'
      elsif letter == 'A'
        rna_strand << 'U'
      else
        raise ArgumentError.new("Warning!Fatal Mutation!")
      end
    end
    return rna_strand.join
  end 
end