#encodign: utf-8
require 'spec_helper'
require 'biblio_gem'

describe BiblioGem::DSL do
    
    describe "Pruebas de la clase DSL" do
        before :each do
            @list = BiblioGem::DSL.new do 
                title "Ethical Dilemmas in Fertility Counseling",
                by: "Judith E. Horowitz, Joann Paley Galst and Nanette Elster",
                pages: 242,
                isbn: "978-1-4338-0760-2",
                copyright: 2010,
                format: "Hardcover",
                availability: "In Stock"
                
                title "The Psychology of Democracy",
                pages: 256,
                isbn: "978-1-4338-2087-8",
                copyright: 2015,
                format: "Hardcove",
                availability: "In Stock"
                
                title "Career Paths in Psychology: Where Your Degree Can Take You, Second Edition",
                pages: 376,
                isbn: "978-1-59147-732-7",
                copyright: 2007,
                format: "Softcover",
                availability: "In Stock"
            end
        end
        
        it "Se crearon correctamente las 3 referencias" do
            expect(@list.numref).should eq 3
        end
        
    end

 
end
