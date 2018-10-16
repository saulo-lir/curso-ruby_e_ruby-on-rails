# O self é uma palavra reservada que dá acesso ao objeto corrente
# Assim dizemos que ao usarmos obj.meth estamos enviando o método ao objeto

# self em outras palavras é o PRÓPRIO MÉTODO

class Teste
    def ola
        puts "Esse é meu self: #{self}" # Aqui o self trata-se da própria classe
    end
end 

t = Teste.new
t.ola