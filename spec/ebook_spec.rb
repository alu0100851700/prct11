#encodign: utf-8
require 'spec_helper'
require 'biblio_gem'

describe BiblioGem::EBook do
    describe "Pruebas EBook" do
        before :each do
            @eb = BiblioGem::EBook.new(["Autor1","Autor2"],"Titulo","Fecha",["ISBN1","ISBN2"])
        end
      
        it "Los libros electronicos son un recurso bibliográfico" do
            expect(@eb.is_a? BiblioGem::Bibliography).to be true
        end
        
        it "Los libros electronicos se muestran de forma correcta" do
            expect(@eb.to_s).to eq("Libro Electronico\nAutor/es: Autor1, Autor2\n Titulo: Titulo\n Fecha: Fecha\n ISBN: ISBN1, ISBN2\n")
        end

    end
end