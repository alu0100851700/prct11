module BiblioGem
	class Bibliography
		attr_accessor :autor, :titulo, :fecha, :isbn

		def initialize (autor, titulo, fecha, isbn)
			@autor, @titulo, @fecha, @isbn = autor, titulo, fecha, isbn
		end

	end
end
