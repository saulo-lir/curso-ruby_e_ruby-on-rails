# Duck Typing permite fazermos polimorfismo através de métodos com a mesma assinatura

class Pato
    def quack!
        "Quack! Quack!"
    end
end

class PatoDoente
    def quack!
        "Queeeek..."
    end
end

class Pessoa
    def apertar_o_pato(pato)
        pato.quack!
    end
end

p1 = Pato.new
p2 = PatoDoente.new

p = Pessoa.new

# Trata-se do mesmo método, mas que funciona de forma diferente conforme a classe que foi passada
puts p.apertar_o_pato(p1)
puts p.apertar_o_pato(p2)