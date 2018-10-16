class Calculadora
    def somar(n1, n2)
        n1 + n2
    end
end

class CalculadoraCientifica < Calculadora

    # Sobreescrita do método somar (Basta fazer o mesmo método e acrescentar o que queremos)
    def somar(n1, n2)
        "A soma é #{n1 + n2}"
    end

end

c1 = Calculadora.new
puts c1.somar(23, 27)

c2 = CalculadoraCientifica.new
puts c2.somar(23, 27)