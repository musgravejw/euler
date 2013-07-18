sum = 0
n = [1, 2]
total = 0

while sum < 4000000
	if n[1] % 2 == 0
		total += n[1]
	end
	
	sum = n[0] + n[1]
	
	n[0] = n[1]
	n[1] = sum
end

puts total