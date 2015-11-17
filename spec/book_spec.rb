#encodign: utf-8
require 'spec_helper'
require 'biblio_gem'

describe Book do
    describe "Pruebas Book" do
        before :each do
            @b = BiblioGem::Book.new(["Autor1","Autor2"],"Titulo","Fecha",["ISBN1","ISBN2"])
        end
      
        it "Los libros son un recurso bibliográfico" do
            expect(@b.is_a? BiblioGem::Bibliography).to be true
        end
    
        it "Los libros responden responden a los mismos métodos que un recurso bibliográfico" do
            expect(@b.respond_to? autor).to be true
            expect(@b.respond_to? titulo).to be true
            expect(@b.respond_to? fecha).to be true
            expect(@b.respond_to? isbn).to be true
        end
    end
end