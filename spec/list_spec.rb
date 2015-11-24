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
            expect(@l.pop_front).to eq("Dato1")
        end
        
        it "Se puede insertar un elemento" do
            @l.push_back("Dato4")
            
            expect(@l.size).to eq(4)
        end
        
        it "Se pueden insertar varios elementos" do
            @l.push_back("Dato4","Dato5","Dato6")
            
            expect(@l.size).to eq(6)
        end
    end
    
    describe "Pruebas lista con Libros" do
        before :each do
            @libro1 = BiblioGem::Bibliography.new(autor:["Dave Thomas","Andy Hunt","Chad Fowler"], titulo:" Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’ Guide. (The Facets of Ruby)", fecha:"July 7, 2013", isbn:["978-1937785499","1937785491"])
            @libro2 = BiblioGem::Bibliography.new(autor:"Scott Chacon", titulo:" Pro Git 2009th Edition. (Pro). Apress", fecha:"August 27, 2009", isbn:["978-1430218333","1430218339"])
            @libro3 = BiblioGem::Bibliography.new(autor:["David Flanagan","Yukihiro Matsumoto"], titulo:"The Ruby Programming Language. O’Reilly Media", fecha:"February 4, 2008", isbn:["0596516177","978-0596516178"])
            @libro4 = BiblioGem::Bibliography.new(autor:["David Chelimsky","Dave Astels","Bryan Helmkamp","Dan North","Zach Dennis","Aslak Hellesoy"],titulo:"The RSpec Book: Behaviour Driven Development with RSpec, Cucumber, and Friends (The Facets of Ruby). PragmaticBookshelf", fecha:"December 25, 2010", isbn:["1934356379","978-1934356371"])
            @libro5 = BiblioGem::Bibliography.new(autor:"Richard E", titulo:" . Silverman Git Pocket Guide O’Reilly Media", fecha:"August 2, 2013", isbn:["1449325866","978-1449325862"])
            @l = BiblioGem::List.new(@libro1,@libro2,@libro3,@libro4,@libro5)
        end
        
        it "El numero de libros es el correcto" do
            expect(@l.size).to eq(5)
        end
        
        it "Los libros son accedidos correctamente" do
            expect(@l.pop_front).to be(@libro1)
            expect(@l.pop_front).to be(@libro2)
            expect(@l.pop_front).to be(@libro3)
            expect(@l.pop_front).to be(@libro4)
            expect(@l.pop_front).to be(@libro5)
        end
    end
    
    describe "Pruebas lista doblemente enlazada" do
        before :each do
            @l = BiblioGem::List.new("Dato1","Dato2","Dato3")
        end
        
        it "Debe existir la cola de una lista" do
            expect(@l.tail).not_to be(nil)
        end
        
        it "Se extrae el ultimo elemento de la lista" do
            expect(@l.pop_back).to eq("Dato3")
        end
        
        it "Se puede insertar un elemento por la cabeza" do
            @l.push_front("Dato4")
            
            expect(@l.pop_front).to eq("Dato4")
        end
    end
    
    describe "Expectativas Enumerable" do
        before :each do
            @l = BiblioGem::List.new("Dato2","Dato1","Dato3")
        end
        
        it "Comprobando metodo any?" do
            expect(@l.any?{|dato| dato=="Dato2"}).to eq(true)
            expect(@l.any?{|dato| dato=="Dato4"}).to eq(false)
        end
        
        it "comprobrando el metodo count" do
            expect(@l.count).to eq(3)
        end
        
        it "comprobrando max" do
            expect(@l.max).to eq("Dato3")
        end
        
        it "comprobrando min" do
            expect(@l.min).to eq("Dato1")
        end
        
        it "comprobrando sort" do
            expect(@l.sort).to eq(["Dato1","Dato2","Dato3"])
        end
        
    end
end