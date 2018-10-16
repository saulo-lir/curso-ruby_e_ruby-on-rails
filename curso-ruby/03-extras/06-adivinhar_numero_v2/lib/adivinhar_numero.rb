
require_relative 'inicializacao.rb'
require_relative 'sortear_numero'

class AdvinharNumero
    attr_reader :numero
    attr_reader :venceu

    def initialize
        Inicializacao.inicializando                

        @numero = SortearNumero.sortear
        @venceu = false
    end    

    def tentar_adivinhar(numero = 0)
        if numero == @numero
            @venceu = true
            return "Você VENCEU!"
        
        elsif numero > @numero
            return "O número informado é maior..."
        
        else 
            return "O número informado é menor..."
        end
    end

end