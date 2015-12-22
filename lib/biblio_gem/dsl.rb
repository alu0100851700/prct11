module BiblioGem
    class DSL < Array
        attr_accessor :bibliography
        
        def initialize(&block)
            @bibliography = []
            instance_eval &block
        end
        
        def title(name, options = {})
            @bibliography << DSLBibliography.new do
                title name,
                options
            end
        end
    
        def numref
            @bibliography.length
        end
        
        def to_s
            salida = ""
            @bibliography.each { |bib| salida << bib.to_s}
            salida
        end
    end
end