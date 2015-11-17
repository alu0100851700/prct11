#encodign: utf-8
require 'spec_helper'
require 'biblio_gem'

describe BiblioGem::Node do
    describe "Pruebas Nodo" do
        before :each do
            @n1 = BiblioGem::Node.new(:value => "ValorNodo1")
            @n2 = BiblioGem::Node.new(:value => "ValorNodo2")
        end
        
        it "El nodo devuelve el valor correcto" do
            expect(@n1.to_s).to eq("ValorNodo1")
            expect(@n2.to_s).to eq("ValorNodo2")
        end
        
        it "El nodo devuelve el siguiente nodo" do
            @n1.next = @n2
            expect(@n1.next).to be(@n2)
            expect(@n1.next.to_s).to eq("ValorNodo2")
        end
        
        it "EL nodo devuelve el nodo anterior" do
            @n2.prev = @n1
            expect(@n2.prev).to be(@n1)
            expect(@n2.prev.to_s).to eq("ValorNodo1")
        end
      
    end
end