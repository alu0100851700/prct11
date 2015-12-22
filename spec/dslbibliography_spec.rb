#encodign: utf-8
require 'spec_helper'
require 'biblio_gem'

describe BiblioGem::DSLBibliography do
    
    describe "Pruebas de la clase DSL Bibliography" do
        before :each do
            @bib = BiblioGem::DSLBibliography.new do 
                title "Ethical Dilemmas in Fertility Counseling",
                by: "Judith E. Horowitz, Joann Paley Galst and Nanette Elster",
                pages: 242,
                isbn: "978-1-4338-0760-2",
                copyright: 2010,
                format: "Hardcover",
                availability: "In Stock"
            end
        end
         it "El libro tiene un titulo" do
            expect(@bib.titulo).to eq "Ethical Dilemmas in Fertility Counseling"
        end
        
        it "El libro tiene autor/autores" do
            expect(@bib.autor).to eq ["Judith E. Horowitz","Joann Paley Galst","Nanette Elster"]
        end
       
        it "El libro contiene el número de páginas" do
            expect(@bib.paginas).to eq 242
        end
        
        it "El libro tiene el ISBN" do
            expect(@bib.isbn).to eq "978-1-4338-0760-2"
        end
        
        it "El libro tiene fecha de copyright" do
            expect(@bib.copyright).to eq 2010
        end
        
        it "El libro tiene formato" do
            expect(@bib.formato).to eq "Hardcover"
        end
        
        it "El libro tiene definida su disponibilidad" do
            expect(@bib.disponibilidad).to eq "In Stock"
        end
        
        it "El libro se muestra correctamente" do
            expect(@bib.to_s).to eq "\nTitle: Ethical Dilemmas in Fertility Counseling\nBy: Judith E. Horowitz, Joann Paley Galst, Nanette Elster\nPages: 242\nISBN: 978-1-4338-0760-2\nCopyright: 2010\nFormat: Hardcover\nAvailability: In Stock\n"
        end
    end

 
end
