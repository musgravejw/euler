solution = 0

def is_triple(a, b, c)
	return (a < b) && (b < c)
end

for a in 1..500
	for b in 1..500
		c = Math.sqrt (a**2) + (b**2)
		c.round
		if is_triple(a, b, c) && (a + b + c == 1000)
			solution = a * b * c
		end
	end
end

puts solution