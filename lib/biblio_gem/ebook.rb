module BiblioGem
	class EBook < Bibliography
		def to_s
	        "Libro Electronico\n"+super
	    end
	end
end