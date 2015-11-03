module BiblioGem
	class Bibliography
		attr_accessor :autor, :titulo, :fecha, :isbn

		def initialize (autor, titulo, fecha, isbn)
			@autor, @titulo, @fecha, @isbn = autor, titulo, fecha, isbn
		end

		def to_s
			if @autor.is_a? Array
				"Autor/es: #{@autor.join(", ")}\n Titulo: #{@titulo}\n Fecha: #{@fecha}\n ISBN: #{@isbn}\n"
			else
				"Autor/es: #{@autor}\n Titulo: #{@titulo}\n Fecha: #{@fecha}\n ISBN: #{@isbn}\n"
			end
		end
		
	end
end
