#encodign: utf-8
require 'spec_helper'
require 'biblio_gem'

describe BiblioGem::List do
    describe "Pruebas Lista" do
        before :each do
            @l = BiblioGem::List.new("Dato1","Dato2","Dato3")
        end
        
        it "Debe existir una lista con su cabeza" do
            expect(@l.head).not_to be(nil)
        end
        
        it "Se extrae el primer elemento de la lista" do
            expect(@l.pop).to eq("Dato1")
        end
        
        it "Se puede insertar un elemento" do
            @l.push("Dato4")
            
            expect(@l.size).to eq(4)
        end
        
        it "Se pueden insertar varios elementos" do
            @l.push("Dato4","Dato5","Dato6")
            
            expect(@l.size).to eq(6)
        end
    end
    
    describe "Pruebas Lista" do
        
    end
    
end