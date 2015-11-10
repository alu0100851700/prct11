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
            expect(@n1.to_s).to be("ValorNodo1")
            expect(@n2.to_s).to be("ValorNodo2")
        end
        
        it "El nodo devuelve el siguiente nodo" do
            @n1.next = @n2
            expect(@n1.next).to be(@n2)
            expect(@n1.next.to_s).to be("ValorNodo2")
        end
      
    end
end