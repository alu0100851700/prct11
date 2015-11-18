#encodign: utf-8
require 'spec_helper'
require 'biblio_gem'

describe Magazine do
    describe "Pruebas Magazine" do
        before :each do
            @m = BiblioGem::Magazine.new(["Autor1","Autor2"],"Titulo","Fecha",["ISBN1","ISBN2"])
        end
      
        it "Los libros son un recurso bibliográfico" do
            expect(@m.is_a? BiblioGem::Bibliography).to be true
        end
    
    end
end