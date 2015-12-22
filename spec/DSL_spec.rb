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
                by: "Joann Paley Galst",
                pages: 256,
                isbn: "978-1-4338-2087-8",
                copyright: 2015,
                format: "Hardcover",
                availability: "In Stock"
                
                title "Career Paths in Psychology: Where Your Degree Can Take You, Second Edition",
                by:  "Robert J. Sternberg",
                pages: 376,
                isbn: "978-1-59147-732-7",
                copyright: 2007,
                format: "Softcover",
                availability: "In Stock"
            end
        end
        
        it "Se crearon correctamente las 3 referencias" do
            expect(@list.numref).to eq 3
        end
        
        it "Se muestra de forma correcta" do
            expect(@list.to_s).to eq "\nTitle: Ethical Dilemmas in Fertility Counseling\nBy: Judith E. Horowitz, Joann Paley Galst, Nanette Elster\nPages: 242\nISBN: 978-1-4338-0760-2\nCopyright: 2010\nFormat: Hardcover\nAvailability: In Stock\n\nTitle: The Psychology of Democracy\nBy: Joann Paley Galst\nPages: 256\nISBN: 978-1-4338-2087-8\nCopyright: 2015\nFormat: Hardcover\nAvailability: In Stock\n\nTitle: Career Paths in Psychology: Where Your Degree Can Take You, Second Edition\nBy: Robert J. Sternberg\nPages: 376\nISBN: 978-1-59147-732-7\nCopyright: 2007\nFormat: Softcover\nAvailability: In Stock\n"
        end
    end
end
