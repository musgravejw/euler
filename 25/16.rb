n = 2 ** 1000
sum = 0

while n > 0  
  i = n % 10  
  sum += i
  n /= 10  
end

puts sum