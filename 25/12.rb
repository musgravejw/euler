n = 0
i = 0

def divisors(n)
  total = 0
  for i in 1..n
    if n % i == 0
      total += 1
    end
  end
  return total
end

# for an iterative solution O(log n), I believe
while divisors(n) < 500  
  i += 1
  n += i
  puts "Testing #{n}"
end

puts i