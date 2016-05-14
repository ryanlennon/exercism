class Sieve

  def initialize(limit)
    @limit = limit.abs
  end

  def primes
    range = [*2..@limit]
    scope = [*2..Math.sqrt(@limit)]
    non_primes = []

    while scope.size > 0
      num = scope.shift
      multiples = (num.next..@limit).select { |product| product % num == 0 }
      scope -= multiples
      non_primes << multiples
    end

    range - non_primes.flatten.uniq.sort
  end
end