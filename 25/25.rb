# iterative is much faster in this case.

i = 2
n = 0
a = [1, 1]

while n.to_s.length < 1000
  n = a[i-1] + a[i-2]
  puts "#{n}"
  a.push n
  i += 1  
end

puts i