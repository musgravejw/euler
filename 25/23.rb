# find the sum of all the positive integers which cannot be written as the sum of two abundant numbers
# iterative solution, takes forever, because this is running in exponential time.

sum = 0
a = []

def abundant(n)
	total = 0
	result = false
	for i in 1...n
		if n % i == 0
			total += i
		end
	end
	if total > n
		result = true
	end
	return result
end


def sum_of_abundant(n, a)
	result = false
	for i in 0..a.size
		for j in 0..a.size
			unless a[i].nil? || a[j].nil?
				if a[i] + a[j] == n					
					return true
				end
			end
		end
	end
	return result
end


for i in 1..28123	
	if !sum_of_abundant(i, a)
		sum += i
	end
	
	if abundant(i)
		a.push i
	end	
end

puts sum