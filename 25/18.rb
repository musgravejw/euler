class Node
	@value = 0
	@right = nil
	@left = nil
	
	def set_value(n)
		@value = n	
	end
	
	def get_value
		return @value
	end
	
	def set_right(node)
		@right = node
	end
	
	def get_right
		return @right	
	end
	
	def set_left(node)
		@left = node
	end
	
	def get_left
		return @left
	end
end

class BST
	@root = nil
	
	def set_root(node)
		@root = node
	end
	
	def get_root
		return @root
	end
end


