sum = 0
squares = 0

for i in 1..100
  squares += i ** 2
  sum += i  
end

puts (sum ** 2) - squares
