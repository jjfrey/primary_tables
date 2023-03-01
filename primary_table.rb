class PrimaryTable 

    def is_prime(number)  
      return [0,1,2,3].include?(number) if number < 4 
      return sieve(number).include?(number)
    end

    def get_primes_for(count)

    end

    def sieve(number, offset=0)

      primes_numbers = (offset..number).to_a
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
       output_table(number) 
    end

    def output_table(number)
      row_count = number + 1
      column_count = number + 1
      number.times do |current_row|      
        output_row(number, current_row, column_count)
      end
    end

    def output_row(number, current_row, column_count)

    end
    
end