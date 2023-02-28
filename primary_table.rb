class PrimaryTable 

    def is_prime(number)
      return sieve(number).include?(number)
    end

    def sieve(number)
      primes_numbers = (0..number).to_a
      primes_numbers[0] = primes_numbers[1] = nil
    
      primes_numbers.each do |prime_candidate|
        next unless prime_candidate

        candidate_squared = prime_candidate * prime_candidate
        break if candidate_squared > number
        
        (candidate_squared).step(number,prime_candidate).each do |x|
          primes_numbers[x] = nil
        end
      end

      return primes_numbers.compact
    end

    def initialize(number)
        
    end
    
end