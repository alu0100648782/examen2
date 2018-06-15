#creacion de los metodos:



class Alimento
        include Comparable
	attr_reader :nombre, :proteinas, :glucidos, :lipidos
	def initialize nombre, proteinas, glucidos, lipidos
		@nombre, @proteinas, @glucidos, @lipidos = nombre, proteinas, glucidos, lipidos
	end
        
        def valor_e
            @aux = (@glucidos * 4) + (@lipidos * 9) + (@proteinas * 4)
            @aux
        end

        def to_s
		"#{nombre}, #{proteinas}, #{glucidos}, #{lipidos}"
        end	
        def <=> (other)
            self.valor_e <=> other.valor_e
        end
        def * (valor)
          Alimento.new(nombre, proteinas * valor, glucidos * valor, lipidos * valor)
        end
end

# creacion de las lista:
     
     huevo = Alimento.new("huevo", 4.0, 4.0, 4.0)
     carne = Alimento.new("carne", 5.0, 5.0, 5.0)
     pollo = Alimento.new("pollo", 6.0, 6.0, 6.0)

     lista = [huevo, carne, pollo]

     def mi_funcion(l)
      (l.max).valor_e
     end

     p mi_funcion(lista) 

     def mi_funcion2(l)
      (l.min).valor_e
     end

     p mi_funcion2(lista)

     def mi_funcionx(l)
      
      l.map { |p| p.nombre }
     end

     p mi_funcionx(lista)
   
  
     
     def mi_funcionxx(l)
      l.collect {|p| p.valor_e}
     end

     p mi_funcionxx(lista)
     def multiplicar(l,v)
      l.collect { |p| p * v}
     end
     p multiplicar(lista,10)     
    # p lista.map { |p| p.nombre }



