#encodign: utf-8
require 'spec_helper'
require 'biblio_gem'

describe BiblioGem::Magazine do
    describe "Pruebas Magazine" do
        before :each do
            @m = BiblioGem::Magazine.new(autor:["Autor1","Autor2"], titulo:"Titulo", fecha:"Fecha", isbn:["ISBN1","ISBN2"])
        end
      
        it "Las revistas son un recurso bibliográfico" do
            expect(@m.is_a? BiblioGem::Bibliography).to be true
        end
        
        it "Las revistas se muestran de forma correcta" do
            expect(@m.to_s).to eq("Revista\nAutor/es: Autor1, Autor2\n Titulo: Titulo\n Fecha: Fecha\n ISBN: ISBN1, ISBN2\n")
        end
    
    end
end