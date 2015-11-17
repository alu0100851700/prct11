#encodign: utf-8
require 'spec_helper'
require 'biblio_gem'

describe EBook do
    describe "Pruebas EBook" do
        before :each do
            @eb = BiblioGem::EBook.new(["Autor1","Autor2"],"Titulo","Fecha",["ISBN1","ISBN2"])
        end
      
        it "Los libros son un recurso bibliográfico" do
            expect(@eb.is_a? BiblioGem::Bibliography).to be true
        end
    
        it "Los libros responden responden a los mismos métodos que un recurso bibliográfico" do
            expect(@eb.respond_to? autor).to be true
            expect(@eb.respond_to? titulo).to be true
            expect(@eb.respond_to? fecha).to be true
            expect(@eb.respond_to? isbn).to be true
        end
    end
end