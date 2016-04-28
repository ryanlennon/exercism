class Pangram

  VERSION = 1

  def self.is_pangram?(str)
    lowercase_str = str.downcase
    ('a'..'z').all? { |char| lowercase_str.include?(char)}

  end
end