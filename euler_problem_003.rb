# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?

def largest_prime_factor(num, factor)
  if num == factor
    return factor
  elsif num % factor == 0
    largest_prime_factor(num / factor, factor)
  else
    largest_prime_factor(num, factor + 1)
  end
end

p largest_prime_factor(600851475143, 2)