# O "super" é uma palavra usada para invocar o método de mesmo nome na super classe


# Exemplo 1
class Franquia

    def descricao
        "Franquia!"
    end

end

class Franquiado < Franquia
    def descricao
        puts super # Invocando o método descrição da classe pai
        "Franquiado!"
    end
end

# Exemplo 2
class Conta
    attr_reader :numero, :saldo

    def initialize(numero, saldo = 0)
        @numero = numero
        @saldo = saldo
    end
end

class ContaEspecial < Conta
    attr_reader :limite_especial

    def initialize(numero, saldo, limite_especial) # Sobreescrevendo o construtor
        super(numero, saldo) # Pega da super classe o método initialize
        @limite_especial = limite_especial
    end
end

# Exemplo com a classe Franquiado
f = Franquiado.new
puts f.descricao

# Exemplo com a classe Conta e ContaEspecial
c = Conta.new("001", 100.00)
puts c.numero
puts c.saldo

ce = ContaEspecial.new("002", 200.00, 1000.00)
puts ce.numero
puts ce.saldo
puts ce.limite_especial