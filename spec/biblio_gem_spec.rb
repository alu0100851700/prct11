require 'spec_helper'
require 'biblio_gem'

describe BiblioGem do
  def setup
      @bib1 = Bibliography.new("Autor1","Titulo1","Fecha1","ISBN1")
  end

  it 'has a version number' do
    expect(BiblioGem::VERSION).not_to be nil
  end

   describe "Existe un libro" do
      it "El nombre del autor es correcto" do
         @bib1.autor.should eq("Autor1")
      end

      it "El título del libro es correcto" do
         @bib1.titulo.should eq("Titulo1")
      end

      it "La fecha del libro es correcta" do
         @bib1.fecha.should eq("Fecha1")
      end

      it "ISBN correcto" do
         @bib1.isbn.should eq("ISBN1")
      end
   end
end
