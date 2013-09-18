require 'csv'

names = []
total = 0

@alpha = {"A" => 1,
  "B" => 2,
  "C" => 3,
  "D" => 4,
  "E" => 5,
  "F" => 6,
  "G" => 7,
  "H" => 8,
  "I" => 9,
  "J" => 10,
  "K" => 11,
  "L" => 12,
  "M" => 13,
  "N" => 14,
  "O" => 15,
  "P" => 16,
  "Q" => 17,
  "R" => 18,
  "S" => 19,
  "T" => 20,
  "U" => 21,
  "V" => 22,
  "W" => 23,
  "X" => 24,
  "Y" => 25,
  "Z" => 26}

def val(str)
  total = 0
  str.split("").each do |c|
    total += @alpha[c]
  end
  return total
end

CSV.foreach("../names.txt") do |row|
  row.each do |r|
    names.push r
  end
end

names = names.sort
i = 0

names.each do |n|
  begin
    i += 1
    total += val(n) * i
  rescue
    puts "error."
  end
end

puts total
