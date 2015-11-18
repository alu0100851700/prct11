module BiblioGem
	class Magazine < Bibliography
		def to_s
	        "Revista\n"+super
	    end
	end
end