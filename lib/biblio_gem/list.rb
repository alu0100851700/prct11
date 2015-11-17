module BiblioGem
	class List
		attr_accessor :head, :size, :tail
		
		def initialize(*args)
			@head = @tail = nil
			@size = 0
			self.push(*args) if(args!=nil)
			
		end
		
		def push(*args)
			args.each do |value|
				if(@tail==nil)									#La cola esta vacia
					@tail = @head = Node.new(:value => value)
				else
					@tail.next = Node.new(:value => value)
					@tail = @tail.next
				end
				@size += 1
			end
		end
		
		def push_front(*args)
			args.each do |value|
				if(@head==nil)									#La cola esta vacia
					@head = @tail = Node.new(:value => value)
				else
					@head.prev = Node.new(:value => value)
					@head = @head.prev
				end
				@size += 1
			end
		end
		
		def pop
			return false if @size==0
			pos = @head
			@head = pos.next
			@size -= 1
			pos.value
		end
		
		def pop_back
			return false if @size==0
			pos = @tail
			@tail = pos.prev
			@size -= 1
			pos.value
		end
	end
end
