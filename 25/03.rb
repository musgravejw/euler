i = 2
prime = 0
max = 600851475143

def is_prime(n)
  for i in 2...n
    # if it's evenly divisible, then not a prime
    if(n % i == 0)
      return false
    end
  end
  return true
end

while i < Math.sqrt(max)
  # if it's a factor, and it's prime
  if max % i == 0 && is_prime(i)
    # if it's larger than the last prime
    if i > prime
      puts "Prime Factor: #{i}"
      prime = i
    end
  end
  
  i += 1
end

puts prime
