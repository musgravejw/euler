# this is unfinished, and this solution is incorrect.

class UnionFind
  @id = nil

  def initialize(n)
    @id = []
    i = 0
    while i < n
      @id[i] = i
      i += 1
    end
  end

  def is_connected(j, k)
    return find(j) == find(k)
  end

  def union(p, q)
    i = find(p)
    j = find(q)

    unless i == j 
      @id[i] = j  
    end         
  end

  private
    def find(p)      
      unless p < 0 || p >= @id.length      	
        while p != @id[p.to_i]
          p = @id[p.to_i]
        end
      end          
      return p
    end
end

def is_valid(j, k)
  return (((j - k).abs % 3) == 0) || ((k - j == 1) && (k % 3 != 0))
end

def find_paths(step)
	size = 9
	count = 0
	i = 0
	j = 0
	prev = 0

	while i < size
		u = UnionFind.new(size)
		j = i
		while j < size		
			if is_valid(prev, j)
				u.union(prev, j)
				prev = j
				if u.is_connected(0, size - 1)
					count += 1
					break
				end
			end
			j += 1
		end
		u = UnionFind.new(size)
		prev = 0
		j = i
		while j < size		
			if is_valid(prev, j)
				u.union(prev, j)
				prev = j
				if u.is_connected(0, size - 1)
					count += 1
					break
				end
			end
			j += 3
		end
		i += step
	end
	return count
end

count = find_paths(1)
count += find_paths(3)

puts count.to_s