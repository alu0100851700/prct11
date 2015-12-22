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
    end
end