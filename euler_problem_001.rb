# If we list all the natural numbers below 10 that are multiples of 3 or 5,
# we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.

def multiples_rec(num)
  if num.zero?
    return num
  elsif num % 5 == 0 || num % 3 == 0
    num + multiples_rec(num - 1)
  else
    multiples_rec(num - 1)
  end
end

def multiples_iter(limit)
  sum = 0
  (0...limit).to_a.each do |num|
    if num % 5 == 0 || num % 3 == 0
      sum += num
    end
  end
  sum
end

def multiples_enum(num)
  (0...num).to_a.select { |el| el % 5 == 0 || el % 3 == 0}.sum
end

p multiples_iter(1000)
p multiples_rec(999)
p multiples_enum(1000)