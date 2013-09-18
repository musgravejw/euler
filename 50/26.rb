n = 0
size = 0

for d in 2...10
  a = []
  i = 1.0 / d
  str = "%5.62f" % i
  str = str[2..-1]
  
  str.split('').each do |s|
    unless a.include? s
    a.push s
  else
    break
  end
  end
  
  if a.size > size
    n = d
  size = a.size
  end
end

puts n