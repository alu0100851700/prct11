#encodign: utf-8
require 'spec_helper'
require 'biblio_gem'

describe BiblioGem::DSLBibliography do
    
    describe "Pruebas de la clase DSL Bibliography" do
        before :each do
            @book = BiblioGem::DSLBibliography.new do 
                title "Ethical Dilemmas in Fertility Counseling",
                by: "Judith E. Horowitz, Joann Paley Galst and Nanette Elster",
                pages: 242,
                isbn: "978-1-4338-0760-2",
                copyright: 2010,
                format: "Hardcover",
                availability: "In Stock"
            end
        end
         it "E
         l libro tiene un titulo" do
            expect(@book.titulo).should eq "Ethical Dilemmas in Fertility Counseling"
        end
        
        it "El libro tiene autor/autores" do
            expect(@book.autor).should eq ["Judith E. Horowitz","Joann Paley Galst","Nanette Elster"]
        end
       
        it "El libro contiene el número de páginas" do
            expect(@book.paginas).should eq 242
        end
        
        it "El libro tiene el ISBN" do
            expect(@book.isbn).should eq "978-1-4338-0760-2"
        end
        
        it "El libro tiene fecha de copyright" do
            expect(@book.copyright).should eq 2010
        end
        
        it "El libro tiene formato" do
            expect(@book.formato).should eq "Hardcover"
        end
        
        it "El libro tiene definida su disponibilidad" do
            expect(@book.disponibilidad).to eq "In Stock"
        end
    end

 
end
