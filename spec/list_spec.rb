#encodign: utf-8
require 'spec_helper'
require 'biblio_gem'

describe BiblioGem::List do
    describe "Pruebas Lista" do
        before :each do
            @n1 = BiblioGem::Node.new("Dato1")
            @n2 = BiblioGem::Node.new("Dato2")
            @n3 = BiblioGem::Node.new("Dato3")
            
            @l = BiblioGem::List.new(@n1,@n2,@n3)
        end
        
        it "Debe existir una lista con su cabeza" do
            expect(@l.head).to be_empty
        end
        
        it "Se extrae el primer elemento de la lista" do
            expect(@l.pop).to be(@n1)
        end
        
        it "Se puede insertar un elemento" do
            @n4 = BiblioGem::Node.new("Dato4")
            @l.push(@n4)
            
            expect(@l.size).to eq(4)
        end
        
        it "Se pueden insertar varios elementos" do
            @n4 = BiblioGem::Node.new("Dato4")
            @n5 = BiblioGem::Node.new("Dato5")
            @n6 = BiblioGem::Node.new("Dato6")
            @l.push(@n4,@n5,@n6)
            
            expect(@l.size).to eq(6)
        end
        
    end
end