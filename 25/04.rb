previous = 0

def is_palindrome(n)
  for i in 0...(n.length / 2)
    if n[i] != n[(n.length - 1) - i]
      return false
    end
  end
  return true
end

for n in 100...999
  for i in 100...999
    j = n*i
    if is_palindrome(j.to_s) && j > previous
      previous = j
    end
  end
end

puts previous

