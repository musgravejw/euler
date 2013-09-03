# find the 1000000th number in a nine digit lexicographic permutation.

def lex
  n = 0
  set = []
  
  for a in 0..9
    for b in 0..9
      for c in 0..9
        for d in 0..9
          for e in 0..9
            for f in 0..9
              for g in 0..9
                for h in 0..9
                  for i in 0..9
				    for a in 0..9
                      str = "#{a}#{b}#{c}#{d}#{e}#{f}#{g}#{h}#{i}"
                      temp = [a, b, c, d, e, f, g, h, i]
                      puts str
					
                      if temp.uniq.length == temp.length
                        if !set.include? str.to_i
                          set.push str.to_i
                          n += 1
                        end
                      end
				  
                      if n == 1000000
                        puts str
                        return str				      
                      end
					end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
  
end

puts lex