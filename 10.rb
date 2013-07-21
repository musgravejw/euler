# somewhat in-elegant.  
# iterative solution using Sieve of Eratosthenes array, and then sets multiples of a prime to zero.
# I think this runs in exponential time.  Maybe something like O(log(2 ^ log n)).  Takes a couple of hours.

total = 0
MAX = 2000000
n = (0..MAX).to_a

def is_prime(n)
	for i in 2...n
		# if it's evenly divisible, then not a prime
		if(n % i == 0)
			return false
		end
	end
	return true
end

def remove_multiples(n, i)	
	for j in ((i+i)..MAX).step(i)		
		n[j] = 0
	end
	return n
end

n.each do |i|	
	if i > 1 && is_prime(i)
		n = remove_multiples(n, i)
		puts "Prime #{i}."
	end
end

n.each do |i|
	total += i
end

puts total - 1