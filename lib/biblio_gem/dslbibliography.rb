module BiblioGem
	class DSLBibliography < Bibliography
	    attr_accessor :copyright, :disponibilidad, :formato #:autor, :titulo, :fecha, :isbn, :paginas
	    
        def initialize(&block)
            instance_eval &block 
        end
        
        def title(name, options = {})
            @titulo = name
            @autor =  options[:by].split(/\, | and /) if options[:by]
            @paginas =  options[:pages] if options[:pages]
            @isbn =  options[:isbn] if options[:isbn]
            @copyright =  options[:copyright] if options[:copyright]
            @formato =  options[:format] if options[:format]
            @disponibilidad =  options[:availability] if options[:availability]
            @fecha =  options[:date] if options[:date]
        end
        
        def to_s
            "\nTitle: #{@titulo}\nBy: #{@autor.join(", ")}\nPages: #{@paginas}\nISBN: #{@isbn}\nCopyright: #{@copyright}\nFormat: #{@formato}\nAvailability: #{@disponibilidad}\n"
        end
	end
end