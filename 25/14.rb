largest = 0
size = 0

def collatz(n)
	result = 0
	while n > 1
		if n % 2 == 0
			n = n / 2			
		else
			n = (n * 3) + 1
		end
		result += 1
	end
	result += 1
end

for n in 1...1000000
	puts "Testing: #{n}"
	i = collatz(n)
	if i > size
		largest = n
		size = i
	end
end

puts largest
puts
puts size