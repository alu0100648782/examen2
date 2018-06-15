#creacion de los metodos:



class Plato
        include Comparable
        attr_reader :identificador, :alimentos, :valor, :costo 
        def initialize identificador, alimentos, valor, costo 
                @identificador, @alimentos, @valor, @costo = identificador, alimentos, valor, costo
        end
               
        def <=> (otro)
            @valor.reduce(:+)<=>otro.valor.reduce(:+)
        end
end

# creacion de las lista:
     
     # plato1 = Plato.new("ensalada", [["tomate", [1.0, 1.0, 1.0], ["lechuga", [2.0, 2.0, 2.0]], [1.0, 5.0, 1.0], [1.5, 1.5, 1.5])
     plato1 = Plato.new("ensalada", ["tomate", "lechuga", "cebolla"], [1.0, 5.0, 1.0], [1.5, 1.5, 1.5])
     plato2 = Plato.new("bocata", ["pan", "carne", "huevo"], [2.0, 2.0, 2.0], [2.5, 2.5, 2.5])

     

     lista = [plato1, plato2]

     def mi_funcionx(l)

      l.max
     end

     p mi_funcionx(lista)
     
   
    
     
