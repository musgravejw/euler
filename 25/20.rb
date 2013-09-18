n = 0
sum = 0

def factorial(n)
  total = 1
  for i in 1..n
    total *= i
  end
  return total
end

n = factorial(100)

while n > 0
  i = n % 10
  sum += i
  n /= 10
end

puts sum