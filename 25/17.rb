total = 0
letters = 0

def ones_letters(n)
  case n
  when 1..2
    return 3
  when 3
    return 5
  when 4..5
    return 4
  when 6
    return 3
  when 7..8
    return 5
  when 9
    return 4
  else
    return 0
  end
end

def teens(n)
  case n
  when 1..2
    return 6  
  when 3..4
    return 8  
  when 5..6
    return 7  
  when 7
    return 9
  when 8..9
    return 8
  else
    return 3
  end
end

def tens_letters(n)
  case n
  when 2..3
    return 6
  when 4..6
    return 5
  when 7
    return 7
  when 8..9
    return 6
  else
    return 0
  end
end

def hundreds_letters(n)
  result = ones_letters(n)  
  if result > 2
    return result + 7
  else 
    return 0
  end
end

def thousands_letters(n)
  result = ones_letters(n)
  if result > 2
    return result + 8
  else 
    return 0
  end
end

for i in 1..1000
  j = 0
  ones = i % 10
  tens = (i / 10) % 10
  hundreds = (i / 100) % 10
  thousands = (i / 1000) % 10
  
  if ones >= 1 && tens != 1
    letters = ones_letters(ones)    
    total += letters    
    j = 3    
  end
  
  if tens == 1
    letters = teens(ones)
    total += letters
    j = 3
  elsif tens > 1
    letters = tens_letters(tens)
    total += letters
    j = 3
  end
  
  if hundreds > 0
    letters = hundreds_letters(hundreds)    
    total += letters
    total += j
  end
  
  if thousands > 0
    total += thousands_letters(thousands)
  end  
end

puts total