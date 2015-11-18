module BiblioGem
	class Book < Bibliography
	    def to_s
	        "Libro\n"+super
	    end
	end
end
