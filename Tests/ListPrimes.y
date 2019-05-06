{ List all prime numbers less than 100 }

program ListPrimes:

    { Return 1 if n is prime, 0 otherwise }
    sub is_prime(n):
        prime := 1  { Assume n is 1 until we prove otherwise }

        { Loop from 2 to n - 1, checking divisibility }
        { Looping to sqrt(n) is sufficient, but we'd need a sqrt routine }
        for i := 2 to n - 1:
             if n % i = 0:
                 prime := 0
             end
        end

        return prime
    end


    { Main }
    sub main():
       limit := 100

        for value := 2 to limit:
            if is_prime(value) = 1:
                print value
            end
        end
    end


	{ Call main }
    main()

end