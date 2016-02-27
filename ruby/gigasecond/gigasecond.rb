class Gigasecond

  VERSION = 1

  def self.from(input_time)
    total_seconds = input_time.to_i + (10**9)
    Time.at(total_seconds).utc
  end

end