# Criando um módulo

module Pagamento

    # Definindo uma constante
    PI = 3.14

    # Definindo um método
    def pagar(bandeira, numero, valor)
        "Pagando com o cartão #{bandeira}, Número #{numero}, o valor de R$ #{valor}..."
    end

    # Definindo uma classe
    class Visa
        def pagando
            "Pagando..."
        end
    end

end