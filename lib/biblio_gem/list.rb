module BiblioGem
	class List
		attr_accessor :head, :size, :tail
		
		include Enumerable
		
		def initialize(*args)
			@head = @tail = nil
			@size = 0
			self.push_back(*args) if(args!=nil)
			
		end
		
		def push_back(*args)
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
		
		def pop_front
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
		
		def each
			aux = @head
			while aux!=nil
				yield aux.value
				aux = aux.next
			end
		end
	end
end
