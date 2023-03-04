class PrimaryTable 

    def is_prime(number)  
      return false if [0,1].include?(number)
      return [2,3].include?(number) if number < 5 
      return sieve(number).include?(number)
    end

    def get_primes_for(count)
      primes = [2,3]
      row = 0
      number_of_primes = count + 1

      until primes.size >= number_of_primes
        primes << sieve(count**3)
        primes = primes.compact.flatten.uniq
      end

      return primes[0..count]
    end

    def sieve(number)
      prime_numbers = (0..number).to_a
      prime_numbers[0] = prime_numbers[1] = nil
    
      prime_numbers.each do |prime_candidate|
        next unless prime_candidate

        candidate_squared = prime_candidate * prime_candidate
        break if candidate_squared > number
        
        (candidate_squared).step(number,prime_candidate).each do |x|
          prime_numbers[x] = nil
        end
      end

      return prime_numbers.compact
    end

    def initialize(number)
       output_table(number) 
    end

    def output_table(number)
      primes = get_primes_for(number)
      primes.each_with_index do |value, index|
        output_row(primes, index+1)
        puts "\n"
      end
    end

    def output_row(primes, current_row)
      primes.each_with_index do |prime,index|
        if current_row == 1 && index == 0
          print "| |"
        elsif index==0
          print "|"
        end
        print "#{prime * current_row}|"
      end
    end
    
end