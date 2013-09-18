n = 0
i = 0

def is_prime(n)
  for i in 2...n
    # if it's evenly divisible, then not a prime
    if(n % i == 0)
      return false
    end
  end
  return true
end

while i < 10002
  n += 1
  if is_prime(n)
    i += 1
  end
end

puts n
