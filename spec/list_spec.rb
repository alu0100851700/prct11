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
    
    describe "Pruebas lista con Libros" do
        before :each do
            @libro1 = BiblioGem::Bibliography.new(["Dave Thomas","Andy Hunt","Chad Fowler"]," Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’ Guide. (The Facets of Ruby)","(July 7, 2013",["978-1937785499","1937785491"])
            @libro2 = BiblioGem::Bibliography.new("Scott Chacon"," Pro Git 2009th Edition. (Pro). Apress","August 27, 2009",["978-1430218333","1430218339"])
            @libro3 = BiblioGem::Bibliography.new(["David Flanagan","Yukihiro Matsumoto"],"The Ruby Programming Language. O’Reilly Media","February 4, 2008",["0596516177","978-0596516178"])
            @libro4 = BiblioGem::Bibliography.new(["David Chelimsky","Dave Astels","Bryan Helmkamp","Dan North","Zach Dennis","Aslak Hellesoy"],"The RSpec Book: Behaviour Driven Development with RSpec, Cucumber, and Friends (The Facets of Ruby). PragmaticBookshelf","December 25, 2010",["1934356379","978-1934356371"])
            @libro5 = BiblioGem::Bibliography.new("Richard E"," . Silverman Git Pocket Guide O’Reilly Media","August 2, 2013",["1449325866","978-1449325862"])
            @l = BiblioGem::List.new(@libro1,@libro2,@libro3,@libro4,@libro5)
        end
        
        it "El numero de libros es el correcto" do
            expect(@l.size).to eq(5)
        end
        
        it "Los libros son accedidos correctamente" do
            expect(@l.pop).to be(@libro1)
            expect(@l.pop).to be(@libro2)
            expect(@l.pop).to be(@libro3)
            expect(@l.pop).to be(@libro4)
            expect(@l.pop).to be(@libro5)
        end
    end
    
end