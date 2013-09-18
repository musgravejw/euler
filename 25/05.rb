test = 1
solution = 0

def is_divisible(n)
  for i in 1...20
    if n % i != 0
      return false
    end
  end
  return true
end

while solution == 0
  if is_divisible(test)
    solution = test
  else
    test += 1
  end  
end

puts solution
