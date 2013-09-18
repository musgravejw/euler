sum = 0
a = 0
b = 0

def divisors(n)
  j = 0
  a = []
  for i in 1...n
    if n % i == 0
      a.push i      
    end
  end
  a.each { |i| j += i }
  return j
end

for a in 1..10000
  b = divisors(a)  

  if b != a && divisors(b) == a
    sum += a
  end
end

puts sum