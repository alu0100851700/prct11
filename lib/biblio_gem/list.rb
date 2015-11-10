module BiblioGem
	class List
		attr_accessor :head, :size
		
		def initialize(*args)
			@head = nil
			@size = 0
			self.push(*args) if(args!=nil)
			
		end
		
		def push(*args)
			
			if @head!=nil										#Colocar a pos en el último elemento si hay elementos en la cola
				pos = @head
				begin 
					pos = pos.next
				end while pos.next != nil
			end
			
			args.each do |value|
				if(@head==nil)									#La cola esta vacia
					@head = Node.new(:value => value)
					pos = @head
				else
					pos.next = Node.new(:value => value)
					pos = pos.next
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
		
		
	end
end
