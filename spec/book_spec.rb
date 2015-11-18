#encodign: utf-8
require 'spec_helper'
require 'biblio_gem'

describe BiblioGem::Book do
    describe "Pruebas Book" do
        before :each do
            @b = BiblioGem::Book.new(["Autor1","Autor2"],"Titulo","Fecha",["ISBN1","ISBN2"])
        end
      
        it "Los libros son un recurso bibliográfico" do
            expect(@b.is_a? BiblioGem::Bibliography).to be true
        end
        
        it "Los libros se muestran de forma correcta" do
            expect(@b.to_s).to eq("Libro\nAutor/es: Autor1, Autor2\n Titulo: Titulo\n Fecha: Fecha\n ISBN: ISBN1, ISBN2\n")
        end
        
    end
end