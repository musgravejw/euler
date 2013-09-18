i = 0
sum = 0
max = 1000

def three(value)
  sum = 0 
  while value > 0 do
    sum += value % 10
    value /= 10    
  end
  return (sum % 3 == 0)
end

def five(value)
  return ((value % 10 == 5) || (value % 10 == 0))
end

while i < max do
  if(three(i) || five(i))
    sum += i
  end
  i += 1
end

puts sum
