module BiblioGem
	class Bibliography
		attr_accessor :autor, :titulo, :fecha, :isbn

		def initialize (autor, titulo, fecha, isbn)
			@autor, @titulo, @fecha, @isbn = autor, titulo, fecha, isbn
		end

		def to_s
			libro = ""
			if @autor.is_a? Array
				libro+="Autor/es: #{@autor.join(", ")}\n"
			else
				libro+="Autor/es: #{@autor}\n"
			end
			
			libro+=" Titulo: #{@titulo}\n Fecha: #{@fecha}\n"
			
			if @isbn.is_a? Array
				libro+=" ISBN: #{@isbn.join(", ")}\n"
			else
				libro+=" ISBN: #{@isbn}\n"
			end
			libro
		end
		
	end
end
