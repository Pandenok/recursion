require 'pry'
def fibs(length)
  i = 0
  fibs = []
  while i <= length do
    if i == 0
      fibs << 0
    elsif i == 1 
      fibs << 1
    else
      fibs << (fibs[i - 1] + fibs[i - 2])
    end
    i += 1
  end
  fibs
end

def fibs_rec(length)
  return [0] if length.zero?
  return [0, 1] if length == 1
  sequence = fibs_rec(length - 1)
  sequence << sequence[-1] + sequence[-2]
end

p fibs(7)
p fibs_rec(7)