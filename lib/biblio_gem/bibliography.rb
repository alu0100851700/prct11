module BiblioGem
	class Bibliography
		attr_accessor :autor, :titulo, :fecha, :isbn, :paginas
		
		include Comparable
		
		def initialize (args)
			@paginas, @autor, @titulo, @fecha, @isbn =nil
			@autor = args[:autor]
			@titulo = args[:titulo]
			@fecha = args[:fecha]
			@isbn = args[:isbn]
			@paginas = args[:paginas]
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
		
		def <=> (other)
			return (self.paginas <=> other.paginas)
		end
		
	end
end
