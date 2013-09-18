a = []
j = []
parent_index = 0

a.push [75]
a.push [95, 64]
a.push [17, 47, 82]
a.push [18, 35, 87, 10]
a.push [20, 04, 82, 47, 65]
a.push [19, 01, 23, 75, 03, 34]
a.push [88, 02, 77, 73, 07, 63, 67]
a.push [99, 65, 04, 28, 06, 16, 70, 92]
a.push [41, 41, 26, 56, 83, 40, 80, 70, 33]
a.push [41, 48, 72, 33, 47, 32, 37, 16, 94, 29]
a.push [53, 71, 44, 65, 25, 43, 91, 52, 97, 51, 14]
a.push [70, 11, 33, 28, 77, 73, 17, 78, 39, 68, 17, 57]
a.push [91, 71, 52, 38, 17, 14, 91, 43, 58, 50, 27, 29, 48]
a.push [63, 66, 04, 68, 89, 53, 67, 30, 73, 16, 69, 87, 40, 31]
a.push [04, 62, 98, 27, 23, 9, 70, 98, 73, 93, 38, 53, 60, 04, 23]

a.each do |n|
  current = 0  
  current_index = 0
  
  for i in 0..n.size - 1  
    if n[i] > current && ((i - parent_index == 0) || ((i > parent_index) && (i - parent_index) == 1))
      current = n[i]
      current_index = i
    end
  end
  
  parent_index = current_index
  j.push current  
end

puts j
puts
sum = 0
j.each { |n| sum += n }
puts sum

