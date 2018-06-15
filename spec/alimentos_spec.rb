#pruebas
require "spec_helper"

describe Alimentos do

  context Alimento do
    before :each do

     @a1 = Alimento.new("pan", 4.0, 4.0, 4.0)
     @a2 = Alimento.new("huevo", 5.0, 5.0, 5.0)
     @a3 = Alimento.new("carne", 6.0, 6.0, 6.0)
     @lista = [@a1, @a2, @a3]
    end

    def mi_funcion(l)
      (l.max).valor_e
    end


    def mi_funcion2(l)
      (l.min).valor_e
    end
    
    def mi_funcion3(l)
      (l.min)
    end
    
    def mi_funcion4(l)
      (l.max)
    end
    
    def mi_funcion_sacar_nombres(l)
       l.map { |p| p.nombre }
    end

    it "debe existir un nombre para el alimento" do
       expect(@a1.nombre).to be == "pan"
    end
    it "el alimento debe de tener proteina" do
       expect(@a2.proteinas).to be == 5.0
    end
    it "valor energetico del huevo" do
       expect(@a2.valor_e).to be == 85.0
    end
    it "maximo valor energetico" do
       expect(mi_funcion(@lista)).to eq  (102.0)
    end
    it "nombre del alimento con el minimo valor energetico" do
       expect(mi_funcion3(@lista)).to eq (@a1)
    end 
    it "los nombres de los productos" do
       expect(mi_funcion_sacar_nombres(@lista)).to eq ["pan", "huevo", "carne"]
    end
    it "multiplicar por 5 los valores de la lista" do
       def multiplicar(l,v)
         l.collect {|p| p * v}
       end
       expect(multiplicar(@lista,5 )).to eq [@a1*5, @a2*5, @a3*5]
    end   
  end
end
